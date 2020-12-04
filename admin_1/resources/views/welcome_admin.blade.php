
<!--
   Author: W3layouts
   Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>cutlery a restaurant Category Responsive Web Template| Home :: W3layouts</title>

	<!-- Template CSS -->
	<link rel="stylesheet" href="{{url('/assets/css/style-starter.css')}}">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
</head>
<body id="home">
	<section class=" w3l-header-4 header-sticky">
		<!--header-->
		<header id="site-header" class="fixed-top">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-dark stroke">
					<a class="navbar-brand" href="index.html">
						<span class="fa fa-cutlery"></span> FoodApp
					</a>
				<!-- if logo is image enable this   
			<a class="navbar-brand" href="#index.html">
				<img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
			</a> -->
			<button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
				<span class="navbar-toggler-icon fa icon-close fa-times"></span>

			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav ml-auto">

					
						@if (Route::has('login'))

							@auth
							<a class="nav-link" href="{{ url('/home') }}">Home</a>
							@else
							<li class="nav-item @@about__active">
							<a class="nav-link" href="{{ route('login') }}">Login</a>
							</li>	
							@if (Route::has('register'))
							<li class="nav-item @@about__active">
							<a class="nav-link" href="{{ route('register') }}">Register</a>
							</li>
							@endif
							@endauth
						
						@endif
					

				</ul>
			</div>
		</nav>
	</div>
</header>
<!--/header-->
</section>

<script src="{{url('/assets/js/jquery-3.3.1.min.js')}}"></script> <!-- Common jquery plugin -->
<!--bootstrap working-->
<script src="{{url('/assets/js/bootstrap.min.js')}}"></script>
<!-- //bootstrap working-->
<!--/MENU-JS-->
<script>
	$(window).on("scroll", function () {
		var scroll = $(window).scrollTop();

		if (scroll >= 80) {
			$("#site-header").addClass("nav-fixed");
		} else {
			$("#site-header").removeClass("nav-fixed");
		}
	});

	//Main navigation Active Class Add Remove
	$(".navbar-toggler").on("click", function () {
		$("header").toggleClass("active");
	});
	$(document).on("ready", function () {
		if ($(window).width() > 991) {
			$("header").removeClass("active");
		}
		$(window).on("resize", function () {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
		});
	});
</script>
<!--//MENU-JS-->
<!-- disable body scroll which navbar is in active -->
<script>
	$(function () {
		$('.navbar-toggler').click(function () {
			$('body').toggleClass('noscroll');
		})
	});
</script>
<!-- disable body scroll which navbar is in active -->

<section class="w3l-hero-headers-9" id="home">
	<div class="slide text-center header11" data-selector="header11">
		<div class="container">
			<div class="banner-text ">
				<h5 class=" ">Only taste is <br>real for food</h5>
				<p class=" ">Adipi sicing elit. Quia, aliquid voluptatum corporis Dicta. Deleniti possimus culpa nemo asperiores aperiam mollitia, maiores Lorem ipsum dolor.</p>
				<a href="services.html" class="btn logo-button top-margin">View Our Menu</a>
			</div>
		</div>

	</div>
</section>
<section class="w3l-teams-15">
	<div class="team-single-main ">
		<div class="container">

			<div  class="row">
				<div class="column2 image-text col-lg-6">
					<div class="nature-row ">
						<h5><a href="#page" >
						Enjoy Our Delicious Food</a></h5>
						<p class="para  text ">
							Mollitia placeat modi explicabo voluptatum corporis unde Dicta, provident
						Rem adipisci Mollitia placeat modi.</p>
					</div>
					<div class="nature-row ">
						<h5><a href="#page">
						All Different Types </a></h5>
						<p class="para  text ">
							Mollitia placeat modi explicabo voluptatum corporis unde Dicta, provident
						Rem adipisci Mollitia placeat modi.</p>
					</div>
					<div class="nature-row ">
						<h5><a href="#page">Experience new flavors</a></h5>
						<p class="para  text ">
							Mollitia placeat modi explicabo voluptatum corporis unde Dicta, provident
						Rem adipisci Mollitia placeat modi.</p>
					</div>
				</div>
				<div class="column2 image-text col-lg-6">
					<img src="assets/images/b1.jpg" alt="product" class="img-responsive ">
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<section class="w3l-specification-6">
	<div class="specification-layout ">
		<div class="container">
			<div class="main-titles-head ">
				<h3 class="header-name ">
					Our Special Feature
				</h3>
				<p class="tiltle-para  ">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic fuga sit illo modi aut aspernatur tempore laboriosam saepe dolores eveniet.</p>
			</div>
			<div class="call-grids-w3 d-grid">
				<div class="grids-1  grids-effect-2">
					<span class="fa fa-beer"></span>
					<h4><a href="#feature" class="title-head">Well Decorated</a></h4>
					<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed Ut blandit. Duis feugiat tortor sed.</p>
				</div>
				<div class="grids-1  grids-effect-2">
					<div class="color-white">
						<span class="fa fa-cutlery"></span>
						<h4><a href="#page" class=" title-head">Breakfast</a></h4>
						<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed  Ut blandit. Duis feugiat tortor sed.</p>
					</div>
				</div>
				<div class="grids-1 grids-effect-2">
					<span class="fa fa-handshake-o"></span>
					<h4><a href="#feature" class="title-head">Expert Chef</a></h4>
					<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed  Ut blandit. Duis feugiat tortor sed.</p>
				</div>
				<div class="grids-1  grids-effect-2">
					<div class="color-white">
						<span class="fa fa-spoon"></span>
						<h4><a href="#page" class=" title-head">Lunch</a></h4>
						<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed  Ut blandit. Duis feugiat tortor sed.</p>
					</div>
				</div>
				<div class="grids-1 grids-effect-2">
					<span class="fa fa-smile-o"></span>
					<h4><a href="#feature" class="title-head">Quick Serve</a></h4>
					<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed Ut blandit. Duis feugiat tortor sed.</p>
				</div>

				<div class="grids-1  grids-effect-2">
					<div class="color-white">
						<span class="fa fa-apple"></span>
						<h4><a href="#page" class=" title-head">Dinner</a></h4>
						<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed  Ut blandit. Duis feugiat tortor sed.</p>
					</div>
				</div>
				<div class="grids-1 grids-effect-2">
					<span class="fa fa-diamond"></span>
					<h4><a href="#feature" class="title-head title-head">Delicious Food</a></h4>
					<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed  Ut blandit. Duis feugiat tortor sed.</p>
				</div>  
				<div class="grids-1  grids-effect-2">
					<div class="color-white">
						<span class="fa fa-thumbs-o-up"></span>
						<h4><a href="#page" class=" title-head">Desert</a></h4>
						<p class="para">Vivamus a ligula quam. Duis feugiat tortor sed  Ut blandit. Duis feugiat tortor sed.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="w3l-call-to-action_9">
		<div class="call-w3">
			<div class="container text-center">
				<div class="title-head">
					<h3>Enjoy Our<br>
					Delicious Food</h3>
					<p >Fugit tempora dolor dolore recusandae aut at cum autem esse neque. Consequuntur dolor sequi nulla corrupti blanditiis similique</p>
				</div>

			</div>
		</div>
	</div>
</section>

<section class="w3l-covers-18">
	<div class="covers-main ">
		<div class="container">
			<div class="main-titles-head ">
				<h3 class="header-name ">
					Discover Our Menu
				</h3>
				<p class="tiltle-para  ">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic fuga sit illo modi aut aspernatur tempore laboriosam saepe dolores eveniet.</p>
			</div>
			<div class="gallery-image row">
				<div class="img-box col-lg-4 col-md-6 col-sm-6">
					<img src="assets/images/b2.jpg" alt="product" class="img-responsive ">
					<h5 class="my-2"><a href="about.html">Coconut Chicken and Rice</a></h5>
					<p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet itaque labor.</p>
				</div>
				<div class="img-box col-lg-4 col-md-6 col-sm-6">
					<img src="assets/images/b1.jpg" alt="product" class="img-responsive ">
					<h5 class="my-2"><a href="about.html">Garlic Roast Chicken</a></h5>
					<p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet itaque labor.</p>
				</div>
				<div class="img-box col-lg-4 col-md-6 col-sm-6">
					<img src="assets/images/b3.jpg" alt="product" class="img-responsive ">
					<h5 class="my-2"><a href="about.html">Butter pecan caramel</a></h5>
					<p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet itaque labor.</p>
				</div>
				<div class="img-box col-lg-4 col-md-6 col-sm-6">
					<img src="assets/images/b4.jpg" alt="product" class="img-responsive ">
					<h5 class="my-2"><a href="about.html">Stuffed Baby Eggplant</a></h5>
					<p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet itaque labor.</p>
				</div>
				<div class="img-box col-lg-4 col-md-6 col-sm-6">
					<img src="assets/images/b5.jpg" alt="product" class="img-responsive ">
					<h5 class="my-2"><a href="about.html">Classic Key Lime Pie </a></h5>
					<p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet itaque labor.</p>
				</div>
				<div class="img-box col-lg-4 col-md-6 col-sm-6">
					<img src="assets/images/b6.jpg" alt="product" class="img-responsive ">
					<h5 class="my-2"><a href="about.html">Classic Stuffed PEPPERS</a></h5>
					<p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet itaque labor.</p>
				</div>
			</div>
		</div>
	</div>
</div>
</section>

<section class="w3l-clients" id="client">
	<div class="main-w3 text-center">
		<div class="container">
			<div class="form-right-inf"> 
				<div class="form-inner-cont">
					<div class="main-titles-head ">
						<h3 class="header-name white ">
							Book your Table
						</h3>
						<p class="tiltle-para  ">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic fuga sit illo modi aut aspernatur tempore laboriosam saepe dolores eveniet.</p>
					</div>
					<form action="search-results.html" method="post" class="signin-form">	
						<div class="row book-form">
							<div class="form-input col-lg-6 col-md-6">
								<input type="text" name="" placeholder="Enter Your Name" required="">
							</div>
							<div class="form-input col-lg-6 col-md-6 mt-md-0 mt-3">
								<input type="email" name="" placeholder="Email" required="">

							</div>
							<div class="form-input col-md-4 mt-3">
								<input type="date" name="" placeholder="Date" required="">
							</div>
							<div class="form-input col-md-4 mt-3">
								<select class="selectpicker">
									<option>Time</option>
									<option>9:00 AM</option>
									<option>10:00 AM</option>
									<option>11:00 AM</option>
									<option>12:00 PM</option>
									<option>1:00 PM</option>
									<option>2:00 PM</option>
									<option>3:00 PM</option>
									<option>4:00 PM</option>
									<option>5:00 PM</option>
									<option>6:00 PM</option>
									<option>7:00 PM</option>
									<option>8:00 PM</option>
								</select>


							</div>
							<div class="form-input col-md-4  mt-3">
								<select class="selectpicker">
									<option>Adults</option>
									<option>01</option>
									<option>02</option>
									<option>03</option>
									<option>04</option>
								</select>

							</div>
							<div class="form-input col-md-4 mt-3">
								<select class="selectpicker">
									<option>Children</option>
									<option>01</option>
									<option>02</option>
									<option>03</option>
									<option>04</option>
								</select>

							</div>
							<div class="form-input col-md-4  mt-3">
								<select class="selectpicker">
									<option>Table</option>
									<option>Table 1</option>
									<option>Table 2</option>
									<option>Table 3</option>
									<option>Table 4</option>
									<option>Table 5</option>
									<option>Table 6</option>
									<option>Table 7</option>
									<option>Table 8</option>
									<option>Table 9</option>
									<option>Table 10</option>
								</select>

							</div> 
							<div class="bottom-btn col-md-4  mt-3">
								<button class="btn">Check Availability</button>
							</div>
						</div>



					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="w3l-footer-29-main">
	<div class="footer-29 py-5 text-center">
		<div class="container">
			<div class="footer-list-29 footer-1 ">
				<h2><a href="index.html" class="footer-logo"><span class="fa fa-cutlery"></span> cutlery </a></h2>
				<p class="para">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Saepe qui repellat nam vero consectetur dicta eos suscipit. Numquam at minus architecto asperiores cupiditate. At molestias laborum voluptatibus numquam aperiam in.</p>

			</div>
			<div class="row footer-top-29">

				<div class="col-lg-4 col-md-4 col-sm-6 footer-list-29 footer-2 ">
					<h6 class="footer-title-29">Address</h6>
					<ul>
						<li><p><span class="fa fa-map-marker"></span> Estate Business, #32841 block, #221DRS Real estate business building, UK.</p></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 footer-list-29 footer-2 ">
					<h6 class="footer-title-29">Opening Hours</h6>
					<ul>
						<li><p><span>Mon-Fri:</span> 9AM-11PM</p></li>
						<li><p><span>Sat-Sun:</span> 10AM-1PM</p></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 footer-list-29 footer-2 ">
					<h6 class="footer-title-29">Contact Us</h6>
					<ul>
						<li><a href="tel:+7-800-999-800"><span class="fa fa-phone"></span> +(21)-255-999-8888</a></li>
						<li><a href="mailto:corporate-mail@support.com" class="mail"><span class="fa fa-envelope-open-o"></span> cutlery-mail@support.com</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<section class="w3l-footer-29-main w3l-copyright">
		<div class="container">
			<div class=" bottom-copies text-center">
				<p class="copy-footer-29">© 2020 cutlery. All rights reserved | Designed by <a href="https://w3layouts.com">W3layouts</a></p>
			</div>
		</div>
	</section>
	<!-- move top -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span class="fa fa-long-arrow-up"></span>
	</button>
	<script>
	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function () {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
			document.getElementById("movetop").style.display = "block";
		} else {
			document.getElementById("movetop").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>
<!-- /move top -->
</body>

</html>
