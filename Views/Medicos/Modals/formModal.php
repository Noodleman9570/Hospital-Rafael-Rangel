


<!-- Modal para insertar  -->
<div class="modal fade" id="newMedico" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div id="modal-header" class="modal-header" style="background: #FFD24C;">
        <h5 class="modal-title" id="exampleModalLongTitle">Nuevo Medico</h5>
        <button type="button" id="refresh" style=" margin: 0;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="tile-body">
            <form action="" class="formulario" id="formRegister" method="POST">
              <h5 class="id">Nro. </h5>
              <!-- Grupo: cedula -->
              
                  <input type="text" class="formulario__input" name="id" id="id">
        
              
              <div class="formulario__grupo" id="grupo__ced">
                <label for="ced" class="formulario__label">Cedula</label>
                <div class="formulario__grupo-input">
                  <input type="text" value="V-" style="width: 10%; padding: 9px 0 9px 15px; font-weight: bold;" disabled>
                  <input type="text" class="formulario__input" style=" width: 89%;"  name="cedula" id="ced" placeholder="26587963">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>
              
              <!-- Grupo: Apellido -->
              <div class="formulario__grupo" id="grupo__ap">
                <label for="ap" class="formulario__label">Apellido</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="apellido" id="ap" placeholder="Doe" required>
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>

              <!-- Grupo: Nombre -->
              <div class="formulario__grupo" id="grupo__nom">
                <label for="nom" class="formulario__label">Nombre</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="nombre" id="nom" placeholder="John">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>

              <!-- Grupo: Usuario -->
          <div class="formulario__grupo" id="grupo__usuario">
            <label for="nombre" class="formulario__label">Usuario</label>
            <div class="formulario__grupo-input">
              <input type="text" class="formulario__input" name="usuario" id="usuario" placeholder="John Doe">
              <i class="formulario__validacion-estado fas fa-times-circle"></i>
            </div>
          </div>

          <!-- Grupo: Correo Electronico -->
          <div class="formulario__grupo" id="grupo__correo">
            <label for="correo" class="formulario__label">Correo Electrónico</label>
            <div class="formulario__grupo-input">
              <input type="email" class="formulario__input" name="correo" id="correo" placeholder="correo@correo.com">
              <i class="formulario__validacion-estado fas fa-times-circle"></i>
            </div>
            <p class="formulario__input-error">El correo solo puede contener letras, numeros, puntos, guiones y guion bajo.</p>
          </div>


                <div class="formulario__grupo esp" id="grupo__esp">
                    <div class="lable__button">
                        <label for="Pais">Especialidad</label>
                        <a href="<?= BASE_URL; ?>/Especialidades"> <i class="fas fa-plus"></i> Añadir especializacion</a>
                    </div>
                        <select class="form-control select" name="especialidad" id="sel_esp" style="width: 100%;">
                        
                        </select>
                </div>

             <!-- Grupo: Especialidad -->

            <div class="direction_container">

                <div class="formulario__grupo" id="grupo__edo">
                  <label for="Pais">Estado:</label>
                    <select onchange="changeEDO();" class="form-control select" name="estado" id="sel_edo" style="width: 100%;">
                      
                    </select>
                </div>

                <div class="formulario__grupo" id="grupo__mun">
                  <label for="Pais">Municipio</label>
                    <select class="form-control select" name="municipio" id="sel_mun" style="width: 100%;">
                      
                    </select>
                </div>

            </div>
              
                   <!-- Grupo: Direccion -->
              <div class="formulario__grupo" id="grupo__direccion">
                <label for="direccion" class="formulario__label">Direccion</label>
                <div class="formulario__grupo-input">
                  <input type="textarea" title="Breve descripcion" class="formulario__input" name="direccion" id="direccion" placeholder="Avenida principal">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>

              <!-- Grupo: numero telefonico -->
              <div class="formulario__grupo" id="grupo__tf">
                <label for="tf" class="formulario__label">Número telefónico</label>
                <div class="formulario__grupo-input">
                  <input type="text" class="formulario__input" name="telefono" id="tf" placeholder="0000-0000000">
                  <i class="formulario__validacion-estado fas fa-times-circle"></i>
                </div>
              </div>
              <div style="margin-top: 20px;" class="formulario__grupo formulario__grupo-btn-enviar">
                <button id="enviar" onclick="save();" class="formulario__btn"><i class="fa-solid fa-download"></i> Enviar</button>
                <button id="edit" class="formulario__btn formulario_btn--edit"><i class="fa-solid fa-user-pen"></i> Editar</button>
                <button id="delete" class="formulario__btn formulario_btn--delete"><i class="fa-solid fa-ban"></i> Eliminar</button>
                <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario enviado exitosamente!</p>
              </div>
            </form>
        </div>
      </div>
    </div>
  </div>
</div>