<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $params['title'] ?? 'CodeIgniter' ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <!-- Bootstrap Font Icon CSS -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <!-- Full Calendar -->
    <script src="https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.11.2,npm/fullcalendar@5.11.2/main.min.js,npm/fullcalendar@5.11.2/locales-all.min.js,npm/fullcalendar@5.11.2/locales-all.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.11.2/main.min.css,npm/fullcalendar@5.11.2/main.min.css">
    <!-- Moment JS -->
    <script src="<?=base_url()?>/node_modules/moment/moment.js"></script>
    <!-- DataTable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <!-- Custom JS -->
    <script type="text/javascript" src="<?=base_url()?>/assets/js/main.js"></script>
    <!-- Custom CSS -->
    <script type="text/javascript" src="<?=base_url()?>/assets/css/style.css"></script>
    <!-- Bootstrap datepicker CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"/>
    <!-- Bootstrap datepicker JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</head>
<body>
  <main>
    <!-- HEADER -->
      <header class="p-3 mb-3 border-bottom bg-warning bg-gradient">
        <div class="container">
          <div class="d-flex flex-wrap align-items-center justify-content-between">
            <div class="topbar-divider d-none d-sm-block">
              <img src="<?= base_url('assets/img/codestorm-logo-resp.webp')?>" alt="codestorm-logo-resp" style="height:50px">
            </div>
            <div class="d-flex flex-wrap align-items-end justify-content-end navbar navbar-expand-lg navbar-light">
              <ul class="navbar-nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
                  <li class="nav-item"><a class="nav-link active" id="dashboard-link" data-module_id="calendar" href="#"><i class="bi bi-house-door"></i> Dashboard</a></li>
                  <li class="nav-item"><a class="nav-link" id="order-schedule-link"  data-module_id="order" href="#"><i class="bi bi-pen"></i> Rework</a></li>
              </ul>
            </div>
          </div>
        </div>
      </header>
      <!-- BODY -->
    <div class="body">
      <input type="hidden" id="baseUrl" value="<?= base_url() ?>">
      <div id="content-container" class="vh-100 px-4 py-8">
        <div id='calendar' class="vh-100 p-4"></div>
      </div>
    </div>
    <!-- Footer -->
<footer class="text-center text-lg-start text-light bg-warning bg-gradient">
  <!-- Copyright -->
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    © <?= Date('Y'); ?> Copyright
    <a class="text-light fw-bold" href="https://codestorm.co.uk/">CodeStorm</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->
  </main>

</body>
</html>