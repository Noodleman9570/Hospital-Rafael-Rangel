<?php headerAdmin($data); 
      getModal('Medicos', 'formModal',$data);
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
          <h3 class="title">Medicos</h3>
          <button class="btn btn-primary" id="newPaciente" type="button"><i class="fa-solid fa-plus"></i> Agregar</button>
      </div>

        <div class="tile-body">
          <?php echo Alertas::mostrarAlerta(); ?>        
          <div class="table-responsive">
            <table id="tblMed" class="display resposive" style="width:100%">
              <thead>
                <tr>
                  <th>Id</th>
                  <th>Cedúla</th>
                  <th>Apellido</th>
                  <th>Nombre</th>
                  <th>Especialidad</th>
                  <th>Código Especialidad</th>
                  <th>Codigo especialidad</th>
                  <th>Codigo Estado</th>
                  <th>Codigo Municipio</th>
                  <th>Municipio</th>
                  <th>Dirección</th>
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