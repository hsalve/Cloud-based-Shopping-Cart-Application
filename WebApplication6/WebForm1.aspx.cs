using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;


namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string connectionString;
        public SqlConnection sqlConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            errormessagelbl.Visible = false;
        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            connectionString = @"Data Source=infoinfrasql.database.windows.net;Initial Catalog=ShoppingDB ;User ID=infoinfra;Password=Letin123!";
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            string emailquery = "select count(*) from Customer where emailAddress=@emailAddress";

            using (SqlCommand cmd = new SqlCommand(emailquery, sqlConnection))
            {
        
                    cmd.Parameters.AddWithValue("@emailAddress", txtUserName.Text.Trim());
                    String s = cmd.ExecuteScalar().ToString();
                    if (s== "1")
                    {
                        Session["emailAddress"] = txtUserName.Text.Trim();
                        Response.Redirect("WebForm2.aspx");
                    }
                    else
                    {

                        errormessagelbl.Visible = true;
                    }
                }

            }


        }
    }