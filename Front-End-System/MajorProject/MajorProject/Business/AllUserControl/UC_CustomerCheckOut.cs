using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace MajorProject.Business.AllUserControl
{
    public partial class UC_CustomerCheckOut : UserControl
    {
        function fn = new function();
        String query;
        DateTime local = DateTime.Now;
        public UC_CustomerCheckOut()
        {
            InitializeComponent();
        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            //query = "select customer.customerId,customer.customerName,customer.emailAddress,customer.mobile,customer.gender,customer.dob,customer.address,customer.checkin,rooms.RoomNo,rooms.RoomType,rooms.NoOfBeds,rooms.Price from customer inner join rooms on customer.RoomID = rooms.RoomID where customerName like '" + txtName.Text + "%'  and chekout='NO'";
            query = "select customer.customerId,customer.customerName,customer.emailAddress,customer.gender,customer.address from customer where customerName like '" + txtName.Text + "%'";
            DataSet ds = fn.getData(query);
            guna2DataGridView1.DataSource = ds.Tables[0];
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void UC_CustomerCheckOut_Load(object sender, EventArgs e)
        {

            txtc1.MinDate = DateTime.Now.Date;
            txtc2.MinDate = DateTime.Now.AddDays(1).Date;

            //query = "select customer.customerId,customer.customerName,customer.emailAddress,customer.mobile,customer.gender,customer.dob,customer.address,customer.checkin,rooms.RoomNo,rooms.RoomType,rooms.NoOfBeds,rooms.Price from customer inner join rooms on  customer.RoomID = rooms.RoomID where chekout = 'NO'";
            query = "select customer.customerId,customer.customerName,customer.gender,customer.mobile from customer";
            DataSet ds = fn.getData(query);
            guna2DataGridView1.DataSource = ds.Tables[0];

            query = "select tblBooking.bookId,customer.customerName,customer.emailAddress,tblBooking.checkin,tblBooking.checkout ,rooms.RoomNo,rooms.RoomType  from tblBooking inner join rooms  on  tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId ";
            DataSet ds2 = fn.getData(query);
            guna2DataGridView2.DataSource = ds2.Tables[0];


        }

        int id;
        private void guna2DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if(guna2DataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                id = int.Parse(guna2DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
                txtN.Text = guna2DataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
                txtId.Text = guna2DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();

            }
        }


       
        private void btnCheckOut_Click(object sender, EventArgs e)
        {
            /*if(txtCName.Text != "")
            {
                if(MessageBox.Show("Are You Sure?", "Confirmation", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning)==DialogResult.OK)
                {
                    String cdate = txtCheckOuDate.Text;
                    query = "update customer set chekout = 'YES', checkout='"+cdate+"' where customerId="+id+" update rooms set Booked='NO' where RoomNo = '"+txtCus.Text+"'";
                    fn.setData(query, "Check Out Successfully");
                    UC_CustomerCheckOut_Load(this, null);

                }

            }
            else
            {
                MessageBox.Show("No Customer Selected", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }*/
            
             if(txtN.Text!= "" && txtId.Text != "" && txtG.Text != "" && txtc2.Text != "" && txtc2.Text != "")
            {
                if (DateTime.Parse(txtc1.Text).Date.CompareTo(DateTime.Parse(txtc2.Text).Date) >= 0){
                    MessageBox.Show("Checkout date must be after the checkin date!", "Dates", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                
                Int64 guest = Int64.Parse(txtG.Text);
                String name = txtN.Text;
                Int64 cusId = Int64.Parse(txtId.Text);
                String checkin = txtc1.Text;
                String checkout = txtc2.Text;

                query = "insert into tblBooking (bookNumGuest,checkin,checkout,customerId,RoomID) values (" + guest + ",'" + checkin+ "','" + checkout+ "'," +cusId+ "," + rid +") update rooms set Booked ='YES' where RoomNo='"+txtRoomN.Text+"'";
                fn.setData(query, "Reservation  SuccessFull.");
                Payment pay = new Payment();
                pay.Show();

                clearAll();

                
                


            }
            else
            {
                MessageBox.Show("Fill All Fields, All Fields Are Mandatory.", "Information !!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                

            }


            UC_CustomerCheckOut_Load(this, null);

        }

        public void clearAll()
        {
            txtN.Clear();
            txtName.Clear();
            txtId.Clear();
            txtc2.ResetText();
            txtG.Clear();


        }

        public void setComboBox(String query, ComboBox combo)
        {
            SqlDataReader sdr = fn.getForCombo(query);
            while (sdr.Read())
            {
                for (int i = 0; i < sdr.FieldCount; i++)
                {
                    combo.Items.Add(sdr.GetString(i));
                }
            }
            sdr.Close();
        }


        private void UC_CustomerCheckOut_Leave(object sender, EventArgs e)
        {
            clearAll();
        }

        private void txtBed_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRoomType.SelectedIndex = -1;
            txtRoomN.Items.Clear();
        }

        private void txtRoomType_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRoomN.Items.Clear();
            txtPrice.Clear();
            query = "select roomNo from rooms where NoOfBeds = '" + txtBed.Text + "' and RoomType='" + txtRoomType.Text + "' and Booked= 'NO'";
            setComboBox(query, txtRoomN);
        }

        int rid;

        private void guna2ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            query = "select Price,RoomID from rooms where RoomNo = '" + txtRoomN.Text + "'";
            DataSet ds = fn.getData(query);
            txtPrice.Text = ds.Tables[0].Rows[0][0].ToString();
            rid = int.Parse(ds.Tables[0].Rows[0][1].ToString());
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void txtCus_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtCName_TextChanged(object sender, EventArgs e)
        {

        }

        private void guna2DateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            if(txtc1.Value.Date < local)
            {
                MessageBox.Show("Invalid Date.", "Information !!", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void guna2TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void guna2DataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

             query = "select tblBooking.bookId,customer.customerName,customer.emailAddress,tblBooking.checkin,tblBooking.checkout ,rooms.RoomNo,rooms.RoomType from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId";
            DataSet ds = fn.getData(query);
            guna2DataGridView2.DataSource = ds.Tables[0];

            //if (guna2DataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            //{
            //    id = int.Parse(guna2DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
            //    txtN.Text = guna2DataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            //    txtId.Text = guna2DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString();

            //}

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void txtc2_ValueChanged(object sender, EventArgs e)
        {
            //if (txtc2.Value.Date < local)
            //{
            //    MessageBox.Show("Invalid Date.", "Information !!", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //}
        }

        private void txtPrice_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
