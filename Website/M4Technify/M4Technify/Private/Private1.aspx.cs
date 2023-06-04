using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplicationSecurityDemo2.Private
{
    public partial class Private1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDSCustomer.SelectParameters["emailAddress"].DefaultValue = Context.User.Identity.Name;
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                Response.Redirect("/Private/AddNewCustomer");
            }

            SqlDSHistory.SelectParameters["CustomerId"].DefaultValue = GridView1.Rows[0].Cells[0].Text;
            GridView2.DataBind();

            //GridView3.DataBind();
        }

        protected void SqlDSHistory_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}