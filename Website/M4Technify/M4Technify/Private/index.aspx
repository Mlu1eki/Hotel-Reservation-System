﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplicationSecurityDemo2.Private.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Tourists Reservation Form Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourists Reservation Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs Sign up Web Templates, 
 Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--fonts--> 
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">


<!--//fonts--> 
</head>
<body>
<!--background-->
<h1> Booking Form </h1>
    <div class="bg-agile">
	<div class="book-reservation">
			<form action="#" method="post">
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-user" aria-hidden="true"></i> Name :</label>
						<input type="text" name="name" placeholder="Your name" required=""/>
					</div>
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-envelope" aria-hidden="true"></i> Email :</label>
						<input type="email" name="email" placeholder="Your email" required="" />
					</div>
					 <div class="form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i> Checkin Date :</label>
						<input  id="datepicker1" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
					</div>
					<div class="form-time-w3layouts">
							<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
							<input type="text" name="Time" class="timepicker form-control" value="Hrs:Min">	
					</div>
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i> CheckOut Date :</label>
						<input  id="datepicker2" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
					</div>
					<div class="form-time-w3layouts">
							<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
							<input type="text" name="Time" class="timepicker form-control" value="Hrs:Min">	
					</div>
					<div class="form-left-agileits-w3layouts bottom-w3ls">
							<label><i class="fa fa-home" aria-hidden="true"></i> Choose a Room :</label>
							<select class="form-control">
								<option>Room</option>
								<option>Standard Double Room</option>
								<option>Standard Family Room</option>
								<option>Garden Family Room</option>
								<option>Deluxe Double Room</option>
								<option>Executive Junior Suite</option>
								<option>Maisonette</option>
							</select>
					</div>
					<div class="form-left-agileits-w3layouts">
							<label><i class="fa fa-users" aria-hidden="true"></i> No.of People :</label>
							<select class="form-control">
								<option>Persons</option>
								<option>1 Person</option>
								<option>2 People</option>
								<option>3 People</option>
								<option>4 People</option>
								<option>5 People</option>
								<option>More</option>
							</select>
					</div>
					<div class="clear"> </div>
					<div class="make">
						  <input type="submit" value="Make Booking">
					</div>
			</form>
		</div>
   </div>
   <!--copyright-->
			<div class="copy w3ls">
		     
	        </div>
		<!--//copyright-->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/wickedpicker.js"></script>
			<script type="text/javascript">
				$('.timepicker').wickedpicker({twentyFour: false});
			</script>


		<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
			

</body>
</html>

</asp:Content>
