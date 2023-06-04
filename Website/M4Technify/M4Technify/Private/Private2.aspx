<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Private2.aspx.cs" Inherits="WebApplicationSecurityDemo2.Private.Private2" EnableSessionState="True" EnableEventValidation="false" %>
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
    <div><hr /></div>
      <div><hr /></div>
   
<h1> Booking Form </h1>
    <div class="bg-agile">
	<div class="book-reservation">
			<form action="#" method="post">
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-user" aria-hidden="true"></i> Name :</label>
						<%--<input type="text" name="name" placeholder="Your name" required=""/>--%>
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
					</div>
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-envelope" aria-hidden="true"></i> Email :</label>
						<%--<input type="email" name="email" placeholder="Your email" required="" />--%>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					</div>
					 <div class="form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i> Checkin Date :</label>
						<%--<input  id="datepicker1" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">--%>
                         <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
					</div>
					<!--<div class="form-time-w3layouts">
							<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
							<%--<input type="text" name="Time" class="timepicker form-control" value="Hrs:Min">	--%>
					</div>-->
					<div class="form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i> CheckOut Date :</label>
						<%--<input  id="datepicker2" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">--%>
<%--                       <asp:Calendar ID="Calendar2" runat="server" ForeColor="White"></asp:Calendar>--%>
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
					</div>
					<%--<div class="form-time-w3layouts">
							<label><i class="fa fa-clock-o" aria-hidden="true"></i> Time :</label>
							<%--<input type="text" name="Time" class="timepicker form-control" value="Hrs:Min">--%>	
                      <%--  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					</div>--%>
					<div class="form-left-agileits-w3layouts bottom-w3ls">
							<label><i class="fa fa-home" aria-hidden="true"></i> Choose a Room :</label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                             
					</div>
					<div class="form-left-agileits-w3layouts">
							<label>MAX NO.of People :</label><asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                           
					</div>
					<div class="clear"> </div>
					<div class="make">
                        <asp:Button ID="Bookbtn" runat="server" Text="Make Booking" OnClick="Bookbtn_Click" Height="45px" Width="223px" />
					</div>
                <div><hr /></div>
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
