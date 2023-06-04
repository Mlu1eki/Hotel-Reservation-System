using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationSecurityDemo2.Private
{
    public partial class AddNewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddNewCustomer_Click(object sender, EventArgs e)
        {
            SqlDSAddNewCust.Insert();
            Response.Redirect("/Private/Private1");

        }

        protected void SqlDSInsertNewCust_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}