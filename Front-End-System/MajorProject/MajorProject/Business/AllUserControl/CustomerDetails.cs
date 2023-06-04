using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MajorProject.Business.AllUserControl
{
    public partial class CustomerDetails : UserControl
    {
        function fn = new function();
        String query;

        public CustomerDetails()
        {
            InitializeComponent();
        }

      /*  private void txtRoomType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(txtSearchBy.SelectedIndex == 0)
            {
                query = "select tblBooking.bookId,customer.customerId,customer.customerName,customer.emailAddress,customer.mobile,customer.gender,customer.dob,customer.address,tblBooking.checkin,tblBooking.checkout,rooms.RoomNo,rooms.RoomType,rooms.NoOfBeds,rooms.Price from tblBooking inner join rooms  on  tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId WHERE rooms.Booked = 'YES'";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
            else if(txtSearchBy.SelectedIndex == 1)
            {
                query = "select customer.customerId,customer.customerName,customer.emailAddress,customer.mobile,customer.gender,customer.dob,customer.address,customer.checkin,customer.checkout,rooms.RoomNo,rooms.RoomType,rooms.NoOfBeds,rooms.Price from customer inner join rooms on customer.RoomID = rooms.RoomID where checkout is null";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
            else if(txtSearchBy.SelectedIndex == 2)
            {
                query = "select customer.customerId,customer.customerName,customer.emailAddress,customer.mobile,customer.gender,customer.dob,customer.address,customer.checkin,customer.checkout,rooms.RoomNo,rooms.RoomType,rooms.NoOfBeds,rooms.Price from customer inner join rooms on customer.RoomID = rooms.RoomID where checkout is not null";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
        }
        */
        int id;
        private void guna2DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (guna2DataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                id = int.Parse(guna2DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
                txtCName.Text = guna2DataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
                txtID.Text = guna2DataGridView1.Rows[e.RowIndex].Cells[5].Value.ToString();

            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            /*if (txtID.Text != "")
            {
                if (MessageBox.Show("Are You Sure?", "Confirmation.", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes) ;
                query = "delete from customer where customerId =" + txtID.Text + "";
                fn.setData(query, "Customer Deleted.");
            }*/


            if (txtID.Text != "" && txtCName.Text != "")
            {

                if (MessageBox.Show("Are You Sure?", "Confirmation", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
                {

                   
            query = "select tblBooking.bookId,customer.customerName,customer.emailAddress,tblBooking.checkin,tblBooking.checkout ,rooms.RoomNo,rooms.RoomType from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId  update rooms set rooms.Booked='NO' where rooms.RoomNo = '" + txtID.Text + "'";
                    fn.setData(query, "Booking Cancelled Successfully");
                    

                }


                else
                {
                    MessageBox.Show("No Customer Selected", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }

              
            }


            query = "select tblBooking.bookId,customer.customerName,customer.emailAddress,tblBooking.checkin,tblBooking.checkout ,rooms.RoomNo,rooms.NoOfBeds,rooms.RoomType from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId where  rooms.Booked = 'YES'";
            DataSet ds = fn.getData(query);
            guna2DataGridView1.DataSource = ds.Tables[0];

            CustomerDetails_Load(this, null);
        }



        private void CustomerDetails_Load(object sender, EventArgs e)
        {

        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {

        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            query = "select tblBooking.bookId,customer.customerName,customer.emailAddress,tblBooking.checkin,tblBooking.checkout ,rooms.RoomNo,rooms.NoOfBeds,rooms.RoomType from tblBooking inner join rooms  on tblBooking.RoomID = rooms.RoomID inner join customer on tblBooking.customerId = customer.customerId where customerName like '" + txtName.Text + "%' AND  rooms.Booked = 'YES'";
            DataSet ds = fn.getData(query);
            guna2DataGridView1.DataSource = ds.Tables[0];
        }
    }
}
