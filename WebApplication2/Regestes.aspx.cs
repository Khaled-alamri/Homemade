using System;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Regestes : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Rgst_Click(object sender, EventArgs e)
        {
            try
            {

                string geraster = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(geraster);
                con.Open();
                string sql = "insert into user12 values(@a,@c,@b,@d,@e,@f)";
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@a", Username.Text);
                com.Parameters.AddWithValue("@c", MobileNumber.Text);
                com.Parameters.AddWithValue("@b", Email.Text);
                com.Parameters.AddWithValue("@d", Addres.Text);
                com.Parameters.AddWithValue("@e", Password.Text);
                com.Parameters.AddWithValue("@f", UserTayp.SelectedValue);
                com.ExecuteNonQuery();
                
                con.Close();
                Response.Redirect("~/Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("Error " + ex.ToString());
            }
        }
    }
}