<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewCustomer.aspx.cs" Inherits="WebApplicationSecurityDemo2.Private.AddNewCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <div> <hr /></div>
    <div> <hr /></div>
    <div> <hr /></div>
    <div>
        <style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 0px solid #ddd;
  padding: 8px;
}

/*#customers tr:nth-child(even){background-color: #f2f2f2;}*/

#customers tr:hover {background-color: black;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
        <h1 style="text-decoration: underline">Customer Registartion </h1>
        <table id="customers">
            <tr style="font-weight: bold; font-size: medium">
                <td>Customer Full Name</td>
                <td><asp:TextBox ID="txtFirstName" runat="server" Width="337px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Full Name is required"></asp:RequiredFieldValidator> <!--validation control--> 
                </td>
             </tr>
           
            <tr style="font-weight: bold; font-size: medium">
                <td>Email Address</td>
                <td><asp:TextBox ID="TxtEmail" runat="server" Width="339px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address is required"></asp:RequiredFieldValidator> <!--validation control--> 
                </td>
             </tr>

            <tr style="font-weight: bold; font-size: medium">
                <td>Mobile Number</td>
                <td><asp:TextBox ID="TxtMNumber" runat="server" Width="338px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMNumber" ErrorMessage="Mobile Number is required"></asp:RequiredFieldValidator> <!--validation control--> 
                </td>
             </tr>
            <tr style="font-size: medium; font-weight: bold">
                <td>Gender</td>
                <td><asp:TextBox ID="TxtGender" runat="server" Width="336px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGender" ErrorMessage="Gender is required"></asp:RequiredFieldValidator> <!--validation control--> 
                </td>
             </tr>

            <tr style="font-size: medium; font-weight: bold">
                <td>Date Of Birth</td>
                <td><asp:TextBox ID="TxtDOB" runat="server" Width="337px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth is required"></asp:RequiredFieldValidator> <!--validation control--> 
                </td>
             </tr>

            <tr style="font-size: medium; font-weight: bold">
                <td>Address</td>
                <td><asp:TextBox ID="TxtAddress" runat="server" Width="340px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Physical Address is required"></asp:RequiredFieldValidator> <!--validation control--> 
                </td>
             </tr>

</table>
       <div style="text-align: center">
           <asp:Button ID="btnAddNewCustomer" runat="server" Text="Register Customer" OnClick="btnAddNewCustomer_Click" />
       </div>


    </div>

    <asp:SqlDataSource ID="SqlDSAddNewCust" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupPmb5ConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [customerId] = @original_customerId AND [customerName] = @original_customerName AND [emailAddress] = @original_emailAddress AND [mobile] = @original_mobile AND [gender] = @original_gender AND [dob] = @original_dob AND [address] = @original_address" InsertCommand="INSERT INTO [customer] ([customerName], [emailAddress], [mobile], [gender], [dob], [address]) VALUES (@customerName, @emailAddress, @mobile, @gender, @dob, @address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [customerName] = @customerName, [emailAddress] = @emailAddress, [mobile] = @mobile, [gender] = @gender, [dob] = @dob, [address] = @address WHERE [customerId] = @original_customerId AND [customerName] = @original_customerName AND [emailAddress] = @original_emailAddress AND [mobile] = @original_mobile AND [gender] = @original_gender AND [dob] = @original_dob AND [address] = @original_address">
        <DeleteParameters>
            <asp:Parameter Name="original_customerId" Type="Int32" />
            <asp:Parameter Name="original_customerName" Type="String" />
            <asp:Parameter Name="original_emailAddress" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_dob" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtFirstName" Name="customerName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxtEmail" Name="emailAddress" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxtMNumber" Name="mobile" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxtGender" Name="gender" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxtDOB" Name="dob" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxtAddress" Name="address" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customerName" Type="String" />
            <asp:Parameter Name="emailAddress" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="original_customerId" Type="Int32" />
            <asp:Parameter Name="original_customerName" Type="String" />
            <asp:Parameter Name="original_emailAddress" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_dob" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSInsertNewCust" runat="server" OnSelecting="SqlDSInsertNewCust_Selecting"></asp:SqlDataSource>
</asp:Content>
