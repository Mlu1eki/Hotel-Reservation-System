using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationSecurityDemo2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string user = User.Identity.Name;
            string user1 = User.Identity.ToString();
            //private2?roomid={id}
           
        }
        int roomId = 0;
        SqlConnection con = new SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupPmb5;Persist Security Info=True;User ID=GroupPmb5;Password=vgw8c4");

        string query;

        protected void BudgetRoomBtn_Click(object sender, EventArgs e)
        {
            Session["Max"] = 2;
            string roomType = "Budget Room";
            con.Open();
            SqlCommand command = new SqlCommand("select roomId from rooms where RoomType = '" + roomType + "' and Booked = 'NO'", con);
            SqlDataReader srd = command.ExecuteReader();

            while (srd.Read())
            {
                roomId = Convert.ToInt16(srd.GetValue(0).ToString());


                Session["Value"] = roomId;

                Response.Redirect("/Private/Private2");


            }

            Label4.Text = "All Rooms Booked";

        }

        protected void StandardBtn_Click(object sender, EventArgs e)
        {
            Session["Max"] = 2;
            string roomType = "Standard Room";
            con.Open();
            SqlCommand command = new SqlCommand("select roomId from rooms where RoomType = '" + roomType + "' and Booked = 'NO'", con);
            SqlDataReader srd = command.ExecuteReader();

            while (srd.Read())
            {
                roomId = Convert.ToInt16(srd.GetValue(0).ToString());


                Session["Value"] = roomId;

                Response.Redirect("/Private/Private2");


            }

            Label5.Text = "All Rooms Booked";

        }

        protected void FamilyBtn_Click(object sender, EventArgs e)
        {
            Session["Max"] = 3;
            string roomType = "Family Room";
            con.Open();
            SqlCommand command = new SqlCommand("select roomId from rooms where RoomType = '" + roomType + "' and Booked = 'NO'", con);
            SqlDataReader srd = command.ExecuteReader();

            while (srd.Read())
            {
                roomId = Convert.ToInt16(srd.GetValue(0).ToString());


                Session["Value"] = roomId;

                Response.Redirect("/Private/Private2");


            }

            Label6.Text = "All Rooms Booked";
             
        }

        protected void SemiSelfBtn_Click(object sender, EventArgs e)
        {
            Session["Max"] = 2;

            string roomType = "Semi self-Catering";
            con.Open();
            SqlCommand command = new SqlCommand("select roomId from rooms where RoomType = '"+roomType+"' and Booked = 'NO'", con);
            SqlDataReader srd = command.ExecuteReader();
            
             while(srd.Read())
             {
                 roomId = Convert.ToInt16(srd.GetValue(0).ToString());


                 Session["Value"] = roomId;

                 Response.Redirect("/Private/Private2");


             }

            Label1.Text = "All Rooms Booked";



           
            
          
        }

        protected void BudgetRoomBtn1_Click(object sender, EventArgs e)
        {
            Session["Max"] = 2;
            string roomType = "Budget Room";
            con.Open();
            SqlCommand command = new SqlCommand("select roomId from rooms where RoomType = '" + roomType + "' and Booked = 'NO'", con);
            SqlDataReader srd = command.ExecuteReader();

            while (srd.Read())
            {
                roomId = Convert.ToInt16(srd.GetValue(0).ToString());


                Session["Value"] = roomId;

                Response.Redirect("/Private/Private2");


            }

            Label3.Text = "All Rooms Booked";

        }



        protected void FamilyBtn2_Click(object sender, EventArgs e)
        {
            Session["Max"] = 3;
            string roomType = "Family Room";
            con.Open();
            SqlCommand command = new SqlCommand("select roomId from rooms where RoomType = '" + roomType + "' and Booked = 'NO'", con);
            SqlDataReader srd = command.ExecuteReader();

            while (srd.Read())
            {
                roomId = Convert.ToInt16(srd.GetValue(0).ToString());


                Session["Value"] = roomId;

                Response.Redirect("/Private/Private2");


            }

            Label2.Text = "All Rooms Booked";

        }
    }
}