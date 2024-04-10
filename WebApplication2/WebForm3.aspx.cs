using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            // Retrieve input values from textboxes
            string username = TextBox1.Text;
            string oldPassword = TextBox2.Text;
            string newPassword = TextBox3.Text;

            // Establish a connection to the SQL Server database
            string connectionString = @"Data Source=DESKTOP-1BAQBB9\SQLEXPRESS;Initial Catalog=web_application;Integrated Security=True;TrustServerCertificate=true;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the database connection
                connection.Open();

                // Check if the old password matches the one in the database for the given username
                string query = "SELECT COUNT(*) FROM NEW_USER WHERE USERNAME = @Username AND PASSWORD = @OldPassword";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@OldPassword", oldPassword);
                int count = (int)command.ExecuteScalar();

                // If old password matches, update the password
                if (count > 0)
                {
                    query = "UPDATE NEW_USER SET PASSWORD = @NewPassword WHERE USERNAME = @Username";
                    command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@NewPassword", newPassword);
                    command.Parameters.AddWithValue("@Username", username);
                    command.ExecuteNonQuery();

                    // Close the connection
                    connection.Close();

                    // Provide feedback to the user
                    Label1.Text = "Password updated successfully.";
                }
                else
                {
                    // Close the connection
                    connection.Close();

                    // Provide feedback to the user
                    Label1.Text = "Invalid username or old password.";
                }
            }
        }
    }
}