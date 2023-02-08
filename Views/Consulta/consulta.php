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

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="row">
              <div id="cosultFormIn" class="col-lg-12">
                <form id="consultForm">
                  <div class="form-group">
                    <div class="tile-title-w-btn tile-title">
                    <h2>Ingresar datos de la consulta &nbsp&nbsp&nbsp<i class="fa-solid fa-clipboard-list"></i></h2>
                    <div>
                        <a class="btn btn-primary" href="<?= ROOT?>/consulta/consultasTable">Lista de consultas realizadas</a>
                    </div>
                  </div>
                    
                    <div id="sel__cita" class="form-group">
                      <label for="cita" class="formulario__label">Elegir cita asociada a paciente</label>
                      <select name="cita" class="formulario__input" id="cita">

                      </select>
                    </div>

                  <div class="row">

                <div class="form-group">
                  <label for="sintomas" class="formulario__label">Síntomas presentados</label>
                  <textarea name="sintomas" class="form-control" id="sintomas" rows="2"></textarea>
                </div>
                
                <div class="form-group">
                  <label for="diagnostico" class="formulario__label">Diagnóstico</label>
                  <textarea name="diagnostico" class="form-control" id="diagnostico" rows="2"></textarea>
                </div> 
                
                <div class="form-group">
                  <label for="tratamiento" class="formulario__label">Tratamiento</label>
                  <textarea name="tratamiento" class="form-control" id="tratamiento" rows="2"></textarea>
                </div> 

                
              </div>

            </div>
            </div>
            <div class="tile-footer d-flex justify-content-around">
              <button  id="consulta__submit" onclick="saveC()" class="btn btn-primary col-md-7 btn-c" type="submit">Enviar datos de Consulta</button>
            </div>
          </div>
        </div>
      </div>

    </main>
    

    <?php footerAdmin($data); ?>