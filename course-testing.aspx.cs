using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class course_testing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["uname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}