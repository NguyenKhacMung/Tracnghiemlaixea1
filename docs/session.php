<?php
 session_start();
 if(!$_SESSION['infor']){
     header('location:login.php');
 }