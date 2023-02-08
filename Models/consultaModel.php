<?php 

    class ConsultaModel extends Mysql
    {
        public function __construct()
        {
            parent::__construct();
        }

        public static function all()
        {
            $res = Mysql::SQL("SELECT con.TTCON_CC AS id, p.TMPAC_CI cedula, p.TMPAC_NO AS nombre, c.title AS asunto, con.TTCON_DI AS diag, con.TTCON_TM AS tratamiento, c.date_at FROM TTBCH_CON con INNER JOIN citas c ON c.id_cita = con.id_cita INNER JOIN TMBCH_PAC p ON p.TMPAC_PID = c.id_paciente WHERE c.id_medic = 11 AND c.status = 1");
            return $res;
        }
        public static function verifyCed($ced)
        {
            $res = Mysql::SQL("SELECT * FROM TMBCH_MED where TMMED_CI = '$ced'");
            return $res;
        }
        public static function oneMedico($idReg)
        {
            $respuesta = Mysql::SQL("SELECT * FROM TMBCH_MED p WHERE p.TMMED_MID = $idReg");
            return $respuesta;
        }

        public static function deleteMedico($idReg)
        {
            $iddelete = Mysql::delete('TMBCH_MED', ['TMMED_MID' => $idReg]);
            return $iddelete;
        }
    }

?>