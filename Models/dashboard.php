<?php 

    class especialidadesModel extends Mysql
    {
        public function __construct()
        {
            parent::__construct();
        }
        
        public static function all()
        {
            $res = Mysql::SQL("SELECT TMESP_ID AS id,TMESP_CE AS cod, TMESP_NO AS nom, TMESP_DE AS des FROM TMBCH_ESP");
            return $res;
        }
        public static function verifyCod($cod)
        {
            $res = Mysql::SQL("SELECT * FROM TMBCH_ESP where TMESP_CE = '$cod'");
            return $res;
        }
        public static function oneRegist($id)
        {
            $respuesta = Mysql::SQL("SELECT * FROM TMBCH_ESP e WHERE e.TMESP_ES = $id");
            return $respuesta;
        }
        public static function deleteRegist($id)
        {
            $iddelete = Mysql::delete('TMBCH_ESP', ['TMESP_ES' => $id]);
            return $iddelete;
        }
    }

?>