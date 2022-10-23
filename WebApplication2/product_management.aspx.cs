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
    public partial class product_management : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            

        }




        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add product.aspx");
        }

        protected void delete_Command(object sender, CommandEventArgs e)
        {



            string prodect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(prodect);
            con.Open();
            string sql = "Delete from proudect where ProudectID=" + e.CommandArgument.ToString() + "";
            SqlCommand com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)

        {
            foreach (DataListItem item in DataList1.Items)
            {

                TextBox N = item.FindControl("name") as TextBox;
                TextBox P = item.FindControl("price") as TextBox;
                TextBox D = item.FindControl("descrbed") as TextBox;
                FileUpload img = item.FindControl("FileUpload2") as FileUpload;
                LinkButton U = item.FindControl("LinkButton1") as LinkButton;
                Label C = item.FindControl("Label1") as Label;
                Label id = item.FindControl("IDproudect") as Label;
                Image img1 = item.FindControl("Image1") as Image;

                String savePath = @"C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\foodimg\";

                if (img.HasFile)
                {
                    
                    String foodimg = N.Text;

                    savePath += foodimg;

                    img.SaveAs(savePath);

                    C.Text = "Your file was saved as " + foodimg;
                }
                else
                {

                    C.Text = "You did not specify a file to upload.";
                }
                if (img.HasFile)
                {
                    
                        string prodect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                        SqlConnection con = new SqlConnection(prodect);
                        con.Open();
                        string sql = "Update proudect Set  proudectName=@P , [File]=@F , UnitPrice=@U , described=@D  where ProudectID=" + id.Text;
                        SqlCommand com = new SqlCommand(sql, con);

                        com.Parameters.AddWithValue("@P", N.Text);
                       HttpPostedFile postedFile = img.PostedFile;
                       string fileName = Path.GetFileName(postedFile.FileName);
                       string ext = Path.GetExtension(fileName);
                      img.SaveAs(Server.MapPath("foodimg/" + N.Text + ext));
                     com.Parameters.AddWithValue("@F", "foodimg/" + N.Text + ext);
                   

                  
                    com.Parameters.AddWithValue("@U", P.Text);
                        com.Parameters.AddWithValue("@D", D.Text);


                        com.ExecuteNonQuery();
                        Response.Write("don");
                        con.Close();

                   
                }
                else
                {
                    string prodect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                    SqlConnection con = new SqlConnection(prodect);
                    con.Open();
                    string sql = "Update proudect Set  proudectName=@P ,  UnitPrice=@U , described=@D  where ProudectID=" + id.Text;
                    SqlCommand com = new SqlCommand(sql, con);
                    com.Parameters.AddWithValue("@P", N.Text);
                    com.Parameters.AddWithValue("@U", P.Text);
                    com.Parameters.AddWithValue("@D", D.Text);
                    com.ExecuteNonQuery();
                    Response.Write("Don");
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (DataListItem item in DataList1.Items)
            {

                TextBox N = item.FindControl("name") as TextBox;
                TextBox P = item.FindControl("price") as TextBox;
                TextBox D = item.FindControl("descrbed") as TextBox;
                FileUpload img = item.FindControl("FileUpload2") as FileUpload;
                LinkButton U = item.FindControl("LinkButton1") as LinkButton;
                N.Visible = true;
                P.Visible = true;
                D.Visible = true;
                img.Visible = true;
                U.Visible = true;
            }

        }

       
        }
    }

