<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Team5.aspx.cs" Inherits="ProjectX.HTML.Team5" %>
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
            <h1>Redull</h1>
        </div>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Team logo and car image -->
        <div class="team-info">
            <img src="../Pictures/red-bull-racing-logo-1-removebg-preview.png" alt="Team Logo">
            <img src="../Pictures/redbull_car-removebg-preview.png" alt="Team Car">
        </div>

        <!-- Drivers section -->
        <div class="drivers">
            <div class="driver">
                <img style="width:300px" src="../Pictures/verstappen.png" alt="Driver 1">
                <p>Driver: Driver 1<br> Victories: 10<br> Pole Positions: 5</p>
            </div>
            <div class="driver">
                <img style="width:300px" src="../Pictures/Perez.png" alt="Driver 2">
                <p>Driver: Driver 2<br> Victories: 8<br> Pole Positions: 3</p>
            </div>
        </div>

        <!-- History section -->
        <div class="history">
            <h2>Team History</h2>
            <p>The Red Bull Racing Formula One Team has etched its name in the annals of motorsport history as a powerhouse of speed, innovation, and determination. Founded in 2005 by Austrian energy drink company Red Bull, the team quickly emerged as a formidable contender on the F1 grid. With an ethos rooted in pushing the limits of performance and challenging convention, Red Bull Racing achieved its breakthrough success in 2010, securing its maiden Constructors' Championship. Spearheaded by visionary team principal Christian Horner and powered by the formidable partnership of drivers such as Sebastian Vettel and Max Verstappen, Red Bull Racing has since added multiple titles to its trophy cabinet, solidifying its status as a dominant force in Formula One. Renowned for its cutting-edge technology, aggressive racing strategies, and unwavering commitment to excellence, Red Bull Racing continues to push the boundaries of what is possible in motorsport, captivating fans around the globe with its thrilling performances on the track.</p>
        </div>
    </div>


</asp:Content>
