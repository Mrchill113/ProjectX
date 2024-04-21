<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Team3.aspx.cs" Inherits="ProjectX.HTML.Team3" %>
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
            <h1>Mclaren</h1>
        </div>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Team logo and car image -->
        <div class="team-info">
            <img src="../Pictures/mclaren%20logo.png" alt="Team Logo">
            <img src="../Pictures/mclaren_car-removebg-preview.png" alt="Team Car">
        </div>

        <!-- Drivers section -->
        <div class="drivers">
            <div class="driver">
                <img src="../Pictures/norris.png" alt="Driver 1">
                <p>Driver: Driver 1<br> Victories: 10<br> Pole Positions: 5</p>
            </div>
            <div class="driver">
                <img src="../Pictures/piastri-removebg-preview.png" alt="Driver 2">
                <p>Driver: Driver 2<br> Victories: 8<br> Pole Positions: 3</p>
            </div>
        </div>

        <!-- History section -->
        <div class="history">
            <h2>Team History</h2>
            <p>The McLaren F1 Team has carved out a storied legacy in the world of Formula One, marked by innovation, determination, and a relentless pursuit of excellence. Founded in 1963 by Bruce McLaren, the team quickly established itself as a force to be reckoned with, capturing its first Grand Prix victory in 1968. McLaren's pioneering spirit and commitment to pushing the boundaries of technology propelled it to unprecedented success, culminating in multiple Constructors' and Drivers' Championships over the years. With iconic drivers such as Ayrton Senna and Alain Prost behind the wheel, McLaren dominated the F1 scene throughout the 1980s and 1990s, setting new standards of performance and engineering prowess. Despite facing challenges in recent years, McLaren remains a formidable presence on the grid, fueled by a rich heritage and an unwavering passion for motorsport.</p>
        </div>
    </div>


</asp:Content>
