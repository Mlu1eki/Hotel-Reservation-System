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
using Guna.UI2.WinForms;

namespace MajorProject.Business.AllUserControl
{
    public partial class UC_CustomerRegistration : UserControl
    {
        public UC_CustomerRegistration()
        {
            InitializeComponent();
        }

        function fn = new function();
        String query;

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void UC_CustomerRegistration_Load(object sender, EventArgs e)
        {

        }

        private void guna2TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void guna2TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        
        private void txtRoomType_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        private void txtBed_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }
       
        private void txtRoomNo_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        int rid;
        private void btnAssignRoom_Click(object sender, EventArgs e)
        {
           /* if(txtName.Text != "" && txtMobile.Text != "" && txtGender.Text != "" && txtDob.Text != "" && txtAddress.Text != "" && txtCheckIn.Text != "")
            {
                String name = txtName.Text;
                String email = txtEmail.Text;
                Int64 mobile = Int64.Parse(txtMobile.Text);
                String gender = txtGender.Text;
                String dob = txtDob.Text;
                String address = txtAddress.Text;
                String checkin = txtCheckIn.Text;

                query = "insert into customer (customerName,emailAddress,mobile,gender,dob,address,checkin,roomId) values ('" + name + "','" + email + "'," + mobile + ",'" + gender + "','" + dob + "','" + address + "','" + checkin + "'," + rid + ") update rooms set Booked ='YES' where RoomNo='"+txtRoomNo1.Text+"'";
                fn.setData(query, "Room No. " + txtRoomNo1.Text + " Allocation SuccessFul.");
                clearAll();
            }
            else
            {
                MessageBox.Show("Fill All Fields, All Fields Are Mandatory.", "Information !!", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }*/
        }

        public void clearAll()
        {
            txtName.Clear();
            txtEmail.Clear();
            txtMobile.Clear();
            txtGender.SelectedIndex = -1;
            txtDob.ResetText();
            txtAddress.Clear();
            
        }

        private void UC_CustomerRegistration_Leave(object sender, EventArgs e)
        {
            //clearAll();
        }

        private void txtPrice_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnReg_Click(object sender, EventArgs e)
        {
             if(txtName.Text != "" && txtMobile.Text != "" && txtGender.Text != "" && txtDob.Text != "" && txtAddress.Text != "")
            {
                String name = txtName.Text;
                String email = txtEmail.Text;
                Int64 mobile = Int64.Parse(txtMobile.Text);
                String gender = txtGender.Text;
                String dob = txtDob.Text;
                String address = txtAddress.Text;
                

                query = "insert into customer (customerName,emailAddress,mobile,gender,dob,address) values ('" + name + "','" + email + "','" + mobile + "','" + gender + "','" + dob + "','" + address + "' )";
                fn.setData(query, " " + txtName.Text+" Registration was SuccessFul.");
                clearAll();
            }
            else
            {
                MessageBox.Show("Fill All Fields, All Fields Are Mandatory.", "Information !!", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
    }
}
