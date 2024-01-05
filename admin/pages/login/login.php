<?php 

session_start();

if (isset($_SESSION["login"])) {
  header("Location: ../../index.php");
  exit;
}

require 'function.php';

  if (isset($_POST["login"])) {
      $username = $_POST["username"];
      $password = $_POST["password"];

      $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username'");

      //cek username
      if (mysqli_num_rows($result) === 1) {
        
        //cek password
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row["password"])) {

          //set session
          $_SESSION["login"] = true;

          header("Location: ../../index.php");
          exit;
        };
      }

      $error = true;
  }
  

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="../../dist/img/logo.png" rel="icon">
  <link href="../../dist/img/logo1.png" rel="apple-touch-icon">
  <title>WebGIS Seni Budaya Kota Tasikmalaya</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo"><b>Masuk</b>
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg">Masuk untuk memulai</p>
        <?php if(isset($error)) : ?><p style="color: red;">Nama pengguna atau Kata sandi salah!</p>
          <?php endif;?>
        <form action="" method="post">
          <div class="input-group mb-3">
            <input type="username" name="username" class="form-control" placeholder="Nama Pengguna">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" name="password" class="form-control" placeholder="Kata Sandi">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-8">
              <div class="icheck-primary">
                <input type="checkbox" id="remember">
                <label for="remember">
                  Ingat
                </label>
              </div>
            </div>
            <!-- /.col -->
            <div class="col-4">
              <button type="submit" name="login" class="btn btn-primary btn-block">Masuk</button>
            </div>
            <!-- /.col -->
          </div>
        </form>

        <p class="mb-1">
          <a href="forgot-password.html">Lupa Kata Sandi?</a>
        </p>
        <p class="mb-0">
          <a href="register.php" class="text-center">Daftar Disini</a>
        </p>
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->

  <!-- jQuery -->
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.min.js"></script>
</body>

</html>
