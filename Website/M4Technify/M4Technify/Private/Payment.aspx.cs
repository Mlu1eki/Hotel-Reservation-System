using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationSecurityDemo2.Private
{
    public partial class Payment : System.Web.UI.Page
    {
        string cName = "";
        int bookingID = 0;
        string query;
        int bookId = 0;
        int roomNum = 0;
        decimal totalCost = 0;
        string roomType1;
        int numGuest = 0;
        int numDays = 0;
        decimal cost = 0;
        DateTime checkIn, checkout;
        int customerID = 0;
        SqlConnection con = new SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupPmb5;Persist Security Info=True;User ID=GroupPmb5;Password=vgw8c4");

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            string pay = "Card";
            query = "insert into tblPayment (Customer_ID,Booking_ID,Total_Cost,Max_Guest,Payment_Type,Room_Type,Room_No) values(" + customerID + "," + bookId + "," + totalCost + "," + numGuest + ",'" + pay + "','" + roomType1 + "'," + roomNum + ")";
            SqlConnection con = new SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupPmb5;Persist Security Info=True;User ID=GroupPmb5;Password=vgw8c4");
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandText = query;

            cmd.ExecuteNonQuery();
            String yes = "YES";


            string updateQuery = "UPDATE rooms SET Booked='" + yes + "' WHERE RoomNo='" + roomNum + "'";
            SqlCommand cmd1 = new SqlCommand(updateQuery, con);
            cmd1.CommandText = updateQuery;
            cmd1.ExecuteNonQuery();

            con.Close();
            Response.Redirect("/Private/Private1");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = DateTime.Now.Date.ToLongDateString();

            string name = User.Identity.Name;
            con.Open();
            SqlCommand command = new SqlCommand("select tblBooking.bookId,customer.customerId,customer.customerName,rooms.RoomNo,rooms.RoomType,rooms.Price,tblBooking.bookNumGuest,tblBooking.Checkin,tblBooking.checkout from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId", con);
            SqlDataReader srd = command.ExecuteReader();
            int bookingID = 0;
            while (srd.Read())
            {
                bookingID = Convert.ToInt16(srd.GetValue(0).ToString());
                customerID = Convert.ToInt16(srd.GetValue(1).ToString());
                cName = srd.GetValue(2).ToString();
                TextBox3.Text = srd.GetValue(3).ToString();
                TextBox4.Text = srd.GetValue(4).ToString();
                TextBox6.Text = srd.GetValue(5).ToString();
                TextBox7.Text = srd.GetValue(6).ToString();
                checkIn = Convert.ToDateTime(srd.GetValue(7));
                checkout = Convert.ToDateTime(srd.GetValue(8));

            }


            cost = Convert.ToDecimal(TextBox6.Text);
            roomNum = Convert.ToInt16(TextBox3.Text);
            bookId = bookingID;
            roomType1 = TextBox4.Text;
            numGuest = Convert.ToInt32(TextBox7.Text);
            numDays = checkout.Subtract(checkIn).Days;
            totalCost = numDays * cost;
            TextBox6.Text = totalCost.ToString();
            TextBox5.Text = numDays.ToString();
            TextBox1.Text = cName;
            TextBox2.Text = name;


            con.Close();

          

        }
    }
}