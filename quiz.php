
<!-- LOGIN PHP-->
<?php
 ob_start();
 session_start();
 require_once 'dbconnect.php';

 // it will never let you open index(login) page if session is set
 if ( isset($_SESSION['user'])!="" ) {
  header("Location: home.php");
  exit;
 }

 $error = false;

 if( isset($_POST['btn-login']) ) {

  // prevent sql injections/ clear user invalid inputs
  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);

  $pass = trim($_POST['pass']);
  $pass = strip_tags($pass);
  $pass = htmlspecialchars($pass);
  // prevent sql injections / clear user invalid inputs

  if(empty($email)){
   $error = true;
   $emailError = "Please enter your email address.";
  } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
   $error = true;
   $emailError = "Please enter valid email address.";
  }

  if(empty($pass)){
   $error = true;
   $passError = "Please enter your password.";
  }

  // if there's no error, continue to login
  if (!$error) {

   $password = hash('sha256', $pass); // password hashing using SHA256

   $res=mysqli_query($conn,"SELECT userId, userName, userPass FROM users WHERE userEmail='$email'");
   $row=mysqli_fetch_array($res);
   $count = mysqli_num_rows($res); // if uname/pass correct it returns must be 1 row

   if( $count == 1 && $row['userPass']==$password ) {
    $_SESSION['user'] = $row['userId'];
    header("Location: home.php");
   } else {
    $errMSG = "Incorrect Credentials, Try again...";
   }

  }

 }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GameShare4k</title>

    <!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->

<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <!-- Index CSS -->
    <link href="css/index.css"  rel="stylesheet" type="text/css">
<!--//theme-style-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>

.carousel-indicators .active{
	    background-color: black;

}
 .carousel-indicators li{
    background-color: yellow;


}

.container {
    margin-top: 20px;
}

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 90%;
      margin: auto;
  }


.footer-bs {
    background-color: #3c3d41;
	padding: 60px 40px;
	color: rgba(255,255,255,1.00);
	margin-bottom: 20px;
	border-bottom-right-radius: 6px;
	border-top-left-radius: 0px;
	border-bottom-left-radius: 6px;
}
.footer-bs .footer-brand, .footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { padding:10px 25px; }
.footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-color: transparent; }
.footer-bs .footer-brand h2 { margin:0px 0px 10px; }
.footer-bs .footer-brand p { font-size:12px; color:rgba(255,255,255,0.70); }

.footer-bs .footer-nav ul.pages { list-style:none; padding:0px; }
.footer-bs .footer-nav ul.pages li { padding:5px 0px;}
.footer-bs .footer-nav ul.pages a { color:rgba(255,255,255,1.00); font-weight:bold; text-transform:uppercase; }
.footer-bs .footer-nav ul.pages a:hover { color:rgba(255,255,255,0.80); text-decoration:none; }
.footer-bs .footer-nav h4 {
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 3px;
	margin-bottom:10px;
}

.footer-bs .footer-nav ul.list { list-style:none; padding:0px; }
.footer-bs .footer-nav ul.list li { padding:5px 0px;}
.footer-bs .footer-nav ul.list a { color:rgba(255,255,255,0.80); }
.footer-bs .footer-nav ul.list a:hover { color:rgba(255,255,255,0.60); text-decoration:none; }

.footer-bs .footer-social ul { list-style:none; padding:0px; }
.footer-bs .footer-social h4 {
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 3px;
}
.footer-bs .footer-social li { padding:5px 4px;}
.footer-bs .footer-social a { color:rgba(255,255,255,1.00);}
.footer-bs .footer-social a:hover { color:rgba(255,255,255,0.80); text-decoration:none; }

.footer-bs .footer-ns h4 {
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 3px;
	margin-bottom:10px;
}
.footer-bs .footer-ns p { font-size:12px; color:rgba(255,255,255,0.70); }

@media (min-width: 768px) {
	.footer-bs .footer-nav, .footer-bs .footer-social, .footer-bs .footer-ns { border-left:solid 1px rgba(255,255,255,0.10); }
}

#footerwrapper{
	 margin: 0 auto;

}


.btn-yellow{
border-radius: 3px;
border-style: solid;
border-width: 0 0 2px;
box-shadow: 0 10px 5px -10px rgba(0, 0, 0, 0.5);
color: #fff;
cursor: pointer;
display: inline-block;
font-size: 20px;
padding: 7px 20px;
text-align: center;
text-decoration: none;
text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);
}
.btn-yellow:hover{
box-shadow: 0 3px 2px rgba(0, 0, 0, 0.2) inset;
text-decoration: none;
}

.btn-yellow {
background-color: #faaf40;
border-color: #eda53a;
box-shadow: 0 12px 4px -12px rgba(0, 0, 0, 0.3);
color: #fff; text-shadow:none
}
.btn-yellow:hover {
border-color: #faaf40;
}
</style>
  </head>
  <body>
  <div class="container">
  <div class="row">
  <div class="col-xs-12 col-md-6"><img src="imagenes/GameShare4k.png" class="img-responsive" alt="logo"></div>
  <div class="col-xs-12 col-md-3"><a data-toggle="modal" data-target="#login"  class="btn-yellow" role="button">Inicia sesión!</a></div>
  <div class="col-xs-12 col-md-3"><a href="register.php" class="btn-yellow" role="button">Regístrate</a></div>

</div>
</div>


   <!-- Modal -->
<div id="login" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><center><img src="imagenes/GameShare4k.png" class="img-responsive" alt="logo"></center></h4>
      </div>
      <div class="modal-body">
            <!-- Begin # DIV Form -->
                <div id="div-forms">

                    <!-- Begin # Login Form -->
                     <div id="login-form">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">

     <div class="col-md-12">

         <div class="form-group">
             <h2 class="">Ingresa tus datos para iniciar sesión</h2>
            </div>

         <div class="form-group">
             <hr />
            </div>

            <?php
   if ( isset($errMSG) ) {

    ?>
    <div class="form-group">
             <div class="alert alert-danger">
    <span class="glyphicon glyphicon-info-sign"></span> <?php echo $errMSG; ?>
                </div>
             </div>
                <?php
   }
   ?>

            <div class="form-group">
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
             <input type="email" name="email" class="form-control" placeholder="Your Email" value="<?php echo $email; ?>" maxlength="40" />
                </div>
                <span class="text-danger"><?php echo $emailError; ?></span>
            </div>

            <div class="form-group">
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
             <input type="password" name="pass" class="form-control" placeholder="Your Password" maxlength="15" />
                </div>
                <span class="text-danger"><?php echo $passError; ?></span>
            </div>

            <div class="form-group">
             <hr />
            </div>

            <div class="form-group">
             <button type="submit" class="btn btn-block btn-yellow" name="btn-login">Iniciar sesión</button>
            </div>

            <div class="form-group">
             <hr />
            </div>

            <div class="form-group">
             <a href="register.php">¿No tienes cuenta?, registrate</a>
            </div>

        </div>

    </form>
    </div>

</div>
<?php ob_end_flush(); ?>

                    <!-- End # Login Form -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
      </div>
    </div>

  </div>
</div>



    <nav class="navbar navbar-inverse " role="navigation">
     <!-- El logotipo y el icono que despliega el menú se agrupan
          para mostrarlos mejor en los dispositivos móviles-->
     <div class="navbar-header">
       <button type="button" class="navbar-toggle" data-toggle="collapse"
               data-target="#navegacion-4k">
         <span class="sr-only">Desplegar navegación</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </button>
     </div>

     <!-- Agrupar los enlaces de navegación, los formularios y cualquier
          otro elemento que se pueda ocultar al minimizar la barra -->
     <div class="collapse navbar-collapse navbar-ex1-collapse" id="navegacion-4k">
     <div class="container-fluid">
       <div class="navbar-header">

       </div>
       <!-- Menú principal -->
       <ul class="nav navbar-nav navbar-center">
          <li class="active pull-left"><a href="index.php"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
          <li class="pull-left"> <a href="productos.php"> Nintendo </a></li>
          <li class="pull-left"> <a href="productos.php">Sony</a></li>
          <li class="pull-left"> <a href="productos.php">Microsoft</a></li>
          <li class="pull-left"> <a href="productos.php">PC</a></li>
          <li class="pull-left"> <a href="productos.php">Otros</a></li>
          <li class="pull-left"> <a href="quiz.php">Quiz</a></li>

       </ul>
       <form class="navbar-form navbar-right">
               <div class="form-group">
                 <input type="text" class="form-control" placeholder="Busca tus juegos favoritos aquí">
               </div>
               <button type="submit" class="btn btn-default"><a href="#"><span class="glyphicon glyphicon-search"></span></a></button>
             </form>
     </div>
   </div>
   </nav>
 </div>
 </div>
 <!--FLASH AS3 -->
 <center>
 <embed src="AS3/quiz.swf" width="1140" height="512" />
</center>
 <!-- FOOTER-->
 <footer class="footer-bs" id="footerwrapper">
         <div class="row">
         	<div class="col-md-3 footer-brand animated fadeInLeft">
             	<h2><img src="imagenes/GameShare4k.png" class="img-responsive" alt="logo"></h2>
                 <p>De gamers para gamers, estamos aquí para hacerte feliz.</p>
                 <p>© 2017 GameShare4k </p>
             </div>
         	<div class="col-md-4 footer-nav animated fadeInUp">
             	<h4>Menu —</h4>
             	<div class="col-md-6">
                     <ul class="pages">
                         <li><a href="#">Nintendo</a></li>
                         <li><a href="#">Sony</a></li>
                         <li><a href="#">Microsoft</a></li>
                         <li><a href="#">PC</a></li>
                         <li><a href="#">Otros</a></li>
                         <li><a href="quiz.php">quiz</a></li>

                     </ul>
                 </div>
             	<div class="col-md-6">
                     <ul class="list">
                         <li><a href="#">Quiénes somos</a></li>
                         <li><a href="#">Contacto</a></li>
                     </ul>
                 </div>
             </div>
         	<div class="col-md-2 footer-social animated fadeInDown">
             	<h4>Siguenos en nuestras redes sociales</h4>
             	<ul>
                 	<li><a href="#">Facebook</a></li>
                 	<li><a href="#">Twitter</a></li>
                 	<li><a href="#">Instagram</a></li>
                 	<li><a href="#">Discord Channel</a></li>
                 </ul>
             </div>
         	<div class="col-md-3 footer-ns animated fadeInRight">
             	<h4>Mandanos un correo</h4>
                 <p>Porque sabemos que no somos perfectos, mandanos dudas para cualquier aclaración</p>
                 <p>
                     <div class="input-group">
                       <input type="text" class="form-control" placeholder="Search for...">
                       <span class="input-group-btn">
                         <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-envelope"></span></button>
                       </span>
                     </div><!-- /input-group -->
                  </p>
             </div>
         </div>
     </footer>

     <!-- Footer basado en el dise;o de  Prince J. Sargbah -->


     <!-- Bootstrap core JavaScript
     ================================================== -->
     <!-- Ubicado al final para tener mayor velocidad en la página web -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
     <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
     <script src="js/bootstrap.min.js"></script>
     <script>
 $(document).ready(function(){
     $('#myModal').on('show.bs.modal', function (e) {
         var rowid = $(e.relatedTarget).data('id');
         $.ajax({
             type : 'post',
             url : 'fetch_record.php', //Here you will fetch records
             data :  'rowid='+ rowid, //Pass $id
             success : function(data){
             $('.fetched-data').html(data);//Show fetched data from database
             }
         });
      });
 });
     </script>
   </body>
 </html>
