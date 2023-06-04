using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MajorProject
{
    public partial class MainMenu : Form
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
            
        }

        private void homeToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void logToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Interface.Login log = new Interface.Login();
            log.MdiParent = this;
            log.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            foreach (Control ctr in this.Controls)
            {
                if(ctr is MdiClient)
                {
                    ctr.BackColor = Color.White;
                }
            }
        }



        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void toolStripMenuItem12_Click(object sender, EventArgs e)
        {

        }

        private void familyRoomToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Business.Family fam = new Business.Family();
            fam.MdiParent = this;
            fam.Show();

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void semiSelfCateringToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Business.Family fam = new Business.Family();
            fam.MdiParent = this;
            fam.Show();

        }

        private void budgetRoomToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Business.Family fam = new Business.Family();
            fam.MdiParent = this;
            fam.Show();

        }

        private void standardRoomToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Business.Family fam = new Business.Family();
            fam.MdiParent = this;
            fam.Show();

        }
    }
}
