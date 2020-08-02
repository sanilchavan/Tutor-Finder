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
    public partial class tutors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["uname"].ToString();
        }

        protected void add_tutor_Click1(string tutor_id,string t_image,string t_name,string t_description,string fees,string education,string location)
        {
            try {
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);
                con.Open();
                string query = "insert into selected_tutors values(@tutor_id,@t_image,@t_name,@username,@t_description,@fees,@education,@location)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@tutor_id", tutor_id);
                cmd.Parameters.AddWithValue("@t_image", t_image);
                cmd.Parameters.AddWithValue("@t_name", t_name);

                cmd.Parameters.AddWithValue("@username", Session["uname"].ToString());
                cmd.Parameters.AddWithValue("@t_description", t_description);
                cmd.Parameters.AddWithValue("@fees", fees);
                cmd.Parameters.AddWithValue("@education", education);
                cmd.Parameters.AddWithValue("@location", location);

                int flag = cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "add_tutor")
            {
                string[] command = e.CommandArgument.ToString().Split(new char[] { ',' });
                string cid = command[0];
                string c_name = command[1];
                string c_teacher = command[2];
                string c_type = command[3];
                string c_desc = command[4];
                string c_rating = command[5];
                string fee = command[6];
                add_tutor_Click1(cid, c_name, c_teacher, c_type, c_desc, c_rating, fee);
                if (Session["uname"] != null)
                {

                    Response.Redirect("savedtutors.aspx?id=" + Session["uname"].ToString());


                }
                else
                {

                    Response.Redirect("login.aspx");

                }

            }
                if (e.CommandName == "contact_tutor")
                {
                    if (Session["uname"] != null)
                    {

                        Response.Redirect("take_appointment.aspx?id=" + Session["uname"].ToString());


                    }
                    else
                    {

                        Response.Redirect("login.aspx");

                    }



                }

            }

        }
    } 
