using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace newproject1
{
    public partial class tutor_appointments : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["tname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                DropDownList dlist = (row.Cells[2].FindControl("DropDownList1") as DropDownList);
                String student_name = row.Cells[1].Text;
                string t_name = Session["tname"].ToString();
                updaterow(student_name, dlist.Text,t_name);



            }
            GridView1.DataBind();

        }
        private void updaterow(String  student_name, String status,String teacher_name)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);

            String updatedata = "Update Appointment set status='" + status + "' where u_name=@student_name and t_name=@teacher_name";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@student_name", student_name);
            cmd.Parameters.AddWithValue("@teacher_name", teacher_name);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}