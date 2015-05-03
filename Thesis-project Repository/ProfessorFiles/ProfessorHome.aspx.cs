using System;
using System.Web.UI;

namespace Thesis_project_Repository.ProfessorFiles
{
    public partial class WebForm1 : Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Convert.ToString(Session["username"]);
            Label1.Text = "Hello " + user;
        }
      
    }
}