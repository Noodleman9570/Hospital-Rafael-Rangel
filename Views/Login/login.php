
<!doctype html>
<html lang="<?=SITE_LANG?>">
  <head>
    <?=getFavicon();?>
    <meta charset="<?=SITE_CHARSET?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?=SITE_DESC?>">
    <meta name="author" content="Hospital Rafael Rangel">
    <meta name="generator" content="<?=SITE_VERSION?>">
    <title><?=SITE_NAME?></title>

    <link rel="stylesheet" type="text/css" href="<?= PLUGINS; ?>/notify/noty.css">
    <link rel="stylesheet" type="text/css" href="<?= PLUGINS; ?>/notify/noty.css.map">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/bootstrap.min.css.map">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/main.css">
    <link rel="stylesheet" type="text/css" href="<?= CSS; ?>/style.css">




    <!-- Custom styles for this template -->
    <link href="<?=APP?>/css/signin.css" rel="stylesheet">
  </head>
    <body class="text-center">
        <form id="loginForm" class="form-signin" method="POST" novalidate>
            <img class="mb-4" src="<?=getLogo();?>" alt="" width="180" height="180">
            
            <h1 class="h3 mb-3 font-weight-normal">Iniciar sesion</h1>

            <label for="email" class="sr-only">Correp</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Ingrese su correo" required autofocus>

            <label for="password" class="sr-only">Contraseña</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="Ingrese su contraseña" required>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2021-<?=date('Y');?></p>
        </form>


    <script>
      const base_url = "<?= BASE_URL?>";
    </script>
    <script src="<?= JS; ?>/jquery-3.3.1.min.js"></script>
    <script src="<?= JS; ?>/popper.min.js"></script>
    <script src="<?= JS; ?>/bootstrap.min.js"></script>
    <script src="<?= JS; ?>/main.js"></script>
    <script src="<?= JS; ?>/fontawesome.js"></script>
    <script src="<?= JS; ?>/functions_admin.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="<?= JS; ?>/plugins/pace.min.js"></script>
    
    <!-- Noty plugin -->
    <script src="<?= PLUGINS; ?>/notify/noty.min.js"></script>
    <script src="<?= PLUGINS; ?>/notify/noty.min.js.map"></script>
    

    <script src="<?= APP ?>/js<?=$data['function.js']?>"></script>
    </body>
</html>
