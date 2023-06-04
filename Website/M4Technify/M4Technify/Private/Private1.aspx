<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Private1.aspx.cs" Inherits="WebApplicationSecurityDemo2.Private.Private1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div><hr /></div>
     <div><hr /></div>
    <div> <h1>Customer Details</h1></div>

    <div>

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1162px" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDSCustomer" Height="141px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
                <asp:BoundField DataField="emailAddress" HeaderText="emailAddress" SortExpression="emailAddress" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDSCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb5ConnectionString %>" SelectCommand="SELECT * FROM [customer] WHERE ([emailAddress] = @emailAddress)">
            <SelectParameters>
                <asp:Parameter Name="emailAddress" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div><hr /></div>

    <div style="font-size: medium; text-align: center; font-weight: bold; background-color: #3366FF;">  <asp:Label ID="Label1" runat="server" Text="Customer History"></asp:Label> </div>
    
        

 

         <asp:GridView ID="GridView2" runat="server" Width="1166px" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDSHistory" GridLines="Horizontal" DataKeyNames="Payment_ID" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowSorting="True">
             <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
                 <asp:BoundField DataField="Payment_ID" HeaderText="Payment_ID" InsertVisible="False" ReadOnly="True" SortExpression="Payment_ID" />
                 <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                 <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" SortExpression="Booking_ID" />
                 <asp:BoundField DataField="Total_Cost" HeaderText="Total_Cost" SortExpression="Total_Cost" DataFormatString="{0:c}" />
                 <asp:BoundField DataField="Max_Guest" HeaderText="Max_Guest" SortExpression="Max_Guest" />
                 <asp:BoundField DataField="Payment_Type" HeaderText="Payment_Type" SortExpression="Payment_Type" />
                 <asp:BoundField DataField="Room_Type" HeaderText="Room_Type" SortExpression="Room_Type" />
                 <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No" />
                 <asp:BoundField DataField="Checkin" DataFormatString="{0:d}" HeaderText="Checkin" SortExpression="Checkin" />
                 <asp:BoundField DataField="checkout" DataFormatString="{0:d}" HeaderText="checkout" SortExpression="checkout" />
             </Columns>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
             <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
             <SortedAscendingCellStyle BackColor="#F4F4FD" />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" />
         </asp:GridView>
            
   
 
            
        <asp:SqlDataSource ID="SqlDSHistory" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb5ConnectionString %>" SelectCommand="SELECT tblPayment.Payment_ID, tblPayment.Customer_ID, tblPayment.Booking_ID, tblPayment.Total_Cost, tblPayment.Max_Guest, tblPayment.Payment_Type, tblPayment.Room_Type, tblPayment.Room_No, tblBooking.Checkin, tblBooking.checkout FROM tblPayment INNER JOIN tblBooking ON tblPayment.Booking_ID = tblBooking.bookId WHERE (tblPayment.Customer_ID = @customerId)" OnSelecting="SqlDSHistory_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="customerId" PropertyName="SelectedValue" />
            </SelectParameters>
         </asp:SqlDataSource>
        

    <div>
        
    </div>
</asp:Content>
