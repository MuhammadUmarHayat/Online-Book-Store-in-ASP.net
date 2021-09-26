using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStore
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //  FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            //  string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            string status = "pending";
            SqlConnection conn = new SqlConnection(DBClass.connectionString);                                                                                     //Items(title, category, unitPrice, quantity, ManDate, ExpiryDate, image, Remarks)

            string query = "insert into users(userID,Password,Email,Address,MobileNo,status) values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + status +  "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();

            Label1.Text = "User is registered successfully!";



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");
        }
    }
}