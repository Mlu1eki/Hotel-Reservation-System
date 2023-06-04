<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplicationSecurityDemo2.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


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
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
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
</style>
</head>
<body>

<div class="about-section">
   
  <h1>THE INN property in Pietermaritzburg.</h1>
  <h2>over 30 budget, standard, semi-self catering and family rooms. </h2>
    <p>100+ hours time spent ensuring our establishments and room are in tip top shape and clean for our guests.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/img/11.jpg" alt="Jane" style="width:100%">
      <div class="container">
       
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/img/22.jpg" alt="Mike" style="width:100%">
      <div class="container">
        
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/img/33.jpg" alt="John" style="width:100%">
      <div class="container">
        
      </div>
    </div>
  </div>
</div>
    <h3 style="text-align:left">Address:</h3>
<p>  111 Chief Albert Luthuli St, Pietermaritzburg, 3200

Located in Pietermaritzburg, within 700 m of KwaZulu-Natal Museum and 2.6 km of Comrades Marathon House, iLawu Inn provides accommodation with free WiFi throughout the property. The property is set 3.7 km from Butterflies for Africa, 4.4 km from Hayfields Mall and 5 km from Cascades Shopping Centre. The inn features family rooms.

A continental breakfast is available daily at the inn.

Popular points of interest near iLawu Inn include Parklane Shopping Centre, Msunduzi Museum and Mediclinic Pietermaritzburg. The nearest airport is Pietermaritzburg Airport, 8 km from the accommodation.
We speak your language! Book a stay with us, coffee is on us.
Covid Safety Approved: We pledge to implement a high standard of hygiene and cleaning protocols to ensure the safest environment possible for our guests. We adhere to the industry safety protocols set out by the Tourism Business Council of South Africa (TBCSA).
</p>

</body>
</html>

</asp:Content>
