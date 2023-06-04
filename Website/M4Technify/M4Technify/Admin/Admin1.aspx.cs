using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationSecurityDemo2.Admin
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
          

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           // AutoPostBackControl.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[6].Text;
            SqlConnection con = new SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupPmb5;Persist Security Info=True;User ID=GroupPmb5;Password=vgw8c4");
            con.Open();
            //string  query = "select tblBooking.bookId,customer.customerName,customer.emailAddress,tblBooking.checkin,tblBooking.checkout ,rooms.RoomNo,rooms.RoomType from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId  update rooms set rooms.Booked='NO' where rooms.RoomNo = '" + GridView1.SelectedDataKey + "'";

            string updateQuery = "UPDATE rooms SET Booked='NO' WHERE RoomNo='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(updateQuery, con);
            cmd1.CommandText = updateQuery;
            cmd1.ExecuteNonQuery();

            con.Close();


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}