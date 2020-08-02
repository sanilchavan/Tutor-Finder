using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class tutor_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

            

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                string query = "select email from Tutors where email=@email and status=@status";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@email",t1.Text);
                cmd.Parameters.AddWithValue("@status", "confirmed");
                string uname1 = cmd.ExecuteScalar().ToString();
                string query1 = "select password from Tutors where password=@password and status=@status";
                SqlCommand cmd2 = new SqlCommand(query1, con);
                cmd2.Parameters.AddWithValue("@password", t2.Text);
                cmd2.Parameters.AddWithValue("@status", "confirmed");
                string uname2 = cmd2.ExecuteScalar().ToString();
                string query3 = "select name from Tutors where email='" + t1.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                string uname3 = cmd3.ExecuteScalar().ToString();

                if (t1.Text == uname1 && t2.Text == uname2)
                {
                    Session["tname"] = uname3;
                    Response.Redirect("tutor-index.aspx");

                }
                else {
                   

                }
            }


            catch (Exception ex)
            {
                wrong.Visible = true;
                wrong.Text = "Wrong username or password";


            }
        }
    }
    } 