using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace newproject1
{
    public partial class Signup : System.Web.UI.Page

   
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            password.Text = string.Empty;
            repeat_password.Text = string.Empty;
            location.Text = string.Empty;
            subjects.Text = string.Empty;
            contact.Text = string.Empty;
            email.Text = string.Empty;
            firstname.Text = string.Empty;
            lastname.Text = string.Empty;
            


     
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int rInt = r.Next(12, 1000);
            String CS = ConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {


                SqlCommand cmd = new SqlCommand("insert into Student values('"  + r.Next(12, 100).ToString() + "','" + email.Text + "','" + password.Text + "','"+ firstname.Text+ lastname.Text + "','" + subjects.Text + "','" + location.Text + "','" + contact.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}