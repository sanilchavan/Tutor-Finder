using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class edit_tutor_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);
            string con1 = ConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString; ;

            try
            {
                string query = "select * from Tutors where name='" + Session["tname"].ToString() + "'";
                using (SqlConnection con2 = new SqlConnection(con1))
                {
                    SqlCommand cmd = new SqlCommand("select * from Tutors where name='" + Session["tname"].ToString() + "'");



                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con2;
                    con2.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        email.Text = sdr["email"].ToString();
                        firstname.Text = Session["tname"].ToString();
                        gender.Text = sdr["gender"].ToString();

                        education.Text = sdr["education"].ToString();
                        fees.Text = sdr["fees"].ToString();
                        type.Text = sdr["type"].ToString();
                        subjects.Text = sdr["subject"].ToString();
                        desc.Text = sdr["description"].ToString();
                        password.Text = sdr["password"].ToString();
                        location.Text = sdr["location"].ToString();
                        imgview.ImageUrl = sdr["image"].ToString();
                    }
                    con2.Close();
                }




            }
            catch (Exception ex)
            {

                Response.Write(ex);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);


            string path = Server.MapPath("TutorImages/");

            if (FileUpload1.HasFile)
            {


                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {



                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "TutorImages/" + FileUpload1.FileName;
                    string ss = "update  Tutors set email=?,image=?,contact=?,education=?,fees=?,type=?,subject=?,description=?,password=?,location=?,gender=? where name='" + Session["tname"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(ss, con);

                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@image", name);
                    cmd.Parameters.AddWithValue("@contact", contact.Text);
                    cmd.Parameters.AddWithValue("@education", education.Text);
                    cmd.Parameters.AddWithValue("@fees", fees.Text);
                    cmd.Parameters.AddWithValue("@type", type.Text);
                    cmd.Parameters.AddWithValue("@subject", subjects.Text);
                    cmd.Parameters.AddWithValue("@description", desc.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    cmd.Parameters.AddWithValue("@location", location.Text);
                    cmd.Parameters.AddWithValue("@gender", gender.Text);




                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }

            }


        }
    }
}

        