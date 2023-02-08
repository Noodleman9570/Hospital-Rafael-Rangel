<?php



    class Citas extends Controllers
    {
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(CITAS);
            parent::__construct();
        }
        public function Citas()
        {   
            Auth::accessPage();

            $data['page_name'] = "Citas Medica";
            $data['page_title'] = "Datos de citas";
            $data['function_js'] = "/citas.js";
            $data['style_css'] = "/citas.css";

            $this->views->getView($this,"citas",$data);
        }

        public function all()
        {

            $arrJson = [];
            try {
                $info = CitasModel::all();
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
                    $val->name('title')->value($_POST['title'])->required();
                    $val->name('paciente')->value($_POST['paciente'])->required();
                    $val->name('medico')->value($_POST['medico'])->required();
                    $val->name('fecha')->value($_POST['fecha'])->required();
                    $val->name('hora')->value($_POST['hora'])->required();
                    $val->name('note')->value($_POST['note'])->required();

                    if($val->isSuccess()){

                        $paciente = $_POST['paciente'];
                        $medico = $_POST['medico'];

                        $data = [
                                'title' => $_POST['title'],
                                'id_user' => $_SESSION['iduser'],  
                                'id_paciente' => $paciente,
                                'id_medic' => $medico,  
                                'date_at' => $_POST['fecha'],
                                'time_at' => $_POST['hora'],
                                'note' => clear($_POST['note']),
                                //arreglar el eliminar espacios de la contraseña
                            ];
                            try {
                                $idInsert = citasModel::insert('citas', $data);
                                $data = ['status' => true, 'msg'=>'Registro guardado'];


                            $consPac = CitasModel::SQL("SELECT * FROM TMBCH_PAC WHERE TMPAC_PID = '$paciente'");

                            $consMed = CitasModel::SQL("SELECT * FROM TMBCH_MED INNER JOIN TMBCH_ESP e ON e.TMESP_ID = TMBCH_MED.TMESP_ID WHERE TMMED_MID = '$medico'");

                                citasModel::sendEmail($consPac[0]['TMPAC_COR'], $consPac[0]['TMPAC_NO'], 'Su cita ha sido generada', "<div style='background: #e5e5e5;'><div style='background: #009688;'><img height='120' src='https://i.ibb.co/k6ngdTt/headerlogo.png' alt='headerlogo' border='0'></div><div><h2>Sr./Sra ".$consPac[0]['TMPAC_NO']." ".$consPac[0]['TMPAC_AP']." Un cordial saludo desde el Hospital Rangel</h2> <h3>Hemos procesado su cita, su consulta está prevista para: ".$_POST['fecha']." a las ".$_POST['hora']." con el Dr. ".$consMed[0]['TMMED_NO']." ".$consMed[0]['TMMED_AP']." ".$consMed[0]['TMESP_NO']."</h3></div>", true);                            
                            } catch (Exception $e) {
                                echo "ERROR: ".$e->getMessage();
                            }  
                    }else{
                        $data = ['error'=>$val->getErrors()];
                    }        

            }

            echo json_encode($data, JSON_UNESCAPED_UNICODE);
        }

        public function citasTable()
        {
            //Auth::accessPage();

            $data['page_name'] = "Citas Medica";
            $data['page_title'] = "Datos de citas";
            $data['function_js'] = "/citas.js";
            $data['style_css'] = "/citas.css";

            $this->views->getView($this,"citasTable",$data);

        }
        

        public function listarPac()
        {
            try {
                $consulta = CitasModel::SQL("SELECT * FROM TMBCH_PAC");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }
        public function listarMed()
        {
            try {
                $consulta = CitasModel::SQL("SELECT * FROM TMBCH_MED m JOIN TMBCH_ESP e ON m.TMESP_ID = e.TMESP_ID");
            } catch (Exception $e) {
                echo "ERROR: ".$e->getMessage();
            }
            
            echo json_encode($consulta);
        }

        public function delete()
        {
            $id = intval($_POST['id']);
            $cita = citasModel::oneCita($id);

            if(empty($cita)){
                Alertas::new("No se encontro la cita", "danger");
                header('Location:'.BASE_URL.'/Users');
            }

            CitasModel::deleteCita($id);
            echo json_encode(['msg' => 'La cita ha sido eliminado'],JSON_UNESCAPED_UNICODE);
            // Alertas::new(sprintf("Se ha eliminado el usuario %s", $pac[0]['nombre']), "success");
                        
        }
    }

?>