<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Team2.aspx.cs" Inherits="ProjectX.HTML.Team2" %>
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
            <h1>Scuderia Ferrari</h1>
        </div>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Team logo and car image -->
        <div class="team-info">
            <img src="../Pictures/ferrari_logo-removebg-preview.png" alt="Team Logo">
            <img src="../Pictures/ferrari%20car.png" alt="Team Car">
        </div>

        <!-- Drivers section -->
        <div class="drivers">
            <div class="driver">
                <img style="width:300px" src="../Pictures/Leclerc.png" alt="Driver 1">
                <p>Driver: Driver 1<br> Victories: 10<br> Pole Positions: 5</p>
            </div>
            <div class="driver">
                <img style="width:300px" src="../Pictures/carlos-sainz-ferrari-1-removebg-preview.png" alt="Driver 2">
                <p>Driver: Driver 2<br> Victories: 8<br> Pole Positions: 3</p>
            </div>
        </div>

        <!-- History section -->
        <div class="history">
            <h2>Team History</h2>
            <p>The Ferrari F1 Team, also known as Scuderia Ferrari, stands as a cornerstone of Formula One history, embodying passion, tradition, and excellence. Established in 1950, Ferrari has been an integral part of the sport since its inception, with an illustrious heritage that spans over seven decades. Renowned for its iconic scarlet livery and prancing horse emblem, Ferrari has captured the hearts of motorsport enthusiasts worldwide. Throughout its rich history, the team has amassed an unparalleled legacy, securing numerous Constructors' and Drivers' Championships, with legendary drivers like Michael Schumacher and Niki Lauda etching their names into the annals of racing history. Ferrari's commitment to innovation and relentless pursuit of performance has cemented its status as one of the most iconic and successful teams in Formula One, embodying the spirit of competition and pushing the boundaries of automotive engineering.</p>
        </div>
    </div>

</asp:Content>
