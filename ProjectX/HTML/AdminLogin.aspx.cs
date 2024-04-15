using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        public string sqllogin = "";
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string adminUN = Request.Form["adminuName"];
                string adminP = Request.Form["adminPass"];

                string filename = "usersDB.mdf";
                string tableName = "AdminTbl";

                sqllogin = $"SELECT * from {tableName} where AdminUName = '{adminUN}' and AddminPass = '{adminP}'";

                DataTable table = Helper.ExecuteDataTable(filename, sqllogin);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "There is an error in the Admin username or Admin";
                else
                {
                    Session["admin"] = "admin";
                    Session["UName"] = "admin";
                    Session["FName"] = "admin";
                    Response.Redirect("Main.aspx");
                }
            }
        }
    }
}