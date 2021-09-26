using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineBookStore
{
    public partial class AddUserAccounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {

                Label1.Text = Session["userid"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "insert into Accounts(UserID,AccountNumber,Amount,Date,BankName) values('"+Label1.Text+"','"+TextBox2.Text+"','"+ TextBox3.Text + "','"+DateTime.Now+"','"+ TextBox1.Text + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label2.Text = "Record is saved";



        }
    }
}