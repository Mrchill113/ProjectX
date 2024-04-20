<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OneAttribute.aspx.cs" Inherits="ProjectX.HTML.OneAttribute" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../JavaScript/DetectField.js"></script>
    <link href="../StyleSheet1.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Users Data as required :</h1>

<form method="post" runat="server" style="text-align:center;">
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
    <br />
    <div id="query"></div>
    <br />
    <input type="submit"; name="submit"; value="Search" />
</form>

<h2><%= sql %></h2>

<%= st %>

<h2 style="font-size:16pt">
    <%= msg %>
</h2>

</asp:Content>
