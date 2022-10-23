using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class Add_to_cart1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Int64 grandtotal = 0;
                foreach (GridViewRow row in GridView1.Rows)
                {

                    grandtotal = grandtotal + Convert.ToInt64(row.Cells[5].Text) * Convert.ToInt64(row.Cells[4].Text);

                }
                GridView1.FooterRow.Cells[3].Text = "Grand Total";
                GridView1.FooterRow.Cells[4].Text = grandtotal.ToString();
            Label.Text = grandtotal.ToString();
                Session["oo1"] = Label.Text;
           





        }
       
        DataTable dt = new DataTable();
        DataRow Row;
        protected void dd(int rowl)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            object[] PK = { dt.Rows[rowl][0], dt.Rows[rowl][1] };
            Row = dt.Rows.Find(PK);
        }

        protected void delet(int rowl)
        {
            dd(rowl);
            Row.Delete();
            dt = (DataTable)Session["buyitems"];


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            delet(e.RowIndex);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/order.aspx");
           
        }
    }
          
 }
     
  

