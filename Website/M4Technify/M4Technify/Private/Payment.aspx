<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" EnableEventValidation="false"  Inherits="WebApplicationSecurityDemo2.Private.Payment"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #04AA6D;
        color: white;
        padding: 12px;
  margin: 10px 0 10px 69;
        width: 100%;
        border-radius: 3px;
        cursor: pointer;
        font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<h1> Payment Confirmation</h1>
<div class="row" style="background-color: #000000">
  <div class="col-75" style="background-color: #000000">
    <div class="container" style="background-color: #000000">
      <form action="/action_page.php">
      
        <div class="row">
          <div class="col-50">
              <div style="font-size: medium; font-weight: bold"> <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="white"></asp:Label></div>
              
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <%--<input type="text" id="fname" name="firstname" placeholder="John M. Doe">--%>
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <%--<input type="text" id="email" name="email" placeholder="john@example.com">--%>
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <label for="adr"><i class="fa fa-bed"></i> Room No.</label>
           <%-- <input type="text" id="adr" name="" placeholder="542 W. 15th Street">--%>
              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <label for="city"><i class="fa fa-institution"></i>Room Type</label>
            <%--<input type="text" id="city" name="city" placeholder="New York">--%>
              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            <div class="row">
              <div class="col-50">
                <label for="state">Number of Days Booked</label>
                <%--<input type="text" id="state" name="state" placeholder="NY">--%>
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              </div>
              <div class="col-50">
                <label for="zip">Total Cost</label>
                <%--<input type="text" id="zip" name="zip" placeholder="10001"--%>
                  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              </div>
                <div class="col-50">
                <label for="zip">Maximum Number of Guest</label>
                <%--<input type="text" id="zip" name="zip" placeholder="10001"--%>
                  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Name on Card">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="December">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2029">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="573">
              </div>
            </div>
          </div>
          
        </div>
        
        <%--<input type="submit" value="Continue to checkout" class="btn">--%>
          <asp:Button ID="btnCheckOut" runat="server" Text="Continue to checkout" OnClick="btnCheckOut_Click" Class="btn" Height="64px" Width="1121px" />
      </form>
    </div>
  </div>
  <%--<div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
      <p><a href="#">Product 1</a> <span class="price">$15</span></p>
      <p><a href="#">Product 2</a> <span class="price">$5</span></p>
      <p><a href="#">Product 3</a> <span class="price">$8</span></p>
      <p><a href="#">Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>$30</b></span></p>
    </div>
  </div>--%>
</div>

</body>
</html>

    

</asp:Content>
