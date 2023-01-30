<?php
    

class usersModel extends Mysql
    {

        public function __construct()
        {
            parent::__construct();
        }  
        
        public static function all()
        {
            $res = Mysql::SQL("SELECT u.id_usuario AS id, u.id_rol AS idrol, u.usuario, r.nombre_rol AS rol, u.email, u.telefono AS tf FROM usuarios u INNER JOIN roles r ON r.id_rol = u.id_rol;");
            return $res;
        }

        public static function sendEmail(string $destimation, string $name, string $subject, string $body, bool $html)
        {
            
            $mail = new Mailsender;
            $mail->setDestination($destimation, $name, $subject, $body, $html);
            $mail->send();

        }

        public static function oneUser($idReg)
        {
            $respuesta = Mysql::SQL("SELECT * FROM usuarios u WHERE u.id_usuario = $idReg");
            return $respuesta;
        }

        public static function deleteUser($idUser)
        {
            $iddelete = Mysql::delete('usuarios', ['id_usuario' => $idUser]);
            return $iddelete;
        }

        public static function verifyEmail($email)
        {
            $res = Mysql::SQL("SELECT * FROM usuarios where email = '$email'");
            return $res;
        }
        
    }

?>