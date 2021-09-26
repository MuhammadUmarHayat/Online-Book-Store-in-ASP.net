using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineBookStore
{
    public partial class UserPannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["userid"] != null)
                {

                    Label1.Text = Session["userid"].ToString();


                    string query = "select * from books";

                    SqlConnection con = new SqlConnection(DBClass.connectionString);
                    //Open database connection to connect to SQL Server
                    con.Open();
                    //Data table is used to bind the resultant data
                    DataTable dt = new DataTable();
                    // Create a new data adapter based on the specified query.
                    SqlDataAdapter da = new SqlDataAdapter(query, con);

                    da.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                    DataTable dt1 = new DataTable();
                    dt1 = (DataTable)Session["buyitems"];
                    if (dt1 != null)
                    {

                        Label2.Text = dt1.Rows.Count.ToString();
                    }
                    else
                    {
                        Label2.Text = "0";

                    }

                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {



                if (e.CommandName == "addtocart")
                {

                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    Response.Redirect("addtocart2.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //search button
            string title = TextBox1.Text;

            string query = "select * from books where title='"+title+"'";

            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dt = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);

            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "select * from books";

            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dt = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);

            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}