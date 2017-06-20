<html>
    <head> 
        <title>Uploader | Update Your Profile Page</title>
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="assets/css/signup.css">
        <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <?php 
        session_start();
    ?>
    <style>
        body{background-image: url('assets/images/p4.jpg');}
    </style>
    <body>
        <div class="main">
        <div class="form">
                <div class="below">
                    
                                    <p id="p1">
                                   <h1> Your Profile Details</h1><br>
                                    <form action="php/updusr.php" method="POSt" autocomplete="off">
                                    <input id="usr" type="text" placeholder="Name" value="<? echo ($_SESSION['name'] == NULL)?'':$_SESSION['name']; ?>" name="name" required><br>
                                    <input id="desig" type="text" placeholder="Designation" value="<? echo ($_SESSION['desig']==NULL)?'':$_SESSION['desig']; ?>" name="desig" required><br>
                                    <center>
                                        <textarea id="" type="text" placeholder="Quote Or Description Or Others..(Max 255 chars)" name="q" cols=50 rows=10 required><? echo ($_SESSION['q']==NULL)?'':$_SESSION['q']; ?></textarea><br>
                                        <input id="su" type="submit" value="Update Your Profile" name="v5" required>
                                    </center>
                                    
                                    </form>
                                    </p>    
                </div>
                <script type="text/javascript" src="assets/js/form.js"></script>
        </div>
        </div>
    </body>
</html>