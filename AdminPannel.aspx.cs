using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStore
{
    public partial class AdminPannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {

                Label5.Text = Session["userid"].ToString();
            }

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