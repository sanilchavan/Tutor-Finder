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
    public partial class add_course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Session["tname"].ToString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mydbConnectionString1"].ConnectionString);


            string path = Server.MapPath("courseimages/");
            Random r = new Random();
            int rInt = r.Next(12, 1000); //for ints

            if (FileUpload1.HasFile)
            {


                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {



                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "courseimages/" + FileUpload1.FileName;
                    string ss = "insert into Courses values(@c_id,@c_name,@c_teacher,@c_type,@c_desc,@c_rating,@c_fee,@c_parti,@image)";
                    SqlCommand cmd = new SqlCommand(ss, con);

                    cmd.Parameters.AddWithValue("@c_id", "CS0"+ r.Next(12, 100).ToString());
                    cmd.Parameters.AddWithValue("@c_name",  coursename.Text);
                    cmd.Parameters.AddWithValue("@c_teacher",t_name.Text);
                    cmd.Parameters.AddWithValue("@c_type", c_type.Text);
                    cmd.Parameters.AddWithValue("@c_desc", c_desc.Text);
                    cmd.Parameters.AddWithValue("@c_rating", Ratings.Text);
                    cmd.Parameters.AddWithValue("@c_fee", fees.Text);
                    cmd.Parameters.AddWithValue("@c_parti", parti.Text);
                    cmd.Parameters.AddWithValue("@image", name);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }

            }

        }
    }
}