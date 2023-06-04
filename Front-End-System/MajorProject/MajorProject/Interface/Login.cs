using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MajorProject.Interface
{
    public partial class Login : Form
    {

        Business.function fn = new Business.function();
        String query;
        public Login()
        {
            InitializeComponent();
        }

        private void guna2TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            query = "select username,pass from loginInfo where username='" + txtUsername.Text + "' and pass = '"+txtPassword.Text+"'";
            DataSet ds = fn.getData(query);
            if(ds.Tables[0].Rows.Count !=0)
            {
                labelError.Visible = false;
                Business.DashBoard dash = new Business.DashBoard();
                this.Hide();
                dash.Show();
            }
            else
            {
                labelError.Visible = true;
                txtPassword.Clear();
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void guna2CirclePictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
