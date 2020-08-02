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
    public partial class admin_view_tutors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {

        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                DropDownList dlist = (row.Cells[2].FindControl("DropDownList1") as DropDownList);
                String email = row.Cells[0].Text;
                updaterow(email, dlist.Text);



            }
            GridView1.DataBind();
        }
        private void updaterow(String t_email, String status)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);

            String updatedata = "Update Tutors set status='" + status + "' where email=@t_email";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@t_email", t_email);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

    }
}