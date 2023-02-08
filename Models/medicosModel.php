<?php 

    class MedicosModel extends Mysql
    {
        public function __construct()
        {
            parent::__construct();
        }

        public static function all()
        {
            $res = Mysql::SQL("SELECT m.TMMED_MID AS id, m.TMMED_CI AS cedula, m.TMMED_AP AS apellido, m.TMMED_NO AS nombre, u.email, es.TMESP_CE AS cod_esp ,es.TMESP_NO AS nom_esp, es.TMESP_ID AS id_esp, e.TMEDO_CE AS cod_edo, mu.TMMUN_CM AS cod_mun, mu.TMMUN_NO AS nom_mun, m.TMMED_DIR AS direccion, m.TMMED_TF AS telefono
            FROM TMBCH_MED m 
            INNER JOIN usuarios u ON u.id_usuario = m.id_usuario 
            INNER JOIN TMBCH_MUN mu ON m.TMMUN_CM = mu.TMMUN_CM 
            INNER JOIN TMBCH_EDO e ON mu.TMEDO_CE = e.TMEDO_CE 
            INNER JOIN TMBCH_ESP es ON es.TMESP_ID = m.TMESP_ID;");

            return $res;
        }
        public static function sendEmail(string $destimation, string $name, string $subject, string $body, bool $html)
        {
            
            $mail = new Mailsender;
            $mail->setDestination($destimation, $name, $subject, $body, $html);
            $mail->send();

        }
        public static function verifyCed($ced)
        {
            $res = Mysql::SQL("SELECT * FROM TMBCH_MED where TMMED_CI = '$ced'");
            return $res;
        }
        public static function verifyEmail($email)
        {
            $res = Mysql::SQL("SELECT * FROM usuarios where email = '$email'");
            return $res;
        }
        public static function oneMedico($idReg)
        {
            $respuesta = Mysql::SQL("SELECT m.TMMED_MID AS id, m.TMMED_CI AS cedula, m.TMMED_AP AS apellido, m.TMMED_NO AS nombre, u.usuario, u.email, es.TMESP_ID AS id_esp, e.TMEDO_CE AS cod_edo, mu.TMMUN_CM AS cod_mun, m.TMMED_DIR AS direccion, m.TMMED_TF AS telefono 
            FROM TMBCH_MED m 
            INNER JOIN usuarios u ON u.id_usuario = m.id_usuario 
            INNER JOIN TMBCH_MUN mu ON m.TMMUN_CM = mu.TMMUN_CM 
            INNER JOIN TMBCH_EDO e ON mu.TMEDO_CE = e.TMEDO_CE 
            INNER JOIN TMBCH_ESP es ON es.TMESP_ID = m.TMESP_ID WHERE m.TMMED_MID = $idReg");
            return $respuesta;
        }

        public static function deleteMedico($idReg)
        {
            $iddelete = Mysql::delete('TMBCH_MED', ['TMMED_MID' => $idReg]);
            return $iddelete;
        }
    }

?>