using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MajorProject.Business
{
    public partial class Family : Form
    {
        public Family()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {
            Double Price = 2500;
            foreach (DataGridView row in this.dataGridView1.SelectedRows)
            {
                if ((bool)(row.SelectedCells[0].Value = "Budget Room"))
                {
                    row.SelectedCells[1].Value = Double.Parse((String)row.SelectedCells[1].Value + 1);
                    row.SelectedCells[2].Value = Double.Parse((String)row.SelectedCells[1].Value) * Price;

                }
                dataGridView1.Rows.Add("Budget", "1", Price);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            


        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Family_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'groupPmb5DataSet.rooms' table. You can move, or remove it, as needed.
            this.roomsTableAdapter.Fill(this.groupPmb5DataSet.rooms);

        }
    }
}
