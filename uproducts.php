<?php 
include 'sess.php';
if(isset($_SESSION['id'])){
  $userid=$_SESSION['id'];
  
 include "dbconnect.php";
 $str="select * from products where uid='$userid'";
$query= mysqli_query($con, $str);
$array=array();
$i=1;
$count= mysqli_num_rows($query);
 while($row=mysqli_fetch_assoc($query)){
    $array[]=$row;
}

function size($pid){
    include "dbconnect.php";
$qer="select scid from size where pid=$pid";	
$qes=mysqli_query($con,$qer);
$ar=array();
while($row= mysqli_fetch_assoc($qes)){
    $ar[]=callme($row['scid']);
    }
    return implode(', ', $ar);
}
function callme($scid){
    include 'dbconnect.php';
    $qer="select pid from size where sid=$scid";	
$qes=mysqli_query($con,$qer);
    $data= mysqli_fetch_assoc($qes);
    return $data['pid'];
}

function callme2($scid){
    include 'dbconnect.php';
    $qer="select pid from color where cid=$scid";	
$qes=mysqli_query($con,$qer);
    $data= mysqli_fetch_assoc($qes);
    return $data['pid'];
}

function color($id){
    include 'dbconnect.php';
$qer="select scid from color where pid=$id";	
$qes=mysqli_query($con,$qer);
$ar2=array();
while($row= mysqli_fetch_assoc($qes)){
    $ar2[]=callme2($row['scid']);
}
return implode(', ', $ar2);
}




  }else header('location:index.php');
?>
<!DOCTYPE html>
<html>
<head>
<title>Modern Shoppe a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Shoppe Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//for-mobile-apps -->
<!--Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//Custom Theme files -->
<!--js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--//js-->
<!--cart-->
<script src="js/simpleCart.min.js"></script>
<!--cart-->
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Pompiere' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Fascinate' rel='stylesheet' type='text/css'>
<!--web-fonts-->
<!--animation-effect-->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!--//animation-effect-->
<!--close-button-->
<script>$(document).ready(function(c) {
        $('#1').on('click', function(c){
		$('.cart-header1').fadeOut('slow', function(c){
	  		$('.cart-header1').remove();
		});
	});
        	$('#2').on('click', function(c){
		$('.cart-header2').fadeOut('slow', function(c){
	  		$('.cart-header2').remove();
		});
	});
        $('#3').on('click', function(c){
		$('.cart-header3').fadeOut('slow', function(c){
	  		$('.cart-header3').remove();
		});
	});
        	$('#4').on('click', function(c){
		$('.cart-header4').fadeOut('slow', function(c){
	  		$('.cart-header4').remove();
		});
	});
        
         	$('#5').on('click', function(c){
		$('.cart-header5').fadeOut('slow', function(c){
	  		$('.cart-header5').remove();
		});
	});
        
                              $('#pro').on('change', function() {
                          if(this.value=='logout'){
                         $.post("users.php", 
                  { action: "logout" }, 
                  function(data) { 
                      location.reload(true);
                      
                  } 
               );}else if(this.value=='account'){
       window.location.href ="account.php";
       
               }else if(this.value=='add'){
       window.location.href ="addnew.php";
               }else if(this.value=='all'){
       window.location.href ="uproducts.php";
               }
    
});
});
</script>


<!--//close-button-->
<!--start-smooth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smooth-scrolling-->
</head>
<body>
	<!--header-->
	<div class="header">
		
		<div class="header-two navbar navbar-default"><!--header-two-->
			<div class="container">
				<div class="nav navbar-nav header-two-left">
					<ul>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 892</li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">mail@example.com</a></li>			
					</ul>
				</div>
				<div class="nav navbar-nav logo wow zoomIn animated" data-wow-delay=".7s">
					<h1><a href="index.php">Modern <b>Shoppe</b><span class="tag">Everything for Kids world </span> </a></h1>
				</div>
				<div class="nav navbar-nav navbar-right header-two-right">
					<div class="header-right my-account">
						 <?php if(isset($_SESSION['id']))
                                       if($_SESSION['gid']==1)include 'head/select.php';
                                      elseif($_SESSION['gid']==2)include 'head/select2.php';    
                                       else echo $_SESSION['gid'];
                                           ?>
					</div>
					<div class="header-right cart">
						<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
						<h4><a href="checkout.php">
								<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>) 
						</a></h4>
						<div class="cart-box">
							<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="top-nav navbar navbar-default"><!--header-three-->
			<div class="container">
				<nav class="navbar" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!--navbar-header-->
				<?php include "manu.php"?>					<!--//navbar-collapse-->
				
                                </nav>
				<div id="cd-search" class="cd-search">
					<form>
						<input type="search" placeholder="Search...">
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="cart-items">
		<div class="container">
			<h3 class="wow fadeInUp animated" data-wow-delay=".5s">My Products(<?php echo $count;?>)</h3>
                        
                        
                       <?php foreach ($array as $v):?> 
			<div class="cart-header<?php echo $i;?> wow fadeInUp animated" data-wow-delay=".5s">
				<div class="alert-close1" id="<?php echo $i;$i++;?>"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
                                            <a href="single.php?productid=<?=  base64_encode($v['pid']) ?>"><img src="images/<?= $v['img'] ?>" class="img-responsive" alt=""></a>
					</div>
					<div class="cart-item-info">
						<h4><a href="single.php?productid=<?=  base64_encode($v['pid']) ?>"> <?= $v['name']?> </a></h4>
							<div class="single-rating">
                                                            <table><tr>
                                                                    <td>
                                                            <span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5" checked>
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3">
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
                                                        
						</span>
                                                                    </td><td>
                                                                    <p>&nbsp;<?php echo $v['rate'];?> out of 5</p>
                                                                    </td>
                                                                    <td><a href="#">Add Your Review</a></td></tr></table>
                                                            <br>
                                                            <font color="orange" size="5"><b>Price : </b></font><span><font size="5">&#8377 <?php echo $v['price'];?>  /- </font></span><br>      
                                                            <font color="orange" size="5"><b>Sizes : </b></font><span><font size="5"><?php echo size($v['pid']);?> </font></span> <br>
                                                            <font color="orange" size="5"><b>Colors : </b></font><span><font size="5"><?php echo color($v['pid']);?>  </font></span> <br>
                                                            <table><tr><td> <div class="btn_form"><a href="edit.php?productid=<?=  base64_encode($v['pid']) ?>">EDIT</a>	</div></td>
                                                                    <td>&nbsp; &nbsp; &nbsp;</td>
                                                                    <td> <div class="btn_form"><a href="#">DELETE</a>	</div></td></tr></table>
                                                   	
						  
                                                          
					</div>	
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<?php?>
                       <?php ;endforeach;?> 
                        
		</div>
	</div>
	<!--//cart-items-->	
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-info">
				<div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".5s">
					<h4 class="footer-logo"><a href="index.php">Modern <b>Shoppe</b> <span class="tag">Everything for Kids world </span> </a></h4>
					<p>© 2016 Modern Shoppe . All rights reserved | Design by <a href="http://w3layouts.com" target="_blank">W3layouts</a></p>
				</div>
				<div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".7s">
					<h3>Popular</h3>
					<ul>
						<li><a href="about.php">About Us</a></li>
						<li><a href="products.php">new</a></li>
						<li><a href="contact.php">Contact Us</a></li>
						<li><a href="faq.php">FAQ</a></li>
						<li><a href="checkout.php">Wishlist</a></li>
					</ul>
				</div>
				<div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".9s">
					<h3>Subscribe</h3>
					<p>Sign Up Now For More Information <br> About Our Company </p>
					<form>
						<input type="text" placeholder="Enter Your Email" required="">
						<input type="submit" value="Go">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->			
	<!--search jQuery-->
	<script src="js/main.js"></script>
	<!--//search jQuery-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!--//smooth-scrolling-of-move-up-->
	<!--Bootstrap core JavaScript
    ================================================== -->
    <!--Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>