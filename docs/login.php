<?php
include_once 'config.php';
session_start();

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
        <title>Đăng nhập</title>
    </head>

    <body>
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                // var y = document.getElementById("hide1");
                // var z = document.getElementById("hide2");
                if (x.type === "password") {
                    x.type = "text";
                    // y.style.display="block";
                    // z.style.display="none";
                } else {
                    x.type = "password";
                //     y.style.display="none";
                //     z.style.display="block";
               }
            }
            function isNumberKey(evt)
             {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
             return false;
             return true;
             }
        </script>
        <section class="material-half-bg">
            <div class="cover"></div>
        </section>
        <section class="login-content">
            <div class="logo">
                <h1>Thi thử bằng lái xe A1</h1>
            </div>
            <div class="login-box">
                <form class="login-form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>ĐĂNG NHẬP</h3>
                    <div class="form-group">
                        <label class="control-label">TÊN ĐĂNG NHẬP</label>
                        <input class="form-control" type="text" name="username" value="<?php if(isset($_POST['username'])){echo $_POST['username']; } ?>" placeholder="Email" required="1" autofocus>
                    </div>
                    <div class="form-group">
                        <label class="control-label">MẬT KHẨU</label>
                        <!-- <div class="input-box"> -->
                        <input class="form-control" type="password" id="myInput" onKeyPress="return isNumberKey(event)" name="password" value="<?php if(isset($_POST['password'])){echo $_POST['password']; } ?>" placeholder="Mật khẩu" required="true">
                        <!-- <span class="eye" onclick="myFunction()">
                            <i id="hide1" class="fa fa-eye"></i>
                            <i id="hide2" class="fa fa-eye-slash"></i>
                        </span> -->
                    <!-- </div> -->
                    </div>
                    <div class="form-group">
                        <div class="utility">
                            <div class="animated-checkbox">
                                <label>
                                    <input type="checkbox" onclick="myFunction()"><span class="label-text">Hiện mật khẩu</span>
                                </label>
                            </div>
                            <p class="semibold-text mb-2"><a href="dangky.php" data-toggle="flip">Chưa có tài khoản ?</a></p>
                        </div>
                    </div>

                    <div class="form-group btn-container">
                        <button class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>ĐĂNG NHẬP</button>
                    </div>
                    <br>
                    <div class="form-group">
                        <?php
						if ($_SERVER["REQUEST_METHOD"] == "POST") {
							$username = $_POST['username'];
							$password = $_POST['password'];
							$sqlString = "SELECT * from users where username = '$username'";

							$result = $mysqli->query($sqlString);
							$row = mysqli_fetch_array($result);
							if (!$row) {
								echo '<div class="btn btn-primary btn-block alert-danger" role="alert" style="text-align:center"> Tên đăng nhập sai!';
								return;
							}
							if ($row['password'] != $password) {
								echo '<div class="btn btn-primary btn-block alert-danger" role="alert" style="text-align:center"> Mật khẩu sai!</div>';
								return;
							}
							$_SESSION['infor'] = $row;
							$_SESSION['username']=$username;
							header('location:index.php');
						}

					?>
                    </div>
                </form>

            </div>
        </section>
        <!-- Essential javascripts for application to work-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="js/plugins/pace.min.js"></script>

    </body>

    </html>