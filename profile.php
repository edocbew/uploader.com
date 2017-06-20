<html>
    <head>
        <title>Uploader | Profile Page</title>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="assets/css/stylepro.css">
        <link rel="stylesheet" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    </head>
    <?php session_start(); ?>
    <body>
        <div class="page-bg"></div>
        <div class="main">
            <div class="nav">
                <ul>
                    <li> <a href="#"> <i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                    <li><a href="settings.php"> <i class="fa fa-cog" aria-hidden="true"></i> Settings</a></li>
                    <li> <a href="php/logout.php"> <i class="fa fa-sign-out" aria-hidden="true"></i> Log out </a></li>
                <ul>
            </div>
            <div class="lside">
                <center>
                            <ul class="social">
                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                                <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li> <a href=""><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <ul><br><br>
                            <img src="assets/images/def.jpeg" class="image" alt="profile image">
                            <br><br>
                            <h1><?= $_SESSION['usr']; ?></h1> <hr>
                    <div class="f">
                           <h4 style="font-size:20px">Upload Your<br> Single Page Scripts</h4>

                             <form action="php/upload.php" method="POST" id="propic" enctype="multipart/form-data"/>
                                <div class="fileUpload btn btn-primary">
                                <span><i class="fa fa-plus"></i></span>
                                <input id="file" name="file" type="file" class="upload"/>
                                </div><br>
                                <div id="disp"></div>
                                <br>
                                <input id="upload" value="Upload your Scripts" name="upload" type="submit" class="upload btn btn-primary">
                                 <script>
                                    var f=document.getElementById('file');
                                    document.getElementById('disp').innerHTML=f.value;
                                    f.onload=check;
                                    f.onchange=check;
                                    f.onkeyup=check;
                                    function check(){document.getElementById('disp').innerHTML=f.value;}
							</script>
                    </div>
                </center>
            </div>
            <div class="rside">
                    <i class="fa fa-user fa-2x" aria-hidden="true"></i>
                    <h1 style="color:#212121;">PROFILE</h1> <br><br>
                        <div class="intro">
                            <center>
                            <div style="font-size:50px;font-weight:bold;color:#eeeeee">Hello</div><br><br>
                            <h2><?= $_SESSION['name'];?></h2><br><h3><?= $_SESSION['desig']; ?></h3><hr><p style="color:#eeeeee"><?= $_SESSION['q'];?></p>
                            <hr>
                        <br>
                        <ul class="dir">
                            <li class="head">Your uploaded Files</li><br><br>
                           <?php
                                if ($handle = opendir('php/'.$_SESSION['path'])) {
                                    while (false !== ($entry = readdir($handle))) {
                                        if ($entry != "." && $entry != "..") {
                            ?>
                                    <li><a href="<? echo 'php/'.$_SESSION['path']."/".$entry;?>" download="<? echo 'php/'.$_SESSION['path']."/".$entry;?>"> <?= $entry ?></a><li><br><br>
                            <?php
                                    }
                                }
                                closedir($handle);
                            }   
                            ?>
                        </ul>
                        </center>
                        </div>
                        
            </div>
        </div>
    </body>
</html>
