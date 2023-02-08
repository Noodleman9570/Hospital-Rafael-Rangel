<?php 

    class pacientesModel extends Mysql
    {
        public function __construct()
        {
            parent::__construct();
        }

        public static function all()
        {
            $res = Mysql::SQL("SELECT p.TMPAC_PID AS id, p.TMPAC_CI AS ced, p.TMPAC_AP AS ap, p.TMPAC_NO AS no, m.TMMUN_NO AS mnom, p.TMPAC_COR correo FROM TMBCH_PAC p INNER JOIN TMBCH_MUN m ON p.TMMUN_CM = m.TMMUN_CM INNER JOIN TMBCH_EDO e ON m.TMEDO_CE = e.TMEDO_CE;");
            return $res;
        }

        public static function verifyCed($ced)
        {
            $res = Mysql::SQL("SELECT * FROM TMBCH_PAC  where TMPAC_CI = '$ced'");
            return $res;
        }

        public static function onePaciente($idReg)
        {
            $respuesta = Mysql::SQL("SELECT * FROM TMBCH_PAC p INNER JOIN TMBCH_MUN m ON p.TMMUN_CM = m.TMMUN_CM INNER JOIN TMBCH_EDO e ON m.TMEDO_CE = e.TMEDO_CE WHERE p.TMPAC_PID = $idReg");
            return $respuesta;
        }

        public static function deletePaciente($idPac)
        {
            $iddelete = Mysql::delete('TMBCH_PAC', ['TMPAC_PID' => $idPac]);
            return $iddelete;
        }
        
    }

?>