using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class tutor_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tname"] != null)
            {
                username.Text = Session["tname"].ToString();
            }

            else
            {
                Response.Redirect("tutor-login.aspx");
            }
        }
    }
    }
