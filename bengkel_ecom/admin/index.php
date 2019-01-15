<?php require "../koneksi/koneksi.php";
if(!@$_SESSION['username']) {
  header("location: ".$base_url."/admin/login.php");
}
 ?>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
  <meta name="author" content="Łukasz Holeczek">
  <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
  <title>Furniture Mas Kobis</title>
  <!-- Icons-->
  <link href="vendors/@coreui/icons/css/coreui-icons.min.css" rel="stylesheet">
  <link href="vendors/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">
  <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="vendors/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
  <!-- Main styles for this application-->
  <link href="css/style.css" rel="stylesheet">
  <link href="vendors/pace-progress/css/pace.min.css" rel="stylesheet">
  <!-- Global site tag (gtag.js) - Google Analytics-->
  <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }
    gtag('js', new Date());
    // Shared ID
    gtag('config', 'UA-118965717-3');
    // Bootstrap ID
    gtag('config', 'UA-118965717-5');
  </script>
</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
  <header class="app-header navbar">
    <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">
      <img class="navbar-brand-full" src="img/brand/logo.svg" width="89" height="25" alt="CoreUI Logo">
      <img class="navbar-brand-minimized" src="img/brand/sygnet.svg" width="30" height="30" alt="CoreUI Logo">
    </a>
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
      <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="nav navbar-nav d-md-down-none">
      <li class="nav-item px-3">
        <a class="nav-link" href="#">Dashboard</a>
      </li>
      <li class="nav-item px-3">
        <a class="nav-link" href="#">Users</a>
      </li>
      <li class="nav-item px-3">
        <a class="nav-link" href="#">Settings</a>
      </li>
    </ul>
    <ul class="nav navbar-nav ml-auto">
      <li class="nav-item d-md-down-none">
        <a class="nav-link" href="#">
          <i class="icon-bell"></i>
          <span class="badge badge-pill badge-danger">5</span>
        </a>
      </li>
      <li class="nav-item d-md-down-none">
        <a class="nav-link" href="#">
          <i class="icon-list"></i>
        </a>
      </li>
      <li class="nav-item d-md-down-none">
        <a class="nav-link" href="#">
          <i class="icon-location-pin"></i>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          <img class="img-avatar" src="img/avatars/6.jpg" alt="admin@bootstrapmaster.com">
        </a>
        <div class="dropdown-menu dropdown-menu-right">
          <div class="dropdown-header text-center">
            <strong>Account</strong>
          </div>
          <div class="dropdown-header text-center">
            <strong>Settings</strong>
          </div>
          <a class="dropdown-item" href="#">
            <i class="fa fa-user"></i> Profile</a>
          <a class="dropdown-item" href="#">
            <i class="fa fa-wrench"></i> Settings</a>
          <a class="dropdown-item" href="#">
            <i class="fa fa-usd"></i> Payments
            <span class="badge badge-secondary">42</span>
          </a>
          <a class="dropdown-item" href="#">
            <i class="fa fa-file"></i> Projects
            <span class="badge badge-primary">42</span>
          </a>
          <div class="divider"></div>
          <a class="dropdown-item" href="#">
            <i class="fa fa-shield"></i> Lock Account</a>
          <a class="dropdown-item" href="#">
            <i class="fa fa-lock"></i> Logout</a>
        </div>
      </li>
    </ul>
    <button class="navbar-toggler aside-menu-toggler d-md-down-none" type="button" data-toggle="aside-menu-lg-show">
      <span class="navbar-toggler-icon"></span>
    </button>
    <button class="navbar-toggler aside-menu-toggler d-lg-none" type="button" data-toggle="aside-menu-show">
      <span class="navbar-toggler-icon"></span>
    </button>
  </header>
  
  <div class="app-body">
    <div class="sidebar">
      <div id="wallpaper">
        <nav class="sidebar-nav">
          <ul class="nav">

            <!-- Isi data Dashboard -->
            <li class="nav-item" <?=@$_GET['p'] == '' ? 'class="active"' : null?>> 
                <a class="nav-link" href="<?=$base_url?>/admin"><i class="nav-icon icon-speedometer"></i> Dashboard
                <span class="badge badge-primary">NEW</span>
              </a>
            </li>
            <li class="nav-item nav-dropdown">
                <li class="nav-item nav-dropdown">
                              <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon icon-layers"></i>MENU<span class="fa arrow"></span></a>
                              <!-- <ul class="nav-dropdown-items"> -->
                                  <li class="nav-item"<?=@$_GET['p'] == 'pelanggan' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=pelanggan"><i class="nav-icon icon-user"></i>Data Pelanggan</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'produk' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=produk"><i class="nav-icon icon-support"></i>Data Barang</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'dataadmin' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=dataadmin"><i class="nav-icon icon-anchor"></i> Data Admin</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'merk' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=merk"><i class="nav-icon icon-map"></i>Data Merk</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'notapembelian' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=notapembelian"><i class="nav-icon icon-clock"></i> Data Pembelian</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'kategori' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=kategori"><i class="nav-icon icon-clock"></i> Data Kategori</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'detailpesan' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=detailpesan"><i class="nav-icon icon-clock"></i> Detail Pemesanan</a></li>
                                  <li class="nav-item"<?=@$_GET['p'] == 'biayakirim' ? 'class="active"' : null?>><a class="nav-link" href="<?=$base_url?>/admin/?p=biayakirim"><i class="nav-icon icon-clock"></i> Biaya Pengiriman</a></li>
                              <!-- </ul> -->
                </li>
            </li>
              <!-- /#p-wrapper -->
              <li class="nav-item">

                <a class="nav-link" href="<?=$base_url?>/user/?p=home">
                  <i class="nav-icon icon-calculator"></i> Home
                  <span class="badge badge-primary">NEW</span>
                </a>
              </li>
              <li class="divider"></li>
              
            <button class="sidebar-minimizer brand-minimizer" type="button"></button>
          </ul>
        </nav>
        <!-- Coba get -->
        
      </div> 
     
    </div>

    
    
    <!--Data Akhir-->
    <main class="main">
      <!-- Breadcrumb-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Home</li>
        <li class="breadcrumb-item">
          <a href="#">Admin</a>
        </li>
        <li class="breadcrumb-item active">Dashboard</li>
        <!-- Breadcrumb Menu-->
        <li class="breadcrumb-menu d-md-down-none">
          <div class="btn-group" role="group" aria-label="Button group">
            <a class="btn" href="#">
              <i class="icon-speech"></i>
            </a>
            <a class="btn" href="./">
              <i class="icon-graph"></i>  Dashboard</a>
            <a class="btn" href="#">
              <i class="icon-settings"></i>  Settings</a>
          </div>
        </li>
      </ol>
      <div class="container-fluid">
      <script src="<?=$base_url; ?>/assets/js/jquery-1.10.2.js"></script>
        
          <div class="card">
            <?php
                      if(@$_GET['p'] == '') {
                        include "dashboard.php";
                    } else if(@$_GET['p'] == 'pelanggan') {
                        include "pelanggan.php";
                    } else if(@$_GET['p'] == 'produk') {
                        include "produk.php";
                    } else if(@$_GET['p'] == 'notapembelian') {
                        include "notapembelian.php";
                    } else if(@$_GET['p'] == 'dataadmin') {
                        include "dataadmin.php";
                    } else if(@$_GET['p'] == 'kategori') {
                        include "kategori.php";
                    } else if(@$_GET['p'] == 'merk') {
                        include "merk.php";
                    } else if(@$_GET['p'] == 'detailpesan') {
                        include "detailpesan.php";
                    } else if(@$_GET['p'] == 'biayakirim') {
                        include "biayakirim.php";

                    } else if(@$_GET['p'] == 'home') {
                        include "bengkel_ecom/user/index.php";
                    } else if(@$_GET['p'] == 'booking') {
                        include "inc/booking.php";
                    } else if(@$_GET['p'] == 'logout') {
                        unset($_SESSION['id_admin']);
                        unset($_SESSION['username']);
                        header("location: ".$base_url."/admin/login.php");
                  
                    
                    } else {
                        echo "Halaman tidak ditemukan";
                    }
            ?>

          
          </div>
        </div>
      </div>
    </main>
    <aside class="aside-menu">
      
      <!-- Tab panes-->
      <div class="tab-content">
      <!-- Edit delet tab-pane active -->
          
      </div>
    </aside>
  </div>
        
  <footer class="app-footer">
    <div>
      <a href="https://coreui.io">CoreUI</a>
      <span>&copy; 2019 creativeLabs.</span>
    </div>
    <div class="ml-auto">
      <span>Powered by</span>
      <a href="https://coreui.io">CoreUI</a>
    </div>
  </footer>
  <!-- CoreUI and necessary plugins-->
  <script src="vendors/jquery/js/jquery.min.js"></script>
  <script src="vendors/popper.js/js/popper.min.js"></script>
  <script src="vendors/bootstrap/js/bootstrap.min.js"></script>
  <script src="vendors/pace-progress/js/pace.min.js"></script>
  <script src="vendors/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
  <script src="vendors/@coreui/coreui/js/coreui.min.js"></script>
  <!-- Plugins and scripts required by this view-->
  <script src="vendors/chart.js/js/Chart.min.js"></script>
  <script src="vendors/@coreui/coreui-plugin-chartjs-custom-tooltips/js/custom-tooltips.min.js"></script>
  <script src="js/main.js"></script>

  <script src="<?=$base_url; ?>/js/dataTables/jquery.dataTables.js"></script>
  <script src="<?=$base_url; ?>/js/dataTables/dataTables.bootstrap.js"></script>
  <script src="js/metisMenu/jquery.metisMenu.js"></script>
  <script src="js/sb-admin.js"></script>

        <script>
    $(document).ready(function() {
        $('#dataTables').dataTable();
    });
    </script>
</body>
</html>
