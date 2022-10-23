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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["User"] == null)
            {
                Button1.Visible = false;
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable("C");
            DataRow dr;
            dt.Columns.Add("a");
            dt.Columns.Add("id");
            dt.Columns.Add("b");
            dt.Columns.Add("d");
            dt.Columns.Add("e");
            dt.Columns.Add("quantity");
            dt.Columns.Add("Grand Total");
            dt.Columns.Add("UD");

            foreach (DataListItem item in DataList1.Items)
            {
                Label id = item.FindControl("Label1") as Label;
                CheckBox selectec = item.FindControl("CheckBox1") as CheckBox;
                TextBox textBox1 = item.FindControl("TextBox1") as TextBox;

                

                if (selectec.Checked)
                {
                   
                       
                        if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from proudect where ProudectID=" + id.Text;
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["a"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["ProudectID"].ToString();
                        dr["b"] = ds.Tables[0].Rows[0]["File"].ToString();
                        dr["d"] = ds.Tables[0].Rows[0]["proudectName"].ToString();
                        dr["e"] = ds.Tables[0].Rows[0]["UnitPrice"].ToString();
                        dr["quantity"] = textBox1.Text;
                        Int64 price = Convert.ToInt64(ds.Tables[0].Rows[0]["UnitPrice"].ToString());
                        Int64 quantity = Convert.ToInt64(textBox1.Text);
                        Int64 totalprice = price * quantity;
                        dr["Grand Total"] = totalprice;
                        dr["UD"] = ds.Tables[0].Rows[0]["UsernameID"].ToString();

                        dt.Rows.Add(dr);
                        Session["buyitems"] = dt;
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khaled\OneDrive\Desktop\WebApplication22\WebApplication2\App_Data\Database.mdf;Integrated Security=True"; ;
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from proudect where ProudectID=" + id.Text;
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["a"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["ProudectID"].ToString();
                        dr["b"] = ds.Tables[0].Rows[0]["File"].ToString();
                        dr["d"] = ds.Tables[0].Rows[0]["proudectName"].ToString();
                        dr["e"] = ds.Tables[0].Rows[0]["UnitPrice"].ToString();
                        dr["quantity"] = textBox1.Text;
                        Int64 price = Convert.ToInt64(ds.Tables[0].Rows[0]["UnitPrice"].ToString());
                        Int64 quantity = Convert.ToInt64(textBox1.Text);
                        Int64 totalprice = price * quantity;
                        dr["Grand Total"] = totalprice;
                        dr["UD"] = ds.Tables[0].Rows[0]["UsernameID"].ToString();
                        dt.Rows.Add(dr);
                        
                        Session["buyitems"] = dt;

                    }
                }

            }
            Response.Redirect("~/Add to cart.aspx");
        }
    }
}