<?php

    class Medicos extends Controllers
    {
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(ARCHIVOS_MAESTROS);
            parent::__construct();
        }
        public function Medicos()
        {
            Auth::accessPage();
            
            $data['page_name'] = "Medicos";
            $data['page_title'] = "Hospital";
            $data['function_js'] = "/medicos.js";
            $data['style_css'] = "/medico.css";

            $this->views->getView($this,"medicos",$data);
        }

        public function all()
        {
            $arrJson = [];
            try {
                $med = MedicosModel::all();
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            if(empty($med)){
                $arrJson = ['msg'=>'No se encontraron registros'];
            }else{
                $arrJson = $med;
            }


            echo json_encode($arrJson,JSON_UNESCAPED_UNICODE);
        }

        public function onePaciente()
        {
            $arrJason = [];
            
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                $id = intval($_POST['id']);
            $med = MedicosModel::oneMedico($id);

            if(empty($med)){
                $arrJson = ['msg'=>'No se encontraron registros'];
            }else{
                $arrJson = $med;
            }
                echo json_encode($arrJson,JSON_UNESCAPED_UNICODE);
            }
        }

        public function save()
        {
            $data = [];
            
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                
                //validar
                    $val = new Validations();
                    $val->name('cedula')->value(clear($_POST['cedula']))->required();
                    $val->name('apellido')->value(clear($_POST['apellido']))->required();
                    $val->name('nombre')->value(clear($_POST['nombre']))->required();
                    $val->name('telefono')->value(clear($_POST['telefono']))->pattern('tel')->required();
                    $val->name('direccion')->value(clear($_POST['direccion']))->required();

                    //Comprobar si se Cumplen todas las validaciones
                    if($val->isSuccess()){
                        $email = MedicosModel::verifyEmail(clear($_POST['correo']));
                        $res = MedicosModel::verifyCed(clear($_POST['cedula']));

                        if (!$email) {

                            if (!$res) {


                                $pass = passGenerator();
                        
                                $passHash = hash("sha256", $pass);

                                $data = [
                                    'id_rol' => '3',
                                    'usuario' => clear($_POST['usuario']),
                                    'email' => clear($_POST['correo']),
                                    'telefono' => clear((string)$_POST['telefono']),
                                    'password' => $passHash,
            
                                    //arreglar el eliminar espacios de la contraseña
                                ];
    

                                $idUInsert = MedicosModel::insert('usuarios', $data);


                                $data = [
                                    'TMMED_CI' => clear($_POST['cedula']),
                                    'id_usuario' => $idUInsert,
                                    'TMMUN_CM' => $_POST['municipio'],
                                    'TMMED_AP' => clear($_POST['apellido']),
                                    'TMMED_NO' => clear($_POST['nombre']),
                                    'TMMED_DIR' => clear($_POST['direccion']),
                                    'TMMED_TF' => clear((string)$_POST['telefono']),    
                                    'TMESP_ID' => clear($_POST['especialidad']),
                                    //arreglar el eliminar espacios de la contraseña
                                ];
                                try {
                                    $idInsert = MedicosModel::insert('TMBCH_MED', $data);
                                    MedicosModel::sendEmail($_POST['correo'], $_POST['usuario'], 'Clave aleatoria para Hospital', 'Tu Clave de acceso es: <strong>'.$pass.'</strong> Te recomendamos que inicies session y la cambies en el apartado de perfil', true);
                                    $data = ['status' => true, 'msg'=>'Registro guardado'];
                                } catch (Exception $e) {
                                    echo "ERROR: ".$e->getMessage();
                                }

                            } else {
                                $data = ['error'=>'La cedula ya le pertenece a otro medico'];
                            } 
                        
                        } else {
                            $data = ['error'=>'El correo electronico ya se encuentra en uso'];
                        }


                    }else{
                        $data = ['error'=>$val->getErrors()];
                    }        

            }

            echo json_encode($data, JSON_UNESCAPED_UNICODE);
        }
        public function edit(){

            $data = [];
            
            if ($_SERVER['REQUEST_METHOD'] == "POST") {
                //validar
                    $val = new Validations();
                    $val->name('cedula')->value(clear($_POST['cedula']))->required();
                    $val->name('apellido')->value(clear($_POST['apellido']))->required();
                    $val->name('nombre')->value(clear($_POST['nombre']))->required();
                    $val->name('telefono')->value(clear($_POST['telefono']))->required();
                    $val->name('direccion')->value(clear($_POST['direccion']))->required();

                    //Comprobar si se Cumplen todas las validaciones
                    if($val->isSuccess()){
                       
                            $data = [
                                'TMMED_CI' => clear($_POST['cedula']),
                                'TMMUN_CM' => $_POST['municipio'],
                                'TMMED_AP' => clear($_POST['apellido']),
                                'TMMED_NO' => clear($_POST['nombre']),
                                'TMMED_DIR' => $_POST['direccion'],
                                'TMMED_TF' => clear((string)$_POST['telefono']),    
                                'TMESP_ID' => clear($_POST['especialidad']),
                                //arreglar el eliminar espacios de la contraseña
                            ];

                            $ids = array(
                                'TMMED_MID' => $_POST['id'],
                            );

                            try {
                                $idInsert = MedicosModel::update('TMBCH_MED', $data, $ids);
                                $data = ['status' => true, 'msg'=>'Registro atualizado'];
                            } catch (Exception $e) {
                                echo "ERROR: ".$e->getMessage();
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
            $pac = MedicosModel::oneMedico($id);

            if(empty($pac)){
                Alertas::new("No se encontro el usuario", "danger");
                header('Location:'.BASE_URL.'/Pacientes');
            }

            MedicosModel::deleteMedico($id);
            echo json_encode(['msg' => 'El registro ha sido eliminado'],JSON_UNESCAPED_UNICODE);
            // Alertas::new(sprintf("Se ha eliminado el usuario %s", $pac[0]['nombre']), "success");
            
        }

        public function listarEDO()
        {
            try {
                $consulta = MedicosModel::SQL("SELECT * FROM TMBCH_EDO ORDER BY TMEDO_NO ASC");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }

        public function listarMUN()
        {
            try {
                $idedo = $_POST['idedo'];
                $consulta = MedicosModel::SQL("SELECT * FROM TMBCH_MUN WHERE TMEDO_CE = ".$idedo.";");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }
        
        public function listarEsp()
        {
            try {
                $consulta = MedicosModel::SQL("SELECT * FROM TMBCH_ESP");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }
        
    }

?>