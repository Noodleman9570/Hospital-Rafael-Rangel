<?php headerAdmin($data); 
      getModal('Pacientes', 'formModal', $data);
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
          <h3 class="title">Pacientes</h3>
          <button class="btn btn-primary" id="newPaciente" type="button"><i class="fa-solid fa-plus"></i> Agregar</button>
        </div>
        <div class="tile-body">
        <?php echo Alertas::mostrarAlerta(); ?>
        <div class="table-responsive">
          <table id="tblPac" class="display resposive" style="width:100%">
            <thead>
              <tr>
                <th>Id</th>
                <th>Cedúla</th>
                <th>Apellido</th>
                <th>Nombre</th>
                <th>Sexo</th>
                <th>Codigo Estado</th>
                <th>Codigo Municipio</th>
                <th>Municipio</th>
                <th>Dirección</th>
                <th>Fecha de nacimiento</th>
                <th>Número telefónico</th>
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