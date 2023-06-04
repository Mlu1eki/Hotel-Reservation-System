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
    public partial class UC_AddRoom : UserControl
    {
        function fn = new function();
        string query;
        public UC_AddRoom()
        {
            InitializeComponent();
        }

        private void guna2TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void guna2ComboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void UC_AddRoom_Load(object sender, EventArgs e)
        {

            query = "select * from rooms";
           DataSet ds= fn.getData(query);
            DataGridView1.DataSource = ds.Tables[0];
        }

        private void btnAddRoom_Click(object sender, EventArgs e)
        {
            if(txtRoomNo.Text != "" && txtType.Text != "" && txtBed.Text != "" && txtPrice.Text != "")
            {
                int num;
                if (!int.TryParse(txtRoomNo.Text, out num))
                {
                    MessageBox.Show("Invalid Room No. The Room Number Must be a Number.", "Warning !!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                int num2;
                if (!int.TryParse(txtPrice.Text, out num2))
                {
                    MessageBox.Show("The Price Must Be a Number", "Warning !!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                String roomno = txtRoomNo.Text;
                String type = txtType.Text;
                String bed = txtBed.Text;
                Int64 price = Int64.Parse(txtPrice.Text);

                query = "insert into rooms(RoomNo,RoomType,NoOfBeds,Price) values ('"+ roomno +"','"+type+"','"+bed+"',"+price+")";
                fn.setData(query, "Room Added.");

                UC_AddRoom_Load(this, null);
                clearAll();

            }
            else
            {
                MessageBox.Show("Fill All Fields.", "Warning !!", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
        }


        public void clearAll()
        {
            txtRoomNo.Clear();
            txtType.SelectedIndex = -1;
            txtBed.SelectedIndex = -1;
            txtPrice.Clear();

        }

        private void UC_AddRoom_Leave(object sender, EventArgs e)
        {
            clearAll();
        }

        private void UC_AddRoom_Enter(object sender, EventArgs e)
        {
            UC_AddRoom_Load(this, null);
        }

        private void DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
