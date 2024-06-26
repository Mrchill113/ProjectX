﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Team1.aspx.cs" Inherits="ProjectX.HTML.Team1" %>
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
            <h1>Mercedes AMG Petronas</h1>
        </div>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Team logo and car image -->
        <div class="team-info">
            <img src="../Pictures/mercedes_logo-removebg-preview.png" alt="Team Logo">
            <img src="../Pictures/mercedes_car-removebg-preview.png" alt="Team Car">
        </div>

        <!-- Drivers section -->
        <div class="drivers">
            <div class="driver">
                <img style="width:300px" src="../Pictures/Hamilton-removebg-preview.png" alt="Driver 1">
                <p>Driver: Driver 1<br> Victories: 10<br> Pole Positions: 5</p>
            </div>
            <div class="driver">
                <img style="width:300px" src="../Pictures/russell.png" alt="Driver 2">
                <p>Driver: Driver 2<br> Victories: 8<br> Pole Positions: 3</p>
            </div>
        </div>

        <!-- History section -->
        <div class="history">
            <h2>Team's History</h2>
            <p>The Mercedes AMG Petronas Formula One Team, commonly known as Mercedes, has established itself as one of the most dominant forces in the history of Formula One. The team's roots trace back to the 1950s when Mercedes-Benz first entered the sport. However, it wasn't until the modern era that Mercedes reasserted its presence in F1, acquiring the Brawn GP team in 2009. Since then, Mercedes has achieved unprecedented success, winning numerous Constructors' and Drivers' Championships. Led by notable figures such as Lewis Hamilton and team principal Toto Wolff, Mercedes has showcased a remarkable blend of engineering excellence, strategic prowess, and driver talent, making it a formidable force on the F1 grid. Through continuous innovation and a relentless pursuit of excellence, Mercedes has solidified its place in the annals of motorsport history, setting new benchmarks and redefining the standards of success in Formula One.</p>
        </div>
    </div>

</asp:Content>
