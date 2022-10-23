using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["User"].ToString();
            string pp = Session["phone"].ToString();
            string oo = Session["oo1"].ToString();
            t.Text = a ;
            p.Text = pp;
            oo1.Text = oo;
           

        }

      

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string b = "Been sent";
            s1.Text = b;
            DataTable dt = new DataTable("C");
            dt = (DataTable)Session["buyitems"];
            string pn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\wwsse\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(pn);
            con.Open();
            string sql = "insert into o1 (price, Quantity, proudectName, comment, phone, UsernameID, Username_f, order_stats, total) values(@f,@p,@d,@w,@q,@g,@v,@m,@oo)";
            SqlCommand com = new SqlCommand(sql, con);
            for (int x = 0;x < dt.Rows.Count; x++)
            {
               
                com.Parameters.AddWithValue("@f", dt.Rows[x]["e"].ToString());
                com.Parameters.AddWithValue("@p", dt.Rows[x]["quantity"].ToString());
                com.Parameters.AddWithValue("@d", dt.Rows[x]["d"].ToString());
                com.Parameters.AddWithValue("@w", TextBox2.Text);
                com.Parameters.AddWithValue("@q", p.Text);
                com.Parameters.AddWithValue("@g", t.Text);
                com.Parameters.AddWithValue("@v", dt.Rows[x]["UD"].ToString());
                com.Parameters.AddWithValue("@m", s1.Text);
                com.Parameters.AddWithValue("@oo", oo1.Text);


            }
            com.ExecuteNonQuery();
            Response.Write("");
            con.Close();


        }
    }
    }

    