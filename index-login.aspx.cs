using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class index_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
                username.Text = Session["uname"].ToString();
            }

            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}