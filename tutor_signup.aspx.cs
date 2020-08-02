using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newproject1
{
    public partial class tutor_signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);


            string path = Server.MapPath("TutorImages/");

            if (FileUpload1.HasFile) {


                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png") {

                    Random r = new Random();
                    int rInt = r.Next(12, 1000);

                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "TutorImages/" + FileUpload1.FileName;
                    string ss = "insert into Tutors values(@email,@image,@contact,@education,@fees,@type,@name,@subject,@description,@password,@location,@gender,@tutor_id,@status)";
                    SqlCommand cmd = new SqlCommand(ss, con);

                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@image", name);
                    cmd.Parameters.AddWithValue("@contact", contact.Text);
                    cmd.Parameters.AddWithValue("@education", education.Text);
                    cmd.Parameters.AddWithValue("@fees", fees.Text);
                    cmd.Parameters.AddWithValue("@type", type.Text);
                    cmd.Parameters.AddWithValue("@name", firstname.Text + lastname.Text);
                    cmd.Parameters.AddWithValue("@subject", subjects.Text);
                    cmd.Parameters.AddWithValue("@description", desc.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    cmd.Parameters.AddWithValue("@location", location.Text);
                    cmd.Parameters.AddWithValue("@gender", gender.Text);
                    cmd.Parameters.AddWithValue("@tutor_id", "T_"+ r.Next(12, 100).ToString());
                    cmd.Parameters.AddWithValue("@status", "pending");





                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }

            }
           


        }
    }
}