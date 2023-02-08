<?php headerAdmin($data);
  getModal('Citas', 'citasModal', $data);
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
      <h3 class="title">Citas</h3>
      <a href="<?=ROOT?>/consulta" class="btn btn-primary" ><i class="fas fa-chevron-left"></i> Volver a consultas</a>
    </div>

    <div class="tile-body">
      <?php echo Alertas::mostrarAlerta(); ?>
      <div class="table-responsive">
        <table id="tblConsultas" class="display resposive" style="width:100%">
          <div id="overlayU" class="overlay" style="z-index: 5;">
            <div class="m-loader mr-4">
              <svg class="m-circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="4" stroke-miterlimit="10"></circle>
              </svg>
            </div>
            <h3 class="l-text">Cargando...</h3>
          </div>
          <thead>
            <tr>
              <th>ID</th>
              <th>Asunto</th>
              <th>Cedula</th>
              <th>Paciente</th>
              <th>Diagnositco</th>
              <th>tratamiento</th>
              <th>Fecha</th>
            </tr>
          </thead>
          <tbody>

          </tbody>
        </table>
      </div>
    </div>

</main>

<?php footerAdmin($data); ?>
