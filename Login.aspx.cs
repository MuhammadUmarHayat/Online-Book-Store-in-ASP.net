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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //login button

            string userid = TextBox1.Text;
            string password = TextBox2.Text;
            string userType = DropDownList1.Text;

            if (userType.Equals("Admin")&& userid.Equals("arslan") &&password.Equals("arslan"))
            {
                Session["userid"] = userid;
                Response.Redirect("AdminPannel.aspx");
            }
            else
            {

                string query = "select * from users where userid='"+userid+"' and password='"+password+"' and status='ok'";

                SqlConnection con = new SqlConnection(DBClass.connectionString);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(query,con);
                con.Open();
                da.Fill(dt);
                con.Close();


                if (dt.Rows.Count > 0)
                {
                    Session["userid"] = userid;
                    Response.Redirect("UserPannel.aspx");

                }
                else
                {
                    Label1.Text = "Please enter correct user id and password! ";

                }

            }





        }
    }
}