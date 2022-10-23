using System;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void Loginup_Click(object sender, EventArgs e)
        {
            try
            {
                string a = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(a);
                string sql = "select * from user12 where UsernameID=@L and password=@p";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@L", Username.Text);
                cmd.Parameters.AddWithValue("@p", Password.Text);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                if (r.HasRows)
                {
                    while (r.Read())
                    {
                        Session["User"] = r["UsernameID"].ToString();
                        Session["tayp"] = r["usertype"].ToString();
                        Session["phone"] = r["phone"];
                        Response.Redirect("~/WebForm1.aspx");

                    }
                }
                else
                {
                    
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