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
                loginMsg += Session["fname"].ToString();
                loginMsg += "</h4";

                if (Session["UName"].ToString() == "Guest")
                {
                    loginMsg += "<h4><a href=\"ChForm.aspx\"> Create new account</a>";
                    loginMsg += "<a href=\"Login.aspx\"> or Log in with account</a></h4>";
                    openPages = "<li style=\"color:lightblue\"><a href=\"AdminLogin.aspx\">AdminLogin</a></li>";
                }
                else
                {
                    loginMsg += "<h4><a href = 'Logout.aspx'> Log out from account</a></h4>";
                    openPages = "<li style=\"color:lightblue\"><a href='WritersWMP.aspx'>Writers</a></li>";
                    openPages += "<li style=\"color:lightblue\"><a href='EditUserInfo.aspx'>Your Info</a></li>";
                    openPages += "<li style=\"color:lightblue\"><a href='Chat.aspx'>Chat</a></li>";
                    openPages += "<li style=\"color:lightblue\"><a href='AdminLogin.aspx'>Admin Login</a></li>";
                }
            }
            else
            {
                loginMsg += "Admin </h4>";
                loginMsg += "<h4><a herf= 'AdminLogout.aspx'>Admin Logout</a></h4>";
                openPages = "<li style=\"color:lightblue\"><a href= 'WritersWMP.aspx'>writers</a></li>";
                openPages += "<li style=\"color:lightblue\"><a href= 'Chat.aspx'>Chat</a></li>";
                openPages += "<li style=\"color:lightblue\"><a href= 'Queries.aspx'>Admin</a></li>";
            }
        }
    }
}