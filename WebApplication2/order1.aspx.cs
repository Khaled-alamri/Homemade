using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class order1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string b = "it was received";
            s2.Text = b;
            foreach (DataListItem item in DataList1.Items)
            {

                Button b1 = item.FindControl("b1") as Button;
                Label id = item.FindControl("order_idLabel") as Label;
                

                string prodect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(prodect);
                con.Open();
                string sql = "Update o1 Set order_stats=@P  where order_id =" + id.Text;
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@P", s2.Text);
                com.ExecuteNonQuery();
                con.Close();

            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string b = "it is sent";
            s3.Text = b;
            foreach (DataListItem item in DataList1.Items)
            {

                Button b1 = item.FindControl("b1") as Button;
                Label id = item.FindControl("order_idLabel") as Label;
                

                string prodect = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(prodect);
                con.Open();
                string sql = "Update o1 Set order_stats=@P  where order_id =" + id.Text;
                SqlCommand com = new SqlCommand(sql, con);
                com.Parameters.AddWithValue("@P", s3.Text);
                com.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}