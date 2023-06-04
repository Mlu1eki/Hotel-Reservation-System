using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WebApplicationSecurityDemo2.Models;

namespace WebApplicationSecurityDemo2
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RoleActions roleActions = new RoleActions();
            //roleActions.AddRole("TheInnAdmin"); //run once only
           //roleActions.AddUsertoRole("TheInnAdmin", "theinnadmin@gmail.com", "TheInnAdmin"); //run once only
            //roleActions.AddUsertoRole("Admin", "admin@ukzn.ac.za", "adminpass"); //run once only

        }
    }
}