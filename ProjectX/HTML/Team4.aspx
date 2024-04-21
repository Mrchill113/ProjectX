<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Team4.aspx.cs" Inherits="ProjectX.HTML.Team4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../StyleSheet2.css" rel="stylesheet" />

        <style>
        .team-info {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        
        .team-info img {
            max-width: 200px;
            margin-right: 20px;
        }
        
        /* Drivers section */
        .drivers {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        
        .driver {
            flex: 0 0 calc(50% - 20px);
            margin-bottom: 20px;
            padding: 10px;
            background-color: #d9a5b3;
        }
        
        .driver img {
            max-width: 100%;
            margin-bottom: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Header -->
    <header>
        <div class="container">
            <h1>Aston Martin</h1>
        </div>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Team logo and car image -->
        <div class="team-info">
            <img src="../Pictures/AstonMartin%20logo.png" alt="Team Logo">
            <img src="../Pictures/astonmartin_car-removebg-preview.png" alt="Team Car">
        </div>

        <!-- Drivers section -->
        <div class="drivers">
            <div class="driver">
                <img src="../Pictures/alonso.png" alt="Driver 1">
                <p>Driver: Driver 1<br> Victories: 10<br> Pole Positions: 5</p>
            </div>
            <div class="driver">
                <img style="width:300px" src="../Pictures/stroll.png" alt="Driver 2">
                <p>Driver: Driver 2<br> Victories: 8<br> Pole Positions: 3</p>
            </div>
        </div>

        <!-- History section -->
        <div class="history">
            <h2>Team History</h2>
            <p>The Aston Martin F1 Team, though relatively new in its current guise, represents a continuation of the rich racing heritage associated with the iconic Aston Martin brand. While Aston Martin has a long history in motorsport, its recent entry into Formula One marks a significant chapter in the brand's legacy. Building upon its success in other racing categories, Aston Martin returned to the pinnacle of motorsport in 2021 after an absence of over 60 years. Led by a combination of seasoned veterans and promising talents, Aston Martin aims to make its mark on the F1 grid, drawing upon the expertise of its renowned engineering team and the legacy of its predecessors. With a commitment to performance, innovation, and the pursuit of victory, Aston Martin F1 is poised to leave a lasting impression on the world of Formula One, embodying the spirit of excellence and pushing the boundaries of automotive engineering.</p>
        </div>
    </div>


</asp:Content>
