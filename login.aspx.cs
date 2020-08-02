using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace newproject1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "select email from Student where email='"+username.Text+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                string uname1 = cmd.ExecuteScalar().ToString();
                string query1 = "select password from Student where password='" + password.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query1, con);
                string uname2 = cmd2.ExecuteScalar().ToString();
                string query3 = "select name from Student where email='" + username.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                string uname3 = cmd3.ExecuteScalar().ToString();

                if(username.Text==uname1 && password.Text == uname2)
                {
                    Session["uname"] = uname3;
                    Response.Redirect("index-login.aspx");
                    
                } 




              
            }
            catch(Exception ex)
            {
                wrong.Visible = true;
                wrong.Text = "Wrong Username Or Password";
            }
        }
    }
}