<?php

    class Hospitalizacion extends Controllers
    {
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(HOSPITALIZACION);
            parent::__construct();
        }
        public function Hospitalizacion()
        {   
            Auth::accessPage();

            $data['page_name'] = "Info de Hospitalizacion";
            $data['page_title'] = "Información";
            $data['function_js'] = "/hospitalizacion.js";
            $data['style_css'] = "/hospitalizacion.css";

            $this->views->getView($this,"hospitalizacion",$data);
        }

        public function all()
        {
            $arrJson = [];
            try {
                $info = HospitalizacionModel::all();
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            if(empty($info)){
                $arrJson = ['msg'=>'No se encontraron registros'];
            }else{
                $arrJson = $info;
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
                    $val->name('nombre')->value(clear($_POST['description']))->required();
                    $val->name('fecha')->value(clear($_POST['fe']))->required();
                    
                    if($val->isSuccess()){

                        $data = [
                                'TMVAE_NO' => clear($_POST['nombre']),
                                'TMVAE_DE' => $_POST['description'],  
                                'TMVAE_FE' => clear($_POST['fe']),
                                //arreglar el eliminar espacios de la contraseña
                            ];
                            try {
                                $idInsert = vacunasModel::insert('TMBCH_VAE', $data);
                                $data = ['status' => true, 'msg'=>'Registro guardado'];
                            } catch (Exception $e) {
                                echo "ERROR: ".$e->getMessage();
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
                $val->name('nombre')->value(clear($_POST['nombre']))->required();
                $val->name('nombre')->value(clear($_POST['description']))->required();
                $val->name('fecha')->value(clear($_POST['fe']))->required();
                
                if($val->isSuccess()){

                        $data = [
                            'TMVAE_NO' => clear($_POST['nombre']),
                            'TMVAE_DE' => $_POST['description'],  
                            'TMVAE_FE' => clear($_POST['fe']),
                            //arreglar el eliminar espacios de la contraseña
                        ];
                        $ids = array(
                            'TMVAE_CV' => $_POST['id'],
                        );

                        try {
                            $idInsert = vacunasModel::update('TMBCH_VAE', $data, $ids);
                            $data = ['status' => true, 'msg'=>'Registro guardado'];
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
            $res = vacunasModel::oneRegist($id);
            if(empty($res)){
                Alertas::new("No se encontro el registro", "danger");
                header('Location:'.BASE_URL.'/Vacunas');
            }

            vacunasModel::deleteRegist($id);
            echo json_encode(['msg' => 'El registro ha sido eliminado'],JSON_UNESCAPED_UNICODE);
            // Alertas::new(sprintf("Se ha eliminado el usuario %s", $pac[0]['nombre']), "success");
            
        }
        public function listarPac()
        {
            try {
                $consulta = ConsultaModel::SQL("SELECT * FROM TMBCH_CAM");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }
    }

?>