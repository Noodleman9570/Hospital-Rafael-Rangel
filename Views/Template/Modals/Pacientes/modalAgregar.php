



<!-- Modal para insertar  -->
<div class="modal fade" id="newPaciente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div id="modal-header" class="modal-header" style="background: #FFD24C;">
        <h5 class="modal-title" id="exampleModalLongTitle">Nuevo Paciente</h5>
        <button type="button" id="refresh" style=" margin: 0;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="tile-body">
            <form action="" class="formulario" id="formRegister" method="POST">
              <h5 class="id">Nro. </h5>
              <!-- Grupo: cedula -->
              
                  <input type="text" class="formulario__input" name="id" id="id" placeholder="V-26587963">
        
              
              <div class="formulario__grupo" id="grupo__ced">
                <label for="ced" class="formulario__label">Cedula</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="ced" id="ced" placeholder="V-26587963">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>
              
              <!-- Grupo: Apellido -->
              <div class="formulario__grupo" id="grupo__ap">
                <label for="ap" class="formulario__label">Apellido</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="ap" id="ap" placeholder="Doe" required>
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>

              <!-- Grupo: Nombre -->
              <div class="formulario__grupo" id="grupo__nom">
                <label for="nom" class="formulario__label">Nombre</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="nom" id="nom" placeholder="John">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>
              <!-- Grupo: sexo -->
              <div class="formulario__grupo" id="grupo__sexo">
                <label for="sx" class="formulario__label">Sexo</label>
                <select class="formulario__input form-control" id="sx" name="sx" required="">
                    <option value="m">Masculino</option>
                    <option value="f">Femenino</option>
                </select>
              </div>

              <div class="direction_container">

                <div class="formulario__grupo" id="grupo__edo">
                  <label for="Pais">Estado:</label>
                    <select onchange="changeEDO();" class="form-control select" name="estado" id="sel_edo" style="width: 100%;">
                      
                    </select>
                </div>

                <div class="formulario__grupo" id="grupo__mun">
                  <label for="Pais">Municipio</label>
                    <select class="form-control select" name="mun" id="sel_mun" style="width: 100%;">
                      
                    </select>
                </div>
              </div>

              

              <!-- Grupo: PEM -->
              <!-- <div class="card-body">
                    <div class="row">
                      <div class="col-lg-4">
                          <label for="Pais">Pais:</label>
                          <select onchange="changePAI();" class="select" name="pai" id="pais" style="width: 100%;">
                            
                          </select>
                      </div>
                      <div class="col-lg-4">
                          <label for="Pais">Estado:</label>
                          <select onchange="changeEDO();" class="select" name="estado" id="sel_edo" style="width: 100%;">
                            
                          </select>
                      </div>
                      <div class="col-lg-4">
                          <label for="Pais">Municipio</label>
                          <select class="select" name="mun" id="sel_mun" style="width: 100%;">
                            
                          </select>
                      </div> 
                    </div>
                  </div> -->

                   <!-- Grupo: Direccion -->
              <div class="formulario__grupo" id="grupo__direccion">
                <label for="dir" class="formulario__label">Direccion</label>
                <div class="formulario__grupo-input">
                  <input type="textarea" title="Breve descripcion" class="formulario__input" name="dir" id="dir" placeholder="Avienida principal">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>

              <!-- Grupo: fecha de nacimiento -->
              <div class="formulario__grupo" id="grupo__fn">
                <label for="fn" class="formulario__label">Fecha de nacimiento</label>
                <div class="formulario__grupo-input">
                  <input type="date" class="formulario__input" name="fn" id="fn">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>

              <!-- Grupo: numero telefonico -->
              <div class="formulario__grupo" id="grupo_tf">
                <label for="tf" class="formulario__label">Número telefónico</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="tf" id="tf" placeholder="">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>
              <div style="margin-top: 20px;" class="formulario__grupo formulario__grupo-btn-enviar">
                <button id="enviar" onclick="save();" class="formulario__btn"><i class="fa-solid fa-download"></i> Enviar</button>
                <button id="edit" class="formulario__btn formulario_btn--edit"><i class="fa-solid fa-user-pen"></i> Editar</button>
                <button id="delete" class="formulario__btn formulario_btn--delete"><i class="eliminarFnt fa-solid fa-ban"></i> Eliminar</button>
                <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
              </div>
              <!-- <div id="edit" style="margin-top: 20px;" class="formulario__grupo formulario__grupo-btn-edit">
                <button onclick="save();" type="submit" class="formulario__btn">Enviar</button>
                <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
              </div>
              <div id="delete" style="margin-top: 20px;" class="formulario__grupo formulario__grupo-btn-delete">
                <button onclick="save();" type="submit" class="formulario__btn">Enviar</button>
                <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
              </div> -->
            </form>
        </div>
      </div>
    </div>
  </div>
</div>
