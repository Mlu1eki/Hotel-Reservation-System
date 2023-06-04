﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationSecurityDemo2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Cantata+One" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Imprima" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-cta">
						<h1>Make Your Reservation</h1>
					</div>
					<div class="booking-form">
						<form>
							<div class="col-md-8">
								<div class="form-group">
									<span class="form-label">Destination</span>
									<input class="form-control" type="text" placeholder="Enter Address, zip, city or airport">
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<span class="form-label">Guests</span>
									<select class="form-control">
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
									<span class="select-arrow"></span>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-group">
									<span class="form-label">Children</span>
									<select class="form-control">
										<option>0</option>
										<option>1</option>
										<option>2</option>
									</select>
									<span class="select-arrow"></span>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<span class="form-label">Check In</span>
									<input class="form-control" type="date" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<span class="form-label">Check out</span>
									<input class="form-control" type="date" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-btn">
									<button class="submit-btn">Check availability</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
  
 

</asp:Content>