using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class DeleteAllAction : System.Web.UI.Page
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

                if ((int)Session["Delete"] != 0)
                {
                    string sqlDelete = "";
                    string Value = "";
                    switch ((int)Session["Delete"])
                    {
                        case 1:
                            Value = Request.QueryString["FName"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE FName LIKE '%" + Value + "%'";
                            break;
                        case 2:
                            Value = Request.QueryString["LName"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE LName LIKE '%" + Value + "%'";
                            break;
                        case 3:
                            Value = Request.QueryString["Email"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Email LIKE '%" + Value + "%'";
                            break;
                        case 4:
                            Value = Request.QueryString["YearBorn"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE YearBorn ='" + Value + "'";
                            break;
                        case 5:
                            Value = Request.QueryString["Gender"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Gender ='" + Value + "'";
                            break;
                        case 6:
                            Value = Request.QueryString["Prefix"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Prefix ='" + Value + "'";
                            break;
                        case 7:
                            Value = Request.QueryString["Phone"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE Phone LIKE '%" + Value + "%'";
                            break;
                        case 8:
                            Value = Request.QueryString["City"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE City ='" + Value + "'";
                            break;
                        case 9:
                            Value = Request.QueryString["ch1"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE ch1 ='" + Value + "'";
                            break;
                        case 10:
                            Value = Request.QueryString["ch2"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE ch2 ='" + Value + "'";
                            break;
                        case 11:
                            Value = Request.QueryString["ch3"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE ch3 ='" + Value + "'";
                            break;
                        case 12:
                            Value = Request.QueryString["ch4"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE ch4 ='" + Value + "'";
                            break;
                        case 13:
                            Value = Request.QueryString["ch5"].ToString();
                            sqlDelete = "DELETE FROM usersTbl WHERE ch5 ='" + Value + "'";
                            break;
                    }

                    Helper.DoQuery(fileName, sqlDelete);
                    Response.Redirect("ShowTable.aspx");
                }
            }
        }
    }
}