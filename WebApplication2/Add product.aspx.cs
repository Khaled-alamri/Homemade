using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication2
{
    public partial class Add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["phone"].ToString();
            t.Text = a;

            string s = Session["User"].ToString();
            L.Text = s;

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            
            String savePath = @"C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\foodimg\";
          
            if (FileUpload1.HasFile)
            {
                
                String foodimg = proudectName.Text;
                
                savePath += foodimg;
               
                FileUpload1.SaveAs(savePath);
                
                UploadStatusLabel.Text = "Your file was saved as " + foodimg;
            }
            else
            {
                
                UploadStatusLabel.Text = "You did not specify a file to upload.";
            }
            try
            {
                string prodect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(prodect);
            con.Open();
            string sql = "insert into proudect values(@name,@F,@price,@d,@P,@x)";
            SqlCommand com = new SqlCommand(sql, con);
            com.Parameters.AddWithValue("@name",proudectName.Text);
                if (FileUpload1.HasFile && FileUpload1.PostedFile.ContentLength > 0)
                {
                    HttpPostedFile postedFile = FileUpload1.PostedFile;
                    string fileName = Path.GetFileName(postedFile.FileName);
                    string ext = Path.GetExtension(fileName);////

                    FileUpload1.SaveAs(Server.MapPath("foodimg/" + proudectName.Text + ext));
                    com.Parameters.AddWithValue("@F", "foodimg/" + proudectName.Text + ext);
                    com.Parameters.AddWithValue("@price", UnitPrice.Text);
                    com.Parameters.AddWithValue("@d", described.Text);
                    com.Parameters.AddWithValue("@P", t.Text);
                    com.Parameters.AddWithValue("@x", L.Text);


                    com.ExecuteNonQuery();
                    Response.Write("sacssas");
                }
                else
                {
                    Response.Write("failed");
                }
                
            
            con.Close();
        }
            catch (Exception ex)
            {
                Response.Write("Error " + ex.ToString());
            }
}
    }
}