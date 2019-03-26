﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="carbooking.aspx.cs" Inherits="carbooking" %>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	   <title> Car Reservation Form </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" />
        <script src="js/bootstrap.min.js"></script>
  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]> 
	<script src="js/respond.min.js"></script>
	<![endif]-->
   <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
         <link href="css1/bootstrap.min.css" rel="stylesheet" />
        <script src="js1/bootstrap.min.js"></script>
    <meta charset="UTF-8">
     <!-- Latest compiled and minified CSS -->


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="custom.css" rel="stylesheet" type="text/css">

    <script>
        function finalCost() {
            var roomType = document.getElementById("car_type").value;
            var roomType2 = document.getElementById("car_type");
            var roomType1 = roomType2.options[roomType2.selectedIndex].text;
            var car_typeasp = document.getElementById('car_typeasp');
            car_typeasp.value = roomType1;
            //var roomNum = document.getElementById("room_number").value;
            //var roomNum1 = document.getElementById("room_number");
            //var roomNum2 = roomNum1.options[roomNum1.selectedIndex].text;
            //var HiddenField1 = document.getElementById('HiddenField1');
            //HiddenField1.value = roomNum2;
            var personNum = document.getElementById("person_number").value;
            var personNum1 = document.getElementById("person_number");
            var personNum2 = personNum1.options[personNum1.selectedIndex].text;
            var HiddenField2 = document.getElementById('HiddenField2');
            HiddenField2.value = personNum2;
            //var childNum = document.getElementById("child_number").value;
            //var childNum1 = document.getElementById("child_number");
            //var childNum2 = childNum1.options[childNum1.selectedIndex].text;
            //var HiddenField3 = document.getElementById('HiddenField3');
            //HiddenField3.value = childNum2;
            var resFacilities = document.getElementById("res_facilities").value;
            var resFacilities1 = document.getElementById("res_facilities");
            var resFacilities2 = resFacilities1.options[resFacilities1.selectedIndex].text;
            var HiddenField4 = document.getElementById('HiddenField4');
            HiddenField4.value = resFacilities2;

            var total = (roomType * 1000) * personNum + ((resFacilities) * 750) * personNum;
            var HiddenField5 = document.getElementById('HiddenField5');
            HiddenField5.value = total;
            document.getElementById("result").innerHTML = total;
        }
    </script>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><a href="index.html">Tour</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="index.html">Home</a></li>
								<li class="has-dropdown">
									<a href="tours.html">Tours</a>
									<ul class="dropdown">
										<li><a href="#">Destination</a></li>
										<li><a href="#">Cruises</a></li>
										<li><a href="#">Hotels</a></li>
										<li><a href="#">Booking</a></li>
									</ul>
								</li>
								<li><a href="hotels.html">Hotels</a></li>
								<li><a href="services.html">Services</a></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/img_bg_1.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>2 Days Tour</h2>
				   					<h1>Amazing Maldives Tour</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/img_bg_2.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>10 Days Cruises</h2>
				   					<h1>From Greece to Spain</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/img_bg_5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluids">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>Explore our most tavel agency</h2>
				   					<h1>Our Travel Agency</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/img_bg_4.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h2>Experience the</h2>
				   					<h1>Best Trip Ever</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>	   	
			  	</ul>
		  	</div>
		</aside>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <div class="visible-md visible-sm visible-xs hidden-lg"><h1 style="color:red">Go To Full Screen</h1></div>
         <div class="hotel_reserve_box visible-lg"style="position:relative;top:10px;">
         <h3> Car Reservation Form </h3><br>
         <form runat="server" id="form1">
             <div class="form-group">
			 <label>Name</label>
                 <asp:TextBox ID="TextBox1" style="height:40px;" class="form-control" placeholder="Enter Your Name Here" runat="server"></asp:TextBox>
			 <br/>
			 <label>Contact No.</label>
                 <asp:TextBox ID="TextBox2" style="height:40px;" class="form-control" placeholder="Enter Your contact Number" runat="server"></asp:TextBox>
			 <br/>
			 <label>Start Date</label>

                 <asp:TextBox style="height:40px;" class="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
			 <br/>
			 <label>Return Date</label>
			  <asp:TextBox style="height:40px;" class="form-control" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
			 <br/>
                 <asp:HiddenField ID="car_typeasp" runat="server" />
                 <label>Car Type</label>
                 <select class="form-control" id="car_type" onchange="finalCost()">
                     <option value="0" selected>Select Car Type </option>
                     <option value="1"> Mini </option>
                     <option value="2"> Mini Deluxe </option>
                     <option value="3"> Micro </option>
                     <option value="4"> Micro Deluxe  </option>
                     <option value="5"> Prime Sedan </option>
                     <option value="6"> Prime SUV  </option>
                     <option value="7"> LUX </option>
                 </select>
             </div>
             <div class="form-group">
                 <label>Pick Up Location</label>
                  <asp:TextBox style="height:40px;" class="form-control" ID="TextBox5" runat="server" placeholder="Enter Pickup Location" ></asp:TextBox>
             </div>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField2" runat="server" />
                 <label>Number of Days</label>
                 <select class="form-control" id="person_number" onchange="finalCost()">
                     <option value="0"> 0 </option>
                     <option value="1"> 1 </option>
                     <option value="2"> 2 </option>
                     <option value="3"> 3 </option>
                     <option value="4"> 4 </option>
                     <option value="5"> 5 </option>
                     <option value="6"> 6 </option>
                     <option value="7"> 7+ </option>
                 </select>
             </div>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField4" runat="server" />
                 <label>Driver facilities?</label>
                 <select class="form-control" id="res_facilities" onchange="finalCost()">
                     <option value="0" selected> Do you want Driver facilities? </option>
                     <option value="1"> Yes </option>
                     <option value="0"> No </option>
                 </select>
             </div><br>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField5" runat="server" />
                 <label>Total Cost (₹) : </label>
                 <span id="result" style="background-color: #7527b0;color: #fff;padding: 6px 70px;font-weight: 600;font-size: 18px; margin-left: 10px;border-radius: 5px;">0</span>
             </div>
			 <br/>
			 <br/>
             <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Confirm" OnClick="Button2_Click" />
         </form>
     </div>

		<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-3 colorlib-widget">
						<h4>Tour Agency</h4>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-2 colorlib-widget">
						<h4>Book Now</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Flight</a></li>
								<li><a href="#">Hotels</a></li>
								<li><a href="#">Tour</a></li>
								<li><a href="#">Car Rent</a></li>
								<li><a href="#">Beach &amp; Resorts</a></li>
								<li><a href="#">Cruises</a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-2 colorlib-widget">
						<h4>Top Deals</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Edina Hotel</a></li>
								<li><a href="#">Quality Suites</a></li>
								<li><a href="#">The Hotel Zephyr</a></li>
								<li><a href="#">Da Vinci Villa</a></li>
								<li><a href="#">Hotel Epikk</a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-2">
						<h4>Blog Post</h4>
						<ul class="colorlib-footer-links">
							<li><a href="#">The Ultimate Packing List For Female Travelers</a></li>
							<li><a href="#">How These 5 People Found The Path to Their Dream Trip</a></li>
							<li><a href="#">A Definitive Guide to the Best Dining and Drinking Venues in the City</a></li>
						</ul>
					</div>

					<div class="col-md-3 col-md-push-1">
						<h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>291 South 21th Street, <br> Suite 721 New York NY 10016</li>
							<li><a href="tel://1234567920">+ 1235 2355 98</a></li>
							<li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
							<li><a href="#">yoursite.com</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart2" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span> 
							<span class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a> , <a href="http://pexels.com/" target="_blank">Pexels.com</a></span>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>


