using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class DeleteAll : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        public string stdelete = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                if (Request.Form["submit"] != null)
                {

                    string hob = "";
                    // وضع اسم الحقل و قيمة الحقل في متغيرات
                    string field = Request.Form["field"];
                    string value = Request.Form["value"];

                    string fileName = "usersDB.mdf";
                    string tableName = "usersTbl";
                    string sqlSelect = "";

                    if (field == "YearBorn" || field == "gender" || field == "prefix" || field == "city")
                    {
                        sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = '" + value + "');";
                        sql = "How many users have " + value + " in the " + field;
                        if (field == "YearBorn")
                            Session["Delete"] = 4;
                        else if (field == "gender")
                            Session["Delete"] = 5;
                        else if (field == "prefix")
                            Session["Delete"] = 6;
                        else if (field == "city")
                            Session["Delete"] = 8;
                        stdelete = "<a href = 'DeleteAllAction.aspx?" + field + "=" + value + "' style= 'color: red' >[Delete]</a>";
                    }
                    else
                    {
                        if (field == "Hobby")
                        {
                            var val = int.Parse(value);
                            switch (val)
                            {
                                case 1:
                                    field = "ch1";
                                    Session["Delete"] = 9;
                                    hob = "Playing Sports"; break;
                                case 2:
                                    field = "ch2";
                                    Session["Delete"] = 10;
                                    hob = "Reading"; break;
                                case 3:
                                    field = "ch3";
                                    Session["Delete"] = 11;
                                    hob = "Drawing"; break;
                                case 4:
                                    field = "ch4";
                                    Session["Delete"] = 12;
                                    hob = "Rizzing"; break;
                                case 5:
                                    field = "ch5";
                                    Session["Delete"] = 13;
                                    hob = "Eating"; break;
                            }
                            sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " = 'T');";
                            sql = "How many users have " + hob + " in the Hobby ";
                            stdelete = "<a href = 'DeleteAllAction.aspx?" + field + "='T'' style= 'color: red' >[Delete]</a>";
                        }
                        else
                        {
                            sqlSelect = "SELECT * FROM " + tableName + " where (" + field + " like '%" + value + "%');";
                            sql = "How many users have " + value + " in the " + field;
                            if (field == "fName")
                                Session["Delete"] = 1;
                            else if (field == "lName")
                                Session["Delete"] = 2;
                            else if (field == "email")
                                Session["Delete"] = 3;
                            else if (field == "phone")
                                Session["Delete"] = 7;
                            stdelete = "<a href = 'DeleteAllAction.aspx?" + field + "=" + value + "' style= 'color: red' >[Delete]</a>";
                        }

                    }

                    DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                    int length = table.Rows.Count;
                    if (length == 0)
                    {
                        msg = "There is No users with this attribute.";
                    }
                    else
                    {
                        st += "<table style= 'border:double; border-color:goldenrod; height:auto'>";
                        st += "<tr>";
                        st += "<th class = 'table1'>User Name</th>";
                        st += "<th class = 'table2'>First Name</th>";
                        st += "<th class = 'table3'>Last Name</th>";
                        st += "<th class = 'table4'>Email</th>";
                        st += "<th class = 'table5'>Year Born</th>";
                        st += "<th class = 'table6'>City</th>";
                        st += "<th class = 'table7'>Gender</th>";
                        st += "<th class = 'table8'>Phone Numder</th>";
                        st += "<th class = 'table9'>Playing Sports</th>";
                        st += "<th class = 'table10'>Reading</th>";
                        st += "<th class = 'table11'>Drawing</th>";
                        st += "<th class = 'table12'>Rizzing</th>";
                        st += "<th class = 'table13'>Edging</th>";
                        st += "<th class = 'table14'>Passward</th>";
                        st += "</tr>";



                        for (int i = 0; i < length; i++)
                        {
                            st += "<tr>";
                            st += "<td class = 'table1'>" + table.Rows[i]["uName"] + "</td>";
                            st += "<td class = 'table2'>" + table.Rows[i]["fName"] + "</td>";
                            st += "<td class = 'table3'>" + table.Rows[i]["lName"] + "</td>";
                            st += "<td class = 'table4'>" + table.Rows[i]["email"] + "</td>";
                            st += "<td class = 'table5'>" + table.Rows[i]["YearBorn"] + "</td>";
                            st += "<td class = 'table7'>" + table.Rows[i]["gender"] + "</td>";
                            st += "<td class = 'table8'>" + table.Rows[i]["prefix"] + "-" + table.Rows[i]["phone"] + "</td>";
                            st += "<td class = 'table6'>" + table.Rows[i]["city"] + "</td>";
                            st += "<td class = 'table9'>" + table.Rows[i]["ch1"] + "</td>";
                            st += "<td class = 'table10'>" + table.Rows[i]["ch2"] + "</td>";
                            st += "<td class = 'table11'>" + table.Rows[i]["ch3"] + "</td>";
                            st += "<td class = 'table12'>" + table.Rows[i]["ch4"] + "</td>";
                            st += "<td class = 'table13'>" + table.Rows[i]["ch5"] + "</td>";
                            st += "<td class = 'table14'>" + table.Rows[i]["pw"] + "</td>";
                            st += "</tr>";
                        }

                        st += "</table>";
                        msg = "There are " + length + " users with this attribute.";
                    }
                }
            }
        }
    }
}