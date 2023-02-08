<?php

    class Consulta extends Controllers
    {
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(CONSULTAS);
            parent::__construct();
        }
        public function Consulta()
        {   
            Auth::accessPage();

            $data['page_name'] = "Consulta Medica";
            $data['page_title'] = "Datos de consulta";
            $data['function_js'] = "/consulta.js";
            $data['style_css'] = "/consulta.css";

            $this->views->getView($this,"consulta",$data);
        }

        public function consultasTable()
        {
            //Auth::accessPage();

            $data['page_name'] = "Consultas Medica";
            $data['page_title'] = "Datos de consultas";
            $data['function_js'] = "/consulta.js";
            $data['style_css'] = "/consulta.css";

            $this->views->getView($this,"consultasTable",$data);

        }

        public function all()
        {
            $arrJson = [];
            try {
                $info = ConsultaModel::all();
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
                    $val->name('sintomas')->value($_POST['sintomas'])->required();
                    $val->name('diagnostico')->value($_POST['diagnostico'])->required();
                    $val->name('tratamiento')->value($_POST['tratamiento'])->required();

                    if($val->isSuccess()){

                        $data = [
                                'id_cita' => $_POST['cita'],
                                'TTCON_SI' => clear($_POST['sintomas']),
                                'TTCON_DI' => clear($_POST['diagnostico']),
                                'TTCON_TM' => clear($_POST['tratamiento']),
                                //arreglar el eliminar espacios de la contraseña
                            ];

                        $datas = [
                            'status' => 1,
                            //arreglar el eliminar espacios de la contraseña
                        ];

                        $ids = array(
                            'id_cita' => $_POST['cita'],
                        );


                            try {
                                $idConInsert = consultaModel::insert('TTBCH_CON', $data);
                                $idCitaupdate= consultaModel::update('citas', $datas, $ids);
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
        

        public function listarCitas()
        {

            try {
                $consulta = ConsultaModel::SQL("SELECT c.id_cita, c.title, p.TMPAC_CI, p.TMPAC_NO, p.TMPAC_AP FROM citas c INNER JOIN TMBCH_MED m ON m.TMMED_MID = c.id_medic INNER JOIN usuarios u ON u.id_usuario = m.id_usuario INNER JOIN TMBCH_PAC p ON p.TMPAC_PID = c.id_paciente WHERE u.id_usuario = ".$_SESSION['iduser'] ." AND c.status = 0");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }
    }

?>