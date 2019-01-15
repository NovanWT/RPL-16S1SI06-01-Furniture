<?php
require "../koneksi/koneksi.php";
if(@$_SESSION['username']) {
    header("location: ".$base_url."/admin/");
} else {
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <base href="./">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
  <meta name="author" content="Łukasz Holeczek">
  <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
  <title>CoreUI Free Bootstrap Admin Template</title>
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

<  <body class="app flex-row align-items-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="card-group">
            <div class="card p-4">
              <div class="card-body">
                <h1>Login</h1>
                <p class="text-muted">Sign In to your account</p>
                <div class="panel-body">
                        <form action="" method="post">
                            <fieldset>
                              <?php
                              if($_SERVER['REQUEST_METHOD'] == 'POST') {
                                $user = mysqli_real_escape_string($con, trim($_POST['user']));
                                $pass = mysqli_real_escape_string($con, trim($_POST['pass']));
                                $sql_login = mysqli_query($con, "SELECT * FROM tbl_admin WHERE username = '$user' AND password = '$pass'") or die (mysqli_error());
                                if(mysqli_num_rows($sql_login) > 0) {
                                  $data = mysqli_fetch_array($sql_login);
                                  $_SESSION['id_admin'] = $data['id_admin']; 
                                   $_SESSION['username'] = $data['username'];
                                  header("location: ".$base_url."/admin");
                                } else {
                                  echo '<div class="alert alert-danger alert-dismissable">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                      Login gagal! Username / password salah 
                                  </div>';
                                }
                              }
                              ?> 
                                <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text">
                                      <i class="icon-user"></i>
                                    </span>
                                  </div>
                                  <input class="form-control" placeholder="Username" name="user" type="text" autofocus required>
                                </div>
                                <!--<div class="form-group">
                                  
                                    <input class="form-control" placeholder="Username" name="user" type="text" autofocus required>
                                </div>-->
                                <div class="input-group mb-4">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text">
                                      <i class="icon-lock"></i>
                                    </span>
                                  </div>
                                  <input class="form-control" placeholder="Password" name="pass" type="password" required>
                                </div>

                                <!-- <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="pass" type="password" required>
                                </div>-->
                                <div class="row">
                                    <div class="col-6">
                                        <button type="submit" class="btn btn-primary px-4" type="button">Login</button>
                                    </div>
                                    <div class="col-6 text-right">
                                      <button class="btn btn-link px-0" type="button">Forgot password?</button>
                                    </div>
                                </div>
                                <!-- <button type="submit" class="btn btn-primary btn-outline pull-right">Login</button> -->
                            </fieldset>
                        </form>
                    </div>
              </div>
            </div>
            <div class="card text-white bg-primary py-5 d-md-down-none" style="width:44%">
              <div class="card-body text-center">
                <div>
                  <h2>Sign up</h2>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                  <button class="btn btn-primary active mt-3" type="button">Register Now!</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<!-- CoreUI and necessary plugins-->
<script src="vendors/jquery/js/jquery.min.js"></script>
<script src="vendors/popper.js/js/popper.min.js"></script>
<script src="vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/pace-progress/js/pace.min.js"></script>
<script src="vendors/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
<script src="vendors/@coreui/coreui/js/coreui.min.js"></script>
</body>
</html>
<?php
} ?>