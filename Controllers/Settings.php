<?php
    class Settings extends Controllers{
        public function __construct()
        {
            Auth::noAuth();
            Permisos::getPermisos(PERFIL);
            parent::__construct();

        }

        public function perfil()
        {
            $data['page_name'] = "Perfil de usuario";
            $data['page_title'] = "Hospital";
            $data['function_js'] = '/perfil.js';
            $data['style_css'] = "/medico.css";
            
            $this->views->getView($this,"perfil",$data);
        }

    }
?>