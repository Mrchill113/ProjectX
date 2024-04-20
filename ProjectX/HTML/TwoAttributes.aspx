<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TwoAttributes.aspx.cs" Inherits="ProjectX.HTML.TwoAttributes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../JavaScript/DetectField.js"></script>
    <script src="../JavaScript/detectfields.js"></script>
    <link href="../StyleSheet1.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Users Data as required :</h1>
<form method="post" runat="server" style="text-align:center;">
    <table style="height:auto; width:auto">
        <tr style="border:0px;">
            <td style="border:0px;width:50%">
                <select name="field"; id="field"; onclick="DetectField();">
                    <option>Choose :</option>
                    <option value="fName">First Name</option>
                    <option value="lName">Last Name</option>
                    <option value="email">Email</option>
                    <option value="YearBorn">Year Born</option>
                    <option value="gender">Gender</option>
                    <option value="prefix">Prefix</option>
                    <option value="phone">Phone</option>
                    <option value="city">City</option>
                    <option value="Hobby">Hobby</option>
                </select>
            </td>

            <td style="border:0px;width:50%">
                <select name="secfield"; id="secfield"; onclick="detectField();">
                    <option>Choose :</option>
                    <option value="fName">First Name</option>
                    <option value="lName">Last Name</option>
                    <option value="email">Email</option>
                    <option value="YearBorn">Year Born</option>
                    <option value="gender">Gender</option>
                    <option value="prefix">Prefix</option>
                    <option value="phone">Phone</option>
                    <option value="city">City</option>
                    <option value="Hobby">Hobby</option>
                </select>
            </td>
        </tr>

        <tr style="border:0px;">
            <td style="border:0px;width:50%">
                <div id="query"></div>
            </td>

            <td style="border:0px;width:50%">
                <div id="secquery"></div>
            </td>
        </tr>

        <tr style="border:0px;">
            <td style="border:0px;" colspan="3">
                <input type="submit"; name="submit"; value="Search" />
            </td>
        </tr>
    </table>
</form>

<h2><%= sql %></h2>

<%= st %>

<h2 style="font-size:16pt">
    <%= msg %>
</h2>

</asp:Content>
