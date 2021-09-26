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
    public partial class ViewAllBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //get image from table

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