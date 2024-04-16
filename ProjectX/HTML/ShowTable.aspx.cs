using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class ShowTable : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center; color: black;'>";
                msg += "<h3>you are not an admin</h3>";
                msg += "<a href=\"Main.aspx\">[  continue  ]</a>";
                msg += "</div>";
            }
            else
            {
                string fileName = "userDB.mdf";
                string tableName = "usersTbl";

                sqlSelect = "SELECT * FROM " + tableName;

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;
                if (length == 0) msg = "no guests";
                else
                {
                    st += "<tr>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 100px;'>username</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 80px;'>name</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 60px;'>family name</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 140px;'>email</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black;'>birthday</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 60px;'>gender</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 100px;'>cellphone</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 100px;'>living area</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black;'>Playing Sports</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black;'>Reading</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black;'>Drawing</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black;'>Rizzing</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black;'>Eating</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black; width: 100px;'>Password</th>";
                    st += "</tr>";
                }

                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["uName"] + "</td>";
                    st += "<td style = 'border: 1px solid black;'>" + table.Rows[i]["fName"] + "</td>";
                    st += "<td style = 'border: 1px solid black;'>" + table.Rows[i]["lName"] + "</td>";
                    st += "<td style = 'border: 1px solid black; width: 60; text-align:left;'>" + table.Rows[i]["email"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["YearBorn"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["gender"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["prefix"] + table.Rows[i]["phone"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["city"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch1"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch2"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch3"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch4"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch5"] + "</td>";
                    st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["pw"] + "</td>";
                    st += "</tr>";
                }
                msg = "logged in:" + length + "people";
            }
        }
    }
}