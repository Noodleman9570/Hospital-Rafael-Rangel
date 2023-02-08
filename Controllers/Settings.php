<?php
    class Settings extends Controllers{
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(PERFIL);
            parent::__construct();

        }

        public function settings()
        {
            $data['page_name'] = "Configuracion del usuario";
            $data['page_title'] = "Hospital";
            $data['function_js'] = '/settings.js';
            $data['style_css'] = "/settings.css";
            
            $this->views->getView($this,"settings",$data);
        }

        public function upload($img){
            
            if (isset($img)) {
                $uploadFolder = PROFILE_IMG;
                $imageName = $_SESSION['iduser'] . rand(1, 1000) . '.png';
                $data = $_POST["image"];
            
                $imageArray1 = explode(";", $data);
                $imageArray2 = explode(",", $imageArray1[1]);
                $data = base64_decode($imageArray2[1]);
            
                $nameFile = $uploadFolder . $imageName;
            
                file_put_contents($nameFile, $data);
            
                $uploadImage = PROFILE_IMG . $imageName . '';
            
                if (file_exists($uploadImage)) {

                    $sql_update = "UPDATE users SET image = '" . $imageName . "' WHERE user = '" . $_SESSION['user_id'] . "'";

                    $data = [
                        'image' => $imageName
                    ];


            
                    if ($idInsert = usersModel::update('usuarios', $data, $_SESSION['iduser'])) {
                        if ($_SESSION['user_image'] != "user.png") {
                            if (copy($uploadFolder . $_SESSION['user_image'], $uploadFolder . "/old/" . $_SESSION['user_image'])) {
                                unlink($uploadFolder . $_SESSION['user_image']);
                            }
                        }
                    } 
            
                    
                } 
            } 
        }

    }
?>