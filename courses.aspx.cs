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
    public partial class test : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["uname"].ToString();
        }

        protected void add_course_Click1(string cid,string c_name,string c_teacher,string c_type,string c_description,string c_rating,string c_fee,string c_participants,string image)
        {
            
            try
            {

                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);
                con.Open();
                string query = "insert into selected_courses1 values(@username,@cid,@c_name,@c_teacher,@c_type,@c_description,@c_rating,@c_fee,@c_participants,@image)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@username",Session["uname"].ToString());
                cmd.Parameters.AddWithValue("@cid",cid);
                cmd.Parameters.AddWithValue("@c_name", c_name);
                cmd.Parameters.AddWithValue("@c_teacher", c_teacher);
                cmd.Parameters.AddWithValue("@c_type", c_type);
                cmd.Parameters.AddWithValue("@c_description", c_description);
                cmd.Parameters.AddWithValue("@c_rating", c_rating);
                cmd.Parameters.AddWithValue("@c_fee", c_fee);
                cmd.Parameters.AddWithValue("@c_participants", c_participants);
                cmd.Parameters.AddWithValue("@image", image);


                int flag =cmd.ExecuteNonQuery();
                con.Close();


            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "add_course")
            {
                string[] command = e.CommandArgument.ToString().Split(new char[] { ',' });
                string cid = command[0];
                string c_name = command[1];
                string c_teacher = command[2];
                string c_type = command[3];
                string c_desc = command[4];
                string c_rating = command[5];
                string fee = command[6];
                string parti = command[7];
                string image = command[8];
                add_course_Click1(cid, c_name, c_teacher, c_type, c_desc, c_rating, fee, parti,image);
                if (Session["uname"] != null)
                {

                    Response.Redirect("saved_courses.aspx?uid=" + Session["uname"].ToString());


                }
                else
                {

                    Response.Redirect("login.aspx");


                }




            }
            if (e.CommandName == "view_course")
            {
                string[] command = e.CommandArgument.ToString().Split(new char[] { ',' });
                string cid = command[0];


                Response.Redirect("course-testing.aspx?cid=" + cid);


            }


        }
    }
}