<?php headerAdmin($data); 
      getModal('users', 'formModal', $data);
?>
    <main class="app-content">
      <div class="app-title">
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="<?= ROOT; ?>/dashboard"><?= $data['page_title'] ?></a></li>
        </ul>
      </div>

      <div class="tile">
        <div id="buttonAdd" class="tile-title-w-btn">
          <h3 class="title">Usuarios</h3>
          <button class="btn btn-primary" id="newUser" type="button"><i class="fa-solid fa-plus"></i> Agregar</button>
        </div>
        <div class="tile-body">
        <?php echo Alertas::mostrarAlerta(); ?>
        <div class="table-responsive">
          <table id="tblUser" class="display resposive" style="width:100%">
          <div id="overlayU" class="overlay" style="z-index: 5;" >
              <div class="m-loader mr-4">
                <svg class="m-circular" viewBox="25 25 50 50">
                	<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="4" stroke-miterlimit="10"></circle>
                </svg>
              </div>
              <h3 class="l-text">Cargando...</h3>
            </div>
            <thead>
              <tr>
                <th>Id</th>
                <th>Rol</th>
                <th>Usuario</th>
                <th>email</th>
                <th>Rol</th>
                <th>Telefono</th> 
                <th>Acciones</th>               
              </tr>
            </thead>
            <tbody>

            </tbody>
          </table>
        </div>
      </div>

    </main>
    

    <?php footerAdmin($data); ?>