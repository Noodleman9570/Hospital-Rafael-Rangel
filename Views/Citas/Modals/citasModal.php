<!-- Modal -->
<div class="modal fade" id="cita" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" id="newUser" role="document">
    <div class="modal-content">
      <div id="modal-header" class="modal-header" style="background: #FFD24C;">
        <h5 class="modal-title" id="exampleModalLongTitle">Nuevo Usuario</h5>
        <button type="button" id="refresh" style=" margin: 0;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="tile-body">
        <form action="" class="formulario" id="formulario" method="POST">
              <h5 class="id">Nro. </h5>
              <!-- Grupo: cedula -->
              
              <input type="text" class="formulario__input" name="id" id="id">
        
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


          <!-- Grupo: Teléfono -->
          <div class="formulario__grupo" id="grupo__telefono">
            <label for="telefono" class="formulario__label">Teléfono</label>
            <div class="formulario__grupo-input">
              <input type="text" class="formulario__input" name="telefono" id="telefono" placeholder="0414-2145639">
              <i class="formulario__validacion-estado fas fa-times-circle"></i>
            </div>
            <p class="formulario__input-error">El telefono solo puede contener numeros y el maximo son 14 dígitos.</p>
          </div>

         
            <div class="form-group">
                <label class="formulario__label" for="exampleSelect1">Rol</label>
                <select class="form-control" id="rol" name="rol" required="">

                </select>
            </div>

            <div class="formulario__mensaje" id="formulario__mensaje">
              <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
            </div>

            <div style="margin-top: 20px;" class="formulario__grupo formulario__grupo-btn-enviar">
                <button id="enviar" onclick="save();" class="formulario__btn"><i class="fa-solid fa-download"></i> Enviar</button>
                <button id="edit" class="formulario__btn formulario_btn--edit"><i class="fa-solid fa-user-pen"></i> Editar</button>
                <button id="delete" class="formulario__btn formulario_btn--delete"><i class="fa-solid fa-ban"></i> Eliminar</button>
                <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Solicitud procesada exitosamente!</p>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>

