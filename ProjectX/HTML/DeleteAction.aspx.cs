using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class DeleteAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                string fileName = "usersDB.mdf";
                string uName = Request.QueryString["uName"].ToString();

                string sqlDelete = "DELETE FROM usersTbl WHERE uName ='" + uName + "'";

                Helper.DoQuery(fileName, sqlDelete);
                Response.Redirect("DeleteUser.aspx");
            }
        }
    }
}