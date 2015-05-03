using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.FriendlyUrls; 

namespace Thesis_project_Repository
{
    public class Global : System.Web.HttpApplication
    {

       
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.EnableFriendlyUrls();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Redirect mobile users to the mobile site
            string strUserAgent = Request.UserAgent.ToString().ToLower();
            HttpRequest httpRequest = HttpContext.Current.Request;
            bool request = httpRequest.Browser.IsMobileDevice;
            if (request == true || strUserAgent.Contains("iphone") || strUserAgent.Contains("blackberry")
                || strUserAgent.Contains("mobile") || strUserAgent.Contains("android")
                || strUserAgent.Contains("windows ce") || strUserAgent.Contains("opera mini")
                || strUserAgent.Contains("palm"))
            {
                string path = httpRequest.Url.PathAndQuery;
                bool isOnMobilePage = path.StartsWith("/Mobile/",
                                                      StringComparison.OrdinalIgnoreCase);
                if (!isOnMobilePage)
                {
                    string redirectTo = "~/Mobile/";

                    // Could also add special logic to redirect from certain 
                    // recognised pages to the mobile equivalents of those 
                    // pages (where they exist). For example,
                    // if (HttpContext.Current.Handler is UserRegistration)
                    //     redirectTo = "~/Mobile/Register ";

                    HttpContext.Current.Response.Redirect(redirectTo);
                }
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        public override string GetVaryByCustomString(HttpContext context, string custom)
        {
            if (string.Equals(custom, "isMobileDevice", StringComparison.OrdinalIgnoreCase))
                return context.Request.Browser.IsMobileDevice.ToString();

            return base.GetVaryByCustomString(context, custom);
        }
    }
}