using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationSecurityDemo2.Private
{
    public partial class Private2 : System.Web.UI.Page
    {
        //int roomId = 0;
        int cusId = 0;
        int rid = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.QueryString["roomid"] != null)
            //{
            //    roomId = int.Parse(Request.QueryString["roomid"].ToString());

            //} else
            //{
            //    Response.Redirect("/rooms");
            //}

            TextBox4.Text = Session["Max"].ToString();

            string name = User.Identity.Name;
            SqlConnection con = new SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupPmb5;Persist Security Info=True;User ID=GroupPmb5;Password=vgw8c4");
            con.Open();

            string sqlQuery = "SELECT customerId, customerName FROM customer WHERE emailAddress = '" + name + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            cusId = Convert.ToInt16(dt.Rows[0]["customerId"]);
            TextBox1.Text = dt.Rows[0]["customerName"].ToString();
            TextBox2.Text = name;

            string sqlQuery1 = "SELECT RoomType FROM rooms WHERE RoomID = '" + Session["Value"] + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(sqlQuery1, con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            TextBox3.Text = dt1.Rows[0]["RoomType"].ToString();

            /*
            string sqlroom = "SELECT BookNumGuest FROM tblBooking WHERE RoomID = '" + Session["Value"] + "'";
            SqlDataAdapter da2 = new SqlDataAdapter(sqlroom, con);
            DataTable dtable = new DataTable();
            da2.Fill(dtable);
            DropDownList1.Text = dtable.Rows[0]["BookNumGuest"].ToString();*/

            con.Close();

            //Label1.Text = Session["Value"].ToString(); ///Session["Value"].ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Bookbtn_Click(object sender, EventArgs e)
        {
            rid = int.Parse(Session["Value"].ToString());
            int guest = Convert.ToInt16(TextBox4.Text);
            string query = "insert into tblBooking values('" + guest + "','" + Calendar1.SelectedDate.ToString() + "','" + Calendar2.SelectedDate.ToShortDateString() + "','" + cusId + "','" + rid + "')";
            //String query = "INSERT INTO table_name VALUES(" , value2, value3, ...);

            SqlConnection con = new SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupPmb5;Persist Security Info=True;User ID=GroupPmb5;Password=vgw8c4");
            con.Open();

            SqlCommand cmd = new SqlCommand(query,con);
            cmd.CommandText = query;

            cmd.ExecuteNonQuery();
            //cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("/Private/Payment");

        }
    }
}