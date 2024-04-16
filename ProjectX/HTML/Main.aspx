<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProjectX.HTML.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Formula One Website</title>
<style>
    /* Style for horizontal alignment of team links */
    .team-links {
        list-style-type: none;
        padding: 0;
        margin: 0;
        text-align: center;
    }

    .team-links li {
        display: inline;
        margin-right: 10px;
    }

    /* Style for tables */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    /* Style to arrange tables side by side */
    .table-container {
        display: flex;
        flex-wrap: wrap;
    }

    .table-container table {
        flex: 1;
        margin-right: 20px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <ul class="team-links">
    <li><a href="#team1">Team 1</a></li>
    <li><a href="#team2">Team 2</a></li>
    <li><a href="#team3">Team 3</a></li>
    <li><a href="#team4">Team 4</a></li>
    <li><a href="#team5">Team 5</a></li>
</ul>

<!-- Main content -->
<h1>Welcome to Formula One World</h1>

<!-- Arrange tables side by side -->
<div class="table-container">
    <!-- Table for History -->
    <table>
        <tr>
            <td style="width: 100%;background-color: darkslategray;">
                <h2>History</h2>
                <p>Include information about the history of Formula One here...</p>
            </td>
        </tr>
    </table>

    <!-- Table for Yearly Schedule -->
    <table>
        <tr>
            <td style="width: 100%;background-color: darkslategray;">
                <h2>Yearly Schedule</h2>
                <p>Include information about the yearly schedule of Formula One races here...</p>
            </td>
        </tr>
    </table>
</div>

<!-- Arrange tables side by side -->
<div class="table-container">
    <!-- Table for Upcoming Grand Prix -->
    <table>
        <tr>
            <td style="width: 100%;background-color: darkslategray;">
                <h2>Upcoming Grand Prix</h2>
                <p>Include details about the next Grand Prix here...</p>
            </td>
        </tr>
    </table>

    <!-- Table for Latest Grand Prix -->
    <table>
        <tr>
            <td style="width: 100%;background-color: darkslategray;">
                <h2>Latest Grand Prix</h2>
                <p>Include information about the latest Grand Prix here...</p>
            </td>
        </tr>
    </table>
</div>

<!-- Teams -->
<table>
    <tr>
        <td style="width: 20%;" id="team1">
            <h2>Team 1</h2>
            <p>Include information about Team 1 here...</p>
        </td>
        <td style="width: 20%;" id="team2">
            <h2>Team 2</h2>
            <p>Include information about Team 2 here...</p>
        </td>
        <td style="width: 20%;" id="team3">
            <h2>Team 3</h2>
            <p>Include information about Team 3 here...</p>
        </td>
        <td style="width: 20%;" id="team4">
            <h2>Team 4</h2>
            <p>Include information about Team 4 here...</p>
        </td>
        <td style="width: 20%;" id="team5">
            <h2>Team 5</h2>
            <p>Include information about Team 5 here...</p>
        </td>
    </tr>
</table>

</asp:Content>
