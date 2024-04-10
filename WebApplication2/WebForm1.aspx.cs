using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;

            //estabhlish a connection in sql
            string connectionString = @"Data Source=DESKTOP-1BAQBB9\SQLEXPRESS;Initial Catalog=web_application;Integrated Security=True;TrustServerCertificate=true;";




            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(*) FROM NEW_USER WHERE USERNAME = @Username AND PASSWORD = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                int count = (int)command.ExecuteScalar();

                //close connection
                connection.Close();

                if (count > 0) {
                    Response.Redirect("https://initiate.alphacoders.com/images/102/cropped-1920-1080-1021182.jpg?3225");
                }

                else
                {
                    //display and error
                    Label1.Text = "Invalid credentials";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Redirect to another web form
            Response.Redirect("/WebForm3.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/WebForm2.aspx");
        }
    }
}