﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thesis_project_Repository.Mobile.Admin
{
    public partial class AdminUserApproval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                var username = Request.QueryString["username"];
                var connectionString = "Data Source=itksqlexp8;Initial Catalog=it485project;"
                                       + "Integrated Security=true";
                //need to make this 
                var query = "update logininfo set admin_approval = 'Y' where username = '" + username + "';";
                using (var connection = new SqlConnection(connectionString))
                {
                    var command = new SqlCommand(query, connection);
                    try
                    {
                        connection.Open();
                        if (command.ExecuteNonQuery() == 1)
                        {
                            //    Response.Redirect("../Admin/AdminHomePage.aspx");

                            // approvalStatus.Text = "User: " + username + " has been approved ";
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                    finally
                    {
                        connection.Close();
                    }
                }
            }
            else
            {
                //need to test.
                Response.Redirect("../Mobile/Default.aspx", false);
            }

        }

        protected void UserApproval(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;
            approvalwaitinglist.Visible = true;

            approvalList.SelectCommand =
                "SELECT [username] FROM [logininfo] WHERE [ADMIN_APPROVAL] = 'N'";

        }
    }
}