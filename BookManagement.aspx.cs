using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace OnlineBookStore
{
    public partial class BookManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {

                Label2.Text = Session["userid"].ToString();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            SqlConnection conn = new SqlConnection(DBClass.connectionString);  /////////////////////////////////////////////////////books(Title,Author,Pages,Price,Category,Quantity,Version,Date,image,ownerID)                                                                                   //Items(title, category, unitPrice, quantity, ManDate, ExpiryDate, image, Remarks)

            string query = "insert into books(Title,Author,Pages,Price,Category,Quantity,Version,Date,image,ownerID) values('" + txtTitle.Text + "','" + Label2.Text + "','" + txtPages.Text + "','" + txtPrice.Text + "','" + txtCategory.Text + "','" + txtQty.Text + "','" + txtVersion.Text + "','" + DateTime.Now + "','" + link + "','" + Label2.Text + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label1.Text = "Record is saved";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookManagement.aspx");
        }
    }
}