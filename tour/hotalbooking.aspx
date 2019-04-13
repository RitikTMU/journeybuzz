<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hotalbooking.aspx.cs" Inherits="hotalbooking" %>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	   <title> Hotel Reservation Form </title>
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
            var roomType = document.getElementById("room_type").value;
            var roomType2 = document.getElementById("room_type");
            var roomType1 = roomType2.options[roomType2.selectedIndex].text;
            var roomandsuiteasp = document.getElementById('roomandsuiteasp');
            roomandsuiteasp.value = roomType1;
            var roomNum = document.getElementById("room_number").value;
            var roomNum1=document.getElementById("room_number");
            var roomNum2 = roomNum1.options[roomNum1.selectedIndex].text;
            var HiddenField1 = document.getElementById('HiddenField1');
            HiddenField1.value = roomNum2;
            var personNum = document.getElementById("person_number").value;
            var personNum1 = document.getElementById("person_number");
            var personNum2 = personNum1.options[personNum1.selectedIndex].text;
            var HiddenField2 = document.getElementById('HiddenField2');
            HiddenField2.value = personNum2;
            var childNum = document.getElementById("child_number").value;
            var childNum1 = document.getElementById("child_number");
            var childNum2 = childNum1.options[childNum1.selectedIndex].text;
            var HiddenField3 = document.getElementById('HiddenField3');
            HiddenField3.value = childNum2;
            var resFacilities = document.getElementById("res_facilities").value;
            var resFacilities1 = document.getElementById("res_facilities");
            var resFacilities2 = resFacilities1.options[resFacilities1.selectedIndex].text;
            var HiddenField4 = document.getElementById('HiddenField4');
            HiddenField4.value = resFacilities2;

            var total = ((roomNum) * parseInt(roomType) * 500) + ((resFacilities) * (personNum * 250));
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
							<div id="colorlib-logo"><a href="index.html">Journey Buzz</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><a href="tours.html">Tours</a></li>
								<li class="active"><a href="hotels.html">Hotels</a></li>
								<li><a href="services.html">Services</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.aspx">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover-img-4.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
				   				<div class="slider-text-inner text-center">
				   					<h1>Hotel Reservation</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
 <div class="hotel_reserve_box"style="position:relative;top:10px;">
         <h3> Hotel Reservation Form </h3><br>
         <form runat="server" id="form1">
             <div class="form-group">
			 <label>Name</label>
                 <asp:TextBox ID="TextBox1" style="height:40px;" class="form-control" placeholder="Enter Your Name Here" runat="server"></asp:TextBox>
			 <br/>
			 <label>Contact No.</label>
                 <asp:TextBox ID="TextBox2" style="height:40px;" class="form-control" placeholder="Enter Your contact Number" runat="server"></asp:TextBox>
			 <br/>
			 <label>Check-in date</label>

                 <asp:TextBox style="height:40px;" class="form-control" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
			 <br/>
			 <label>Check-out date</label>
			  <asp:TextBox style="height:40px;" class="form-control" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
			 <br/>
                 <asp:HiddenField ID="roomandsuiteasp" runat="server" />
                 <label>Room/Suite Type</label>
                 <select class="form-control" id="room_type" onchange="finalCost()">
                     <option value="0" selected>Select Room/Suite </option>
                     <option value="1"> Standard </option>
                     <option value="2"> Deluxe </option>
                     <option value="3"> Superior Deluxe </option>
                     <option value="4"> Premier Deluxe  </option>
                     <option value="5"> Executive Suite </option>
                     <option value="6"> Junior Suite </option>
                     <option value="7"> Honeymoon Suite </option>
                 </select>
             </div>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField1" runat="server" />
                 <label>Number of room/suite</label>
                 <select class="form-control" id="room_number" onchange="finalCost()">
                     <option value="0"> 0 </option>
                     <option value="1"> 1 </option>
                     <option value="2"> 2 </option>
                     <option value="3"> 3 </option>
                     <option value="4"> 4 </option>
                     <option value="5"> 5 </option>
                     <option value="6"> 6 </option>
                     <option value="7"> 7 </option>
                 </select>
             </div>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField2" runat="server" />
                 <label>Number of persons</label>
                 <select class="form-control" id="person_number" onchange="finalCost()">
                     <option value="0"> 0 </option>
                     <option value="1"> 1 </option>
                     <option value="2"> 2 </option>
                     <option value="3"> 3 </option>
                     <option value="4"> 4 </option>
                     <option value="5"> 5 </option>
                     <option value="6"> 6 </option>
                     <option value="7"> 7 </option>
                 </select>
             </div>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField3" runat="server" />
                 <label>Number of children</label>
                 <select class="form-control" id="child_number" onchange="finalCost()">
                     <option value="0"> 0 </option>
                     <option value="1"> 1 </option>
                     <option value="2"> 2 </option>
                     <option value="3"> 3 </option>
                     <option value="4"> 4 </option>
                     <option value="5"> 5 </option>
                     <option value="6"> 6 </option>
                     <option value="7"> 7 </option>
                 </select>
             </div>
             <div class="form-group">
                 <asp:HiddenField ID="HiddenField4" runat="server" />
                 <label>Restaurant facilities?</label>
                 <select class="form-control" id="res_facilities" onchange="finalCost()">
                     <option value="0" selected> Do you want restaurant facilities? </option>
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
             <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" />
         </form>
     </div>
	

		<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-3 colorlib-widget">
						<h4>Journey Buzz</h4>
						<p>Journey Buzz can able to “See the world. It's more fantastic than any dream made or paid for in factories. Ask for no guarantees, ask for no security.” </p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
				            </ul>
						</p>
					</div>
					<div class="col-md-2 colorlib-widget">
						<h4>Book Now</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Hotels</a></li>
								<li><a href="#">Tour</a></li>
								<li><a href="#">Car Rent</a></li>
								<li><a href="#">Guide</a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3 col-md-push-1">
						<h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>Room No. 531, TMU Boys Hostel</li>
							<li><a href="tel://1234567920">+7704014235</a></li>
							<li><a href="mailto:info@yoursite.com">journeybuzz@gmail.com</a></li>
							<li><a href="#">journeybuzz.com</a></li>
						</ul>
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


