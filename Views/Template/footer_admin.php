    <div class="container__footer">
      <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
        </ul>
        <p class="text-center text-muted">© 2021 Company, Inc</p>
      </footer>
    </div>
    
    
    <!-- Essential javascripts for application to work-->
    <script src="<?= JS; ?>/jquery-3.3.1.min.js"></script>

    <script src="<?= JS; ?>/popper.min.js"></script>
    <script src="<?= JS; ?>/popper.min.js.map"></script>
    <script src="<?= JS; ?>/bootstrap.min.js"></script>
    <script src="<?= JS; ?>/main.js"></script>
    <script src="<?= JS; ?>/fontawesome.js"></script>
    <script src="<?= JS; ?>/functions_admin.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="<?= JS; ?>/plugins/pace.min.js"></script>

    <!-- Noty plugin -->
    <script src="<?= PLUGINS; ?>/notify/noty.min.js"></script>
    <script src="<?= PLUGINS; ?>/notify/noty.min.js.map"></script>

    <script src="<?= PLUGINS; ?>/select2-4.0.13/dist/js/select2.min.js"></script>

    <!-- Url para javascritp -->
    <script>
      const base_url = "<?= BASE_URL?>";
    </script>
    

    <!-- Data table plugins -->
    <script type="text/javascript" src="<?=DATATABLE?>/datatables.min.js"></script>

    <!-- Scripts por parametros a un controlador -->
    <script src="<?= APP ?>/js<?=$data['function_js']?>"></script>

  </body>
</html>