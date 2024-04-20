using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string loginMsg = "";
        public string openPages = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "<h4> Hello, ";

            if (Session["admin"].ToString() == "no")
            {
                loginMsg += Session["fName"].ToString();
                loginMsg += "</h4";

                if (Session["UName"].ToString() == "Guest")
                {
                    //guest login
                    loginMsg += "<h4><a href=\"ChForm.aspx\"> Create new account</a>";
                    loginMsg += "<a href=\"Login.aspx\"> or Log in with account</a></h4>";
                    openPages = "<li><a href=\"AdminLogin.aspx\">AdminLogin</a></li>";
                }
                else
                {
                    //member login
                    loginMsg += "<h4><a href=\"Logout.aspx\"> Logout from account</a></h4>";
                    openPages += "<li style=\"color:lightblue\"><a href=\"EditInfo.aspx\">EditInfo</a></li>";
                    openPages += "<li style=\"color:lightblue\"><a href=\"TableInfo.aspx\">Teams Information</a></li>";
                    openPages += "<li style=\"color:lightblue\"><a href='AdminLogin.aspx'>Admin Login</a></li>";
                }
            }
            else
            {
                //admin login
                loginMsg += "Admin </h4>";
                loginMsg += "<h4><a href=\"Logout.aspx\">Admin Logout</a></h4>";
                openPages += "<li style=\"color:lightblue\"><a href=\"AdminControl.aspx\">AdminControl</a></li>";
            }
        }
    }
}