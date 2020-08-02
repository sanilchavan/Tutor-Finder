using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class index_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_name"] != null)
            {
                username.Text = Session["admin_name"].ToString();
            }

            else
            {
                Response.Redirect("admin_login.aspx");
            }
        }
    }
}