<?php
    class Users extends Controllers{
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(USERS);
            parent::__construct();

        }

        public function Users()
        {
            Auth::accessPage();
        

            //$data['page_tag'] = "Usuarios";
            $data['page_name'] = "Usuarios <small>Hospital</small>";
            $data['page_title'] = "Hospital";
            $data['function_js'] = "/users.js";
            $data['style_css'] = "/user.css";
           $this->views->getView($this,"users",$data);
        }

        public function all()
        {
            $arrJson = [];
            try {
                $user = usersModel::all();
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            if(empty($user)){
                $arrJson = ['msg'=>'No se encontraron registros'];
            }else{
                $arrJson = $user;
            }


            echo json_encode($arrJson,JSON_UNESCAPED_UNICODE);
        }

        public function save()
        {
            $data = [];
            
            if ($_SERVER['REQUEST_METHOD'] == "POST") {

                //validar
                    $val = new Validations();
                    $val->name('nombre')->value(clear($_POST['nombre']))->required();
                    $val->name('email')->value(clear($_POST['correo']))->pattern('email')->required();
                    $val->name('telefono')->value(clear($_POST['telefono']))->required();
                    if($val->isSuccess()){

                        $email = usersModel::verifyEmail(clear($_POST['correo']));

                        if (!$email) {
                            $pass = passGenerator();
                        
                            $passHash = hash("sha256", $pass);

                            $data = [
                                'id_rol' => clear($_POST['rol']),
                                'nombre' => clear($_POST['nombre']),
                                'email' => clear($_POST['correo']),
                                'telefono' => clear((string)$_POST['telefono']),
                                'password' => $passHash,
        
                                //arreglar el eliminar espacios de la contraseña
                            ];
                            try {
                                $idInsert = usersModel::insert('usuarios', $data);
                                usersModel::sendEmail($_POST['correo'], $_POST['nombre'], 'Clave aleatoria para Hospital', 'Tu Clave de acceso es: <strong>'.$pass.'</strong> Te recomendamos que inicies session y la cambies en el apartado de perfil', true);
                                $data = ['status' => true, 'msg'=>'Registro guardado'];
                            } catch (Exception $e) {
                                echo "ERROR: ".$e->getMessage();
                            }
                        } else {
                            $data = ['error'=>'El correo electronico ya se encuentra en uso'];
                        }
          
                        

                    } else {
                        $data = ['error'=>$val->getErrors()];
                    }       

            }

            echo json_encode($data, JSON_UNESCAPED_UNICODE);
        }


        public function delete()
        {

            
            $id = intval($_POST['id']);
            $user = usersModel::oneUser($id);

            if(empty($user)){
                Alertas::new("No se encontro el usuario", "danger");
                header('Location:'.BASE_URL.'/Users');
            }

            usersModel::deleteUser($id);
            echo json_encode(['msg' => 'El registro ha sido eliminado'],JSON_UNESCAPED_UNICODE);
            // Alertas::new(sprintf("Se ha eliminado el usuario %s", $pac[0]['nombre']), "success");
            
        }
        

    }
?>