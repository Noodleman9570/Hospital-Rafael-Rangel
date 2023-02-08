<?php headerAdmin($data); ?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> <?= $data['page_title'] ?></h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">Blank Page</a></li>
        </ul>
      </div>

      <div class="row">
        <div class="col-md-6">
          <h1 class="display-4">Hospital Rafael Rangel</h1>
          <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            
            <div class="carousel-inner" >
              <div class="carousel-item active">
                <img src="<?=HOME_IMG?>/entrance.jpeg"  class="d-block w-100" alt="camilla">
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                </div>
              </div>
              <div class="carousel-item">
                <img src="<?=HOME_IMG?>/camilla2.jpg" class="d-block w-100" alt="camilla">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                </div>
              </div>
              <div class="carousel-item">
                <img src="<?=HOME_IMG?>/uci.jpg" class="d-block w-100" alt="emergencias">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          
        </div>
        
        <div class="col-md-6 mt-auto text-center" style="margin-bottom: 100px;">
            <article class="full-box tile">
                <div class="full-box tile-title text-center text-titles text-uppercase">
                    Medicos
                </div>
                <div class="full-box tile-icon text-center">
                  <i style="padding-top: 8px;" class="fas fa-user-md fa-8x"></i>
                </div>
                <div class="full-box tile-number text-titles">
                    <p class="full-box">
                        <?php
                        $conexion = mysqli_connect("localhost", "root", "", "bdch") or die ("error de conexion");
                        $consulta = "SELECT COUNT(*) AS TOTAL FROM  `TMBCH_MED` ";
                        $resultado = mysqli_query($conexion, $consulta);
                        $row = mysqli_fetch_array($resultado);
                            echo $row['TOTAL'];
                        ?>
                    </p>
                    <small>Registrados</small>
                </div>
            </article>
            <article class="full-box tile tile2">
                <div class="full-box tile-title text-center text-titles text-uppercase">
                    Pacientes
                </div>
                <div class="full-box tile-icon text-center">
                  <i style="padding-top: 8px;" class="fas fa-user-injured fa-8x"></i>
                </div>
                <div class="full-box tile-number text-titles">
                    <p class="full-box">
                    <?php
                        $conexion = mysqli_connect("localhost", "root", "", "bdch") or die ("error de conexion");
                        $consulta = "SELECT COUNT(*) AS TOTAL FROM  `TMBCH_PAC` ";
                        $resultado = mysqli_query($conexion, $consulta);
                        $row = mysqli_fetch_array($resultado);
                            echo $row['TOTAL'];
                        ?>
                    </p>
                    <small>Registrados</small>
                </div>
            </article>
            <article class="full-box tile tile3">
                <div class="full-box tile-title text-center text-titles text-uppercase">
                    Usuarios
                </div>
                <div class="full-box tile-icon text-center">
                  <i style="padding-top: 15px;" class="fas fa-users fa-7x"></i>
                </div>
                <div class="full-box tile-number text-titles">
                    <p class="full-box">
                    <?php
                        $conexion = mysqli_connect("localhost", "root", "", "bdch") or die ("error de conexion");
                        $consulta = "SELECT COUNT(*) AS TOTAL FROM  `usuarios` ";
                        $resultado = mysqli_query($conexion, $consulta);
                        $row = mysqli_fetch_array($resultado);
                            echo $row['TOTAL'];
                        ?>
                    </p>
                    <small>Registrados</small>
                </div>
            </article>
            <article class="full-box tile tile3">
                <div class="full-box tile-title text-center text-titles text-uppercase">
                    Consultas
                </div>
                <div class="full-box tile-icon text-center">
                  <i style="padding-top: 15px;"  class="fas fa-file-medical fa-6x"></i>
                </div>
                <div class="full-box tile-number text-titles">
                    <p class="full-box">
                    <?php
                        $conexion = mysqli_connect("localhost", "root", "", "bdch") or die ("error de conexion");
                        $consulta = "SELECT COUNT(*) AS TOTAL FROM  `citas` ";
                        $resultado = mysqli_query($conexion, $consulta);
                        $row = mysqli_fetch_array($resultado);
                            echo $row['TOTAL'];
                        ?>
                    </p>
                    <small>Registrados</small>
                </div>
            </article>
        </div>
      </div>
    
        

    </main>
    <?php footerAdmin($data); ?>