using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;

namespace MajorProject.Business.AllUserControl
{
    public partial class Payment : Form
    {
        public Payment()
        {
            InitializeComponent();

        }
        function fn = new function();
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
        private void Payment_Load(object sender, EventArgs e)
        {
           label2.Text = DateTime.Now.Date.ToLongDateString();
           label7.Text = DateTime.Now.Date.ToLongTimeString();





            con.Open();
             SqlCommand command= new  SqlCommand("select tblBooking.bookId,customer.customerId,customer.customerName,rooms.RoomNo,rooms.RoomType,rooms.Price,tblBooking.bookNumGuest,tblBooking.Checkin,tblBooking.checkout from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId", con);
            SqlDataReader srd = command.ExecuteReader();
            int bookingID = 0;
            while (srd.Read())
            {
                bookingID = Convert.ToInt16( srd.GetValue(0).ToString());
                customerID = Convert.ToInt16(srd.GetValue(1).ToString());
                cName = srd.GetValue(2).ToString();
                textNo.Text = srd.GetValue(3).ToString();
                textType.Text = srd.GetValue(4).ToString();
                textCost.Text = srd.GetValue(5).ToString();
                textG.Text = srd.GetValue(6).ToString();
                checkIn = Convert.ToDateTime(srd.GetValue(7));
                checkout = Convert.ToDateTime(srd.GetValue(8));
                
            }


            cost = Convert.ToDecimal(textCost.Text);
            roomNum = Convert.ToInt16(textNo.Text);
            bookId = bookingID;
            roomType1 = textType.Text;
            numGuest = Convert.ToInt32(textG.Text);
            numDays = checkout.Subtract(checkIn).Days;
            totalCost = numDays * cost;
            textCost.Text = totalCost.ToString();
            textnumDays.Text = numDays.ToString();
            

            con.Close();



        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                query = "insert into tblPayment (Customer_ID,Booking_ID,Total_Cost,Max_Guest,Payment_Type,Room_Type,Room_No) values(" + customerID + "," + bookId + "," + totalCost + "," + numGuest + ",'" + comboBox1.Text + "','" + roomType1 + "'," + roomNum + ")";
                fn.setData(query, "Thank you " + cName + " Payment Successfull");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        

        }
    }
}
