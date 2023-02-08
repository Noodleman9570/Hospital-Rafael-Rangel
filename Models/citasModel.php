<?php 

    class CitasModel extends Mysql
    {
        public function __construct()
        {
            parent::__construct();
        }

        public static function all()
        {
            $res = Mysql::SQL("SELECT c.id_cita AS id, c.title, c.date_at, c.time_at, c.created_at, p.TMPAC_NO AS pacNombre, m.TMMED_NO AS medNombre, u.usuario AS usuNombre FROM citas c INNER JOIN TMBCH_PAC p ON p.TMPAC_PID = id_paciente INNER JOIN TMBCH_MED m ON m.TMMED_MID = id_medic INNER JOIN usuarios u ON u.id_usuario = c.id_user LEFT JOIN TTBCH_CON con ON con.id_cita = c.id_cita WHERE con.TTCON_CC IS NULL");
            return $res;
        }
        public static function verifyCed($ced)
        {
            $res = Mysql::SQL("SELECT * FROM TMBCH_MED where TMMED_CI = '$ced'");
            return $res;
        }
        public static function oneCita($idReg)
        {
            $respuesta = Mysql::SQL("SELECT * FROM citas c WHERE c.id_cita = '$idReg'");
            return $respuesta;
        }

        public static function deleteCita($idCita)
        {
            
            $iddelete = Mysql::delete('citas', ['id_cita' => $idCita]);
            return $iddelete;
        }

        public static function sendEmail(string $destimation, string $name, string $subject, string $body, bool $html)
        {
            
            $mail = new Mailsender;
            $mail->setDestination($destimation, $name, $subject, $body, $html);
            $mail->send();

        }

    }

?>