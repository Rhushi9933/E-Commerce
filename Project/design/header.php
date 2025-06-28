<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>
    </title>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
</head>

<body>

    <div id="header">
        <img class="img" src="../img/logo.jpg">
        <label><h3>Online Shoe Store</h3></label>
                <label class="abcd">
                    
                    Welcome:&nbsp;&nbsp;
                    <?php 
                        echo $_SESSION['username'];
                        echo '('.$_SESSION['usertype'].')';
                    ?>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="../shared/logout.php"><button class="btn btn-danger">Logout</button></a>
                </label>
            
    </div>
</body>
</html>