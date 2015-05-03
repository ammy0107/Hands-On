using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thesis_project_Repository.Mobile.Admin
{
    public partial class Authentication : System.Web.UI.Page
    {
        private const string ConnectionString =
      "Data Source=itksqlexp8;Initial Catalog=it485project;MultipleActiveResultSets=true;" +
      "Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enable(object sender, EventArgs e)
        {
            var user = Session["username"].ToString();
            var enableAuthMethod = method.SelectedValue;
            //Random r = new Random();
            //int randomString = r.Next(10000, 99999);
            //var enable = "Y";
            DatabaseMethods _databaseMethods = new DatabaseMethods();
            var result = _databaseMethods.EnableAuthentication(user, enableAuthMethod);
            if (result == 1)
            {
                enableStatus.Text = "Two-way authentication has been enabled.";
            }
            else
            {
                enableStatus.Text = "Something went wrong. Please try again later";
            }
        }

        protected void Disable(object sender, EventArgs e)
        {
            var user = Session["username"].ToString();
            DatabaseMethods _databaseMethods = new DatabaseMethods();
            var result = _databaseMethods.DisableAuthentication(user);
            if (result == 1)
            {
                disableStatus.Text = "Two-way authentication has been disabled.";
            }
            else
            {
                disableStatus.Text = "Something went wrong. Please try again later";
            }
        }
    }
}