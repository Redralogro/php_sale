<?php 
   ob_start();
   session_start();
   // session_destroy();

   include_once 'config/myConfig.php';
   include_once 'function/myFunction.php';

   if (isset($_GET['page'])) {
      $page = $_GET['page'];
   }else{
      $page = 'home';
   }

?>

<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="images/favicon.png">
      <title>Welcome to FlatShop</title>
      <link href="css/bootstrap.css" rel="stylesheet">
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
      <link href="css/font-awesome.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
      <link href="css/sequence-looptheme.css" rel="stylesheet" media="all"/>
      <link href="css/style.css" rel="stylesheet">
      
   </head>

   <body id="home">
      <div class="wrapper">
        
         <?php include_once 'layout/header.php'; ?>

         <div class="clearfix"></div>
         <?php  
            if ($page == 'detail-order') {
             
            }else{
         ?>
            <div class="hom-slider">
               <?php include_once 'layout/slides.php'; ?>

               <?php include_once 'layout/promotion.php'; ?>
            </div>
         <?php
            }
         ?>

         <div class="clearfix"></div>
            
         <!-- Phần thân trang website -->
         <div class="container_fullwidth">
            <div class="container">

               <?php 
                  if (file_exists('views/'.$page.'.php')) {
                     include_once 'views/'.$page.'.php';
                  }else{
                     echo "<h3 style='color: red;'>ERROR 404 trang không tồn tại!</h3>";
                  }
               ?>

               <?php 
                  if ($page == 'detail-order'){

                  }else{
                     include_once 'layout/brand_logo.php'; 
                  }
               ?>
            </div>
         </div>
         <!-- END Phần thân trang website -->

         <div class="clearfix"></div>

         <div class="footer">
            <?php include_once 'layout/footer.php'; ?>
         </div>
      </div>
      <!-- Bootstrap core JavaScript==================================================-->
	  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	  <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	  <script type="text/javascript" src="js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="js/jquery.sequence-min.js"></script>
	  <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript" src="js/script.min.js" ></script>
   </body>
</html>