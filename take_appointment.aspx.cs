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
    public partial class take_appointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            username.Text = Session["uname"].ToString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible) {

                Calendar1.Visible = false;
            }
            else {

                Calendar1.Visible = true;


            }
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
             string ss = "insert into Appointment values(@u_name,@t_name,@email,@location,@type,@time,@message,@date,@gender,@status)";
                SqlCommand cmd = new SqlCommand(ss, con);

                cmd.Parameters.AddWithValue("@u_name", Session["uname"].ToString());
                cmd.Parameters.AddWithValue("@t_name", DropDownList1.SelectedValue.ToString());

                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@location", location.Text);
                cmd.Parameters.AddWithValue("@type", type.Text);
                cmd.Parameters.AddWithValue("@time",DropDownList2.SelectedValue.ToString() );
                cmd.Parameters.AddWithValue("@message", desc.Text);
                cmd.Parameters.AddWithValue("@date", Calendar1.SelectedDate.ToString("dd/MM/yyyy"));
                cmd.Parameters.AddWithValue("@gender", gender.Text);
            cmd.Parameters.AddWithValue("@status", "pending");


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("view_appointments.aspx?id" +Session["uname"].ToString());

        }
    }
}