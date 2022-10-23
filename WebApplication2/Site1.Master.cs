using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null) {
               
                Session["buyitems"] = null;
            }

                

            else if (Session["User"] != null)
            {
                string a = Session["tayp"].ToString();
                t.Text = a;
                if (t.Text == "family    ")
                {
                    f.Visible = true;
                    m.Visible = true;
                    P.Visible = true;

                }
                if (t.Text == "user      ")
                {
                    P.Visible = true;
                    O.Visible = true;
                }
            }
           
            


            

        }


        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Login.aspx");
        }
        private void rep_bind()
        {
            string Search = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(Search);
            string query = "select * from proudect where proudectName like'" + TextBox1.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Search = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(Search);
            con.Open();
            string query = "select * from proudect where proudectName like'" + TextBox1.Text + "%'";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = com.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                rep_bind();
                GridView1.Visible = true;
                TextBox1.Text = "";
                hh.Text = "";
            }
            else
            {
                GridView1.Visible = false;
                hh.Visible = true;
                hh.Text = "The search Term " + TextBox1.Text + " Is Not Available in the Records";
            }
            con.Close();
        }
    }
}