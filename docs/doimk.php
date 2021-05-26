<?php
include_once 'config.php';
include_once 'session.php';
?>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="image/png" href="icon/icon.png" />
        <title>Đổi mật khẩu</title>
    </head>

    <body>
        <section class="material-half-bg">
            <div class="cover"></div>
        </section>
        <section class="login-content">

            <div class="login-box1">
                <form class="login-form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 class="login-head"><i class="fa fa-lg fa-fw fa-lock"></i>ĐỔI MẬT KHẨU</h3>
                    <div class="form-group">

                        <input class="form-control" type="text" name="username" value="<?php if(isset($_POST['username'])){echo $_POST['username']; } ?>" placeholder="Tên đăng nhập" required="true" autofocus>
                    </div>
                    <div class="form-group">

                        <input class="form-control" type="password" name="password" value="<?php if(isset($_POST['password'])){echo $_POST['password']; } ?>" placeholder="Mật khẩu" required="true">
                    </div>
                    <div class="form-group">

                        <input class="form-control" type="password" name="newpassword" value="<?php if(isset($_POST['newpassword'])){echo $_POST['newpassword']; } ?>" placeholder="Mật khẩu mới" required="true">
                    </div>
                    <div class="form-group">

                        <input class="form-control" type="password" name="repassword" value="<?php if(isset($_POST['newpassword'])){echo $_POST['newpassword']; } ?>" placeholder="Nhập lại mật khẩu" required="true">
                    </div>
                    <div class="form-group mt-3">
                        <div class="utility">
                            <!--  <p class="semibold-text mb-0"><a href="login.php" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i> Đăng nhập</a></p>-->
                            <div>
                                <p class="semibold-text mb-0"><a href="index.php" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i> Quay về trang chủ</a></p>
                            </div>

                        </div>
                    </div>
                    <div class="form-group btn-container">
                        <button class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>ĐỔI MẬT KHẨU</button>
                    </div>
                    <br>
                    <div class="form-group">
                        <?php
						if ($_SERVER["REQUEST_METHOD"] == "POST") {
							$username = $_POST['username'];
							$password = $_POST['password'];
							$newpassword = $_POST['newpassword'];
							$repassword = $_POST['repassword'];
							$sqlString = "SELECT * from users where username = '$username'";

							$result = $mysqli->query($sqlString);
							$row = mysqli_fetch_array($result);
							if (!$row) {
								echo '<div class="btn btn-primary btn-block alert-danger" role="alert" style="text-align:center"> Tên tài khoản sai!</div>';
								return;
							}
							if ($row['password'] != $password) {
								echo '<div class="btn btn-primary btn-block alert-danger" role="alert" style="text-align:center"> Mật khẩu cũ sai!</div>';
								return;
							}
							if ($newpassword != $repassword) {
								echo '<div class="btn btn-primary btn-block alert-danger" role="alert" style="text-align:center"> Mật khẩu không khớp!</div>';
								return;
							}
							$sqlString = " UPDATE users SET password='$newpassword' WHERE username='$username'";
							if ($mysqli->query($sqlString)) {
								echo '<div class="btn btn-primary btn-block alert-success" role="alert" style="text-align:center"> Đổi thành công!</div>';
								return;
							}
						}

					?>

                    </div>

                </form>
            </div>
        </section>

    </body>

    </html>