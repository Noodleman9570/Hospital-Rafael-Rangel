<!DOCTYPE html>
<html lang="<?=SITE_LANG?>">
  <head>
    <meta charset="<?=SITE_CHARSET?>">
    <?= getFavicon(); ?>
    <meta name="description" content="Hospital Virtual Kevin">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Kevin Saavedra">
    <meta name="theme-color" content="#009688">
    <link rel="shortcut icon" htref="<?= IMG ?>/logo.png">
    <title><?= $data['page_title'] ?></title>
    <!-- Main CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<?= PLUGINS; ?>/notify/noty.css">
    <link rel="stylesheet" type="text/css" href="<?= PLUGINS; ?>/notify/noty.css.map">
    <link rel="stylesheet" type="text/css" href="<?=DATATABLE?>/datatables.min.css"/>
    <link rel="stylesheet" type="text/css" href="<?=PLUGINS?>/select2-4.0.13/dist/css/select2.min.css"/>
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/bootstrap.min.css.map">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/bootstrap.min.map">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/main.css">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/style.css">
    <link rel="stylesheet" type="text/css" href="<?= APP;?>/css<?=$data['style_css']?>">
    
    <!-- Font-icon css-->
  </head>
  <body class="app sidebar-mini">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="<?= ROOT; ?>/Home"><img class="headerlogo" src="<?=ROOT;?>/Assets/images/headerlogo.png" alt=""></a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"><i class="fa-solid fa-bars"></i></a>
      <!-- Navbar Right Menu-->


      <div class="dropdown app-nav">
        <button class="btn dropdown-toggle app-nav__item" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
         <i class="fa fa-user fa-lg"></i></a>
        </button>
        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
            <li><a class="dropdown-item" href="<?= ROOT; ?>/settings"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
            <li><a class="dropdown-item" href="<?= ROOT; ?>/perfil"><i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a class="dropdown-item" href="<?= ROOT; ?>/logout"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
        </ul>
      </div>



      
    </header>
    <?php require_once("nav_admin.php"); ?>
