using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        public string st = "";
        public string MUNum = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                sqlSelect = "SELECT * FROM " + tableName;
                string deleteUserAction = "";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    MUNum = "There is No Users :(";
                }
                else
                {
                    st += "<tr>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Delete</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>User Name</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>First Name</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Last Name</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Email</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Year Born</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>City</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Gender</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Phone Numder</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Playing Sports</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Reading</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Drawing</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Rizzing</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Eating</th>";
                    st += "<th style = 'text-align: center; border: 1px solid black'>Passward</th>";
                    st += "</tr>";



                    for (int i = 0; i < length; i++)
                    {
                        deleteUserAction = table.Rows[i]["uName"].ToString();
                        st += "<tr>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>";
                        st += "<a href = 'DeleteAction.aspx?UName=" + deleteUserAction + "' style= 'color: red' >[Delete]</a>";
                        st += "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["lName"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["email"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["YearBorn"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["gender"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["prefix"] + "-" + table.Rows[i]["phone"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["city"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch1"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch2"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch3"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch4"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["ch5"] + "</td>";
                        st += "<td style = 'text-align: center; border: 1px solid black;'>" + table.Rows[i]["pw"] + "</td>";
                        st += "</tr>";
                    }

                    MUNum = "There are " + length + " users.";
                }
            }
        }
    }
}