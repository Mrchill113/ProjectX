using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class EditInfo : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlMsg = "";
        public string sqlSelect = "";
        public string UpdatedInfo = "";
        public string Citystr = "";
        public string yrBorn = "";
        public string uName, fName, lName, email, gender, phone, prefix, pass;
        public string yearBorn, city, hob1, hob2, hob3, hob4, hob5;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";

            if (Session["uName"].ToString() == "Guest" || Session["admin"].ToString() == "admin")
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                uName = Session["uName"].ToString();

                sqlSelect = "SELECT * FROM usersTbl WHERE uName= '" + uName + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                sqlMsg = sqlSelect;
                int length = table.Rows.Count;
                if (length == 0)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {

                    // PreSelecting............
                    fName = table.Rows[0]["fName"].ToString().Trim();
                    lName = table.Rows[0]["lName"].ToString().Trim();
                    email = table.Rows[0]["email"].ToString().Trim();
                    prefix = table.Rows[0]["prefix"].ToString().Trim();
                    phone = table.Rows[0]["phone"].ToString().Trim();
                    gender = table.Rows[0]["gender"].ToString().Trim();
                    city = table.Rows[0]["city"].ToString().Trim();
                    hob1 = table.Rows[0]["ch1"].ToString().Trim();
                    hob2 = table.Rows[0]["ch2"].ToString().Trim();
                    hob3 = table.Rows[0]["ch3"].ToString().Trim();
                    hob4 = table.Rows[0]["ch4"].ToString().Trim();
                    hob5 = table.Rows[0]["ch5"].ToString().Trim();
                    int yBorn = Convert.ToInt16(table.Rows[0]["YearBorn"].ToString().Trim());
                    pass = table.Rows[0]["pw"].ToString().Trim();


                    // PreSelecting............
                    int year = DateTime.Now.Year;
                    int from = year - 60;
                    int to = year - 10;
                    for (int i = from; i <= to; i++)
                    {

                        if (i == yBorn)
                            yrBorn += $"<option value = '{i}' selected> {i} </option>";
                        else
                            yrBorn += "<option value = '" + i + "'>" + i + "</option>";

                    }

                    // PreSelecting............
                    string[] cities = { "Nazareth", "Safed", "Afula", "Haifa", "Tiberias", "Karmiel", "Acre", "Netanya", "Nablus", "Tel Aviv",
         "Ramallah", "Jerusalem", "Ashkelon", "Gaza", "Beer Sheva", "Eilat" };

                    for (int i = 0; i < cities.Length; i++)
                    {
                        if (cities[i] == city)
                            Citystr += $"<option value ='{cities[i]}' selected>{cities[i]}</option>";
                        else
                            Citystr += $"<option value ='{cities[i]}'>{cities[i]}</option>";
                    }


                    if (this.IsPostBack)
                    {
                        fName = Request.Form["FName"];
                        lName = Request.Form["LName"];
                        email = Request.Form["Email"];
                        city = Request.Form["City"];
                        prefix = Request.Form["Prefix"];
                        phone = Request.Form["Phone"];
                        gender = Request.Form["Gender"];
                        yearBorn = Request.Form["YearBorn"];
                        pass = Request.Form["Password"];

                        string Hobies = Request.Form["Hobby"];
                        hob1 = "F";
                        hob2 = "F";
                        hob3 = "F";
                        hob4 = "F";
                        hob5 = "F";

                        if (Hobies != null)
                        {
                            if (Hobies.Contains("Playing Sports")) hob1 = "T";
                            if (Hobies.Contains("Reading")) hob2 = "T";
                            if (Hobies.Contains("Drawing")) hob3 = "T";
                            if (Hobies.Contains("Rizzing")) hob4 = "T";
                            if (Hobies.Contains("Eating")) hob5 = "T";
                        }



                        // Updating the newly entered User Info!!
                        UpdatedInfo = "UPDATE usersTbl ";
                        UpdatedInfo += "SET fName = '" + fName + "', ";
                        UpdatedInfo += "lName = '" + lName + "', ";
                        UpdatedInfo += "email = '" + email + "', ";
                        UpdatedInfo += "YearBorn = '" + yearBorn + "', ";
                        UpdatedInfo += "gender = '" + gender + "', ";
                        UpdatedInfo += "prefix = '" + prefix + "', ";
                        UpdatedInfo += "phone = '" + phone + "', ";
                        UpdatedInfo += "city = '" + city + "', ";
                        UpdatedInfo += "ch1 = '" + hob1 + "', ";
                        UpdatedInfo += "ch2 = '" + hob2 + "', ";
                        UpdatedInfo += "ch3 = '" + hob3 + "', ";
                        UpdatedInfo += "ch4 = '" + hob4 + "', ";
                        UpdatedInfo += "ch5 = '" + hob5 + "', ";
                        UpdatedInfo += "pw = '" + pass + "' ";
                        UpdatedInfo += "WHERE uName = '" + uName + "'";


                        Helper.DoQuery(fileName, UpdatedInfo);

                        msg = "Successfully Updated your User Info";

                        Response.Redirect("Main.aspx");
                    }
                }
            }
        }
    }
}