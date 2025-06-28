<?php
print_r($_POST);
include("../db/dbconn.php");
mysqli_query($conn,"insert into user(username,password,usertype,address) value('$_POST[username]','$_POST[password]','$_POST[usertype]','$_POST[address]')");

header("Location:login.html");
?>