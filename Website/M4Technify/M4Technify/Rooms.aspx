<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="WebApplicationSecurityDemo2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.img{height:1280px; width:700px;}
</style>
</head>
<body>

<div class="about-section">
  <h1>Available Rooms</h1>
<p> Rules</p>
<p>Check In 	14h00 </p>
<p>Check Out 	10h00 </p>
  
</div>

<h2 style="text-align:center"></h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/img/1.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <p>Semi Self-Catering (+ Breakfast Max 2pax) [25%OFF]</p>
        
       <%-- <p><button class="title">Book Now</button></p>--%>
          <asp:Button ID="SemiSelfBtn" runat="server" Text="Book Now" OnClick="SemiSelfBtn_Click" />
          <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/img/2.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <p>Family Room (+ Breakfast Max 3pax)</p>
        <%--<p><button class="title" >Book Now</button></p>--%>
          <asp:Button ID="FamilyBtn2" runat="server" Text="Book Now" OnClick="FamilyBtn2_Click" />
      &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card" id="14">
      <img src="/img/3.jpg" alt="John" style="width:100%">
      <div class="container">
        <p>Budget Room (+ Breakfast Max 2pax) [25%OFF]</p>
        
        <%--<p><button class="title" >Book Now</button></p>--%>

          <asp:Button ID="BudgetRoomBtn1" runat="server" Text="Book Now" OnClick="BudgetRoomBtn1_Click" />
      &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>
</div>

 <div class="row">
  <div class="column">
    <div class="card" id="19">
      <img src="/img/4.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <p>Budget Room (+ Breakfast Max 2pax) [25%OFF]</p>
       
          <asp:Button ID="BudgetRoomBtn" runat="server" Text="Book Now" OnClick="BudgetRoomBtn_Click" />
       <%-- <p><button class="title" >Book Now</button></p>--%>
      &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/img/6.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <p>Standard Room (+ Breakfast Max 2pax) [25%OFF</p>
       
       <%-- <p><button class="title">Book Now</button></p>--%>
          <asp:Button ID="StandardBtn" runat="server" Text="Book Now" OnClick="StandardBtn_Click"/>
      &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/img/5.jpg" alt="John" style="width:100%">
      <div class="container">
        <p>Family Room (+ Breakfast Max 3pax)</p>
        
       <%-- <p><button class="title">Book Now</button></p--%>
          <asp:Button ID="FamilyBtn" runat="server" Text="Book Now" OnClick="FamilyBtn_Click" />
      &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
      </div>
    </div>
  </div>
</div>

</body>
</html>
</asp:Content>
