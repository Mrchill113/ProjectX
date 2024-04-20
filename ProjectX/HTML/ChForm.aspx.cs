using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectX.HTML
{
    public partial class ChForm : System.Web.UI.Page
    {
        public string st = "";
        public string Merror = "";
        public string yearsBorn = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uname = Request.Form["UName"];
                string fname = Request.Form["FName"];
                string lname = Request.Form["LName"];
                string email = Request.Form["Email"];
                string gender = Request.Form["Gender"];
                string yearBorn = Request.Form["YearBorn"];
                string city = Request.Form["City"];
                string prefix = Request.Form["Prefix"];
                string phone = Request.Form["Phone"];
                string password = Request.Form["Password"];
                string hobbies = Request.Form["Hobby"];

                int yearB = int.Parse(yearBorn);

                char ch1 = 'F', ch2 = 'F', ch3 = 'F', ch4 = 'F', ch5 = 'F';

                if (hobbies != null)
                {
                    if (hobbies.Contains("Playing Sports")) ch1 = 'T';
                    if (hobbies.Contains("Reading")) ch2 = 'T';
                    if (hobbies.Contains("Drawing")) ch3 = 'T';
                    if (hobbies.Contains("Rizzing")) ch4 = 'T';
                    if (hobbies.Contains("Eating")) ch5 = 'T';
                }

                //Connnect to DataBase
                string fileName = "userDB.mdf";
                string tableName = "usersTbl";

                //Check if username is used in DataBase
                string sqlSelect = "SELECT * FROM " + tableName + " WHERE uName ='" + uname + "'";
                string sqlInsert;

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    Merror = "The Username has already been taken";
                }
                else
                {
                    sqlInsert = "INSERT INTO usersTbl";
                    sqlInsert += " VALUES ('" + uname + "','" + fname + "','" + lname + "','" + email + "','" + yearB + "','";
                    sqlInsert += gender + "','" + prefix + "','" + phone + "','" + city + "','";
                    sqlInsert += ch1 + "','" + ch2 + "','" + ch3 + "','" + ch4 + "','" + ch5 + "','" + password + "')";
                    Helper.DoQuery(fileName, sqlInsert);

                    Merror = "Successfully Signed Up to my Website!";
                    st = "<table align='center' dir='ltr'>";
                    st += "<tr><th><h3 style='color: goldenrod;' > The details received from the server </h3></th></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >User name : {uname}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >First name : {fname}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Last name : {lname}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Email : {email}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Gender : {gender}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Year Born : {yearBorn}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Phone number : {prefix} - {phone}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >City : {city}</td></tr>";
                    st += $"<tr align = 'center' ><td style='border: 0px solid silver;' >Hobbies : {hobbies}</td></tr>";
                    st += "</table>";

                    Application.Lock();

                    //Increase Login Counter by one
                    Application["counter"] = (int)Application["counter"] + 1;

                    Application.UnLock();

                    Session["UName"] = uname;
                    Session["fName"] = fname;
                    Response.Redirect("Main.aspx");
                }

            }

            int year = DateTime.Now.Year;
            int from = year - 70;
            int to = year - 10;
            for (int i = from; i <= to; i++)
            {
                yearsBorn += "<option value='" + i + "'>" + i + "</option>";
            }
        }
    }
}