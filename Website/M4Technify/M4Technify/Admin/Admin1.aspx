<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin1.aspx.cs" Inherits="WebApplicationSecurityDemo2.Admin.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div><hr /></div>
      <div><hr /></div>
    <h1>Reservations</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomNo" DataSourceID="SqlDataSource1" Width="1150px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowPaging="True" Height="290px" PageSize="23">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="bookId" HeaderText="bookId" InsertVisible="False" ReadOnly="True" SortExpression="bookId" />
            <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
            <asp:BoundField DataField="emailAddress" HeaderText="emailAddress" SortExpression="emailAddress" />
            <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
            <asp:BoundField DataField="checkout" HeaderText="checkout" SortExpression="checkout" />
            <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
            <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
            <asp:BoundField DataField="Booked" HeaderText="Booked" SortExpression="Booked" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb5ConnectionString %>" SelectCommand="SELECT tblBooking.bookId, customer.customerName, customer.emailAddress, tblBooking.Checkin, tblBooking.checkout, rooms.RoomNo, rooms.RoomType, rooms.Booked FROM tblBooking INNER JOIN customer ON tblBooking.CustomerId = customer.customerId INNER JOIN rooms ON tblBooking.RoomID = rooms.RoomID" CancelSelectOnNullParameter="False" UpdateCommand="UPDATE rooms SET Booked = @booked WHERE (RoomNo = @grid)">
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="grid" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>

              

    <div style="text-align: center"> 
        <asp:Label ID="Label1" runat="server" Text="Selected Room No. :"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        
    </div>
    <div style="text-align: center"> 
         <asp:Button ID="Button1" runat="server" Text="Cancel Booking" OnClick="Button1_Click" />
    </div>
   

</asp:Content>
