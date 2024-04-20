<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Team1.aspx.cs" Inherits="ProjectX.HTML.Team1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../StyleSheet2.css" rel="stylesheet" />

    <style>
        .team-info {
            display: flex;
            align-items: center;
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
            <h1>Team1 - Formula One</h1>
        </div>
    </header>

    <!-- Main content -->
    <div class="container">
        <!-- Team logo and car image -->
        <div class="team-info">
            <img src="team_logo.png" alt="Team Logo">
            <img src="car_picture.png" alt="Team Car">
        </div>

        <!-- Drivers section -->
        <div class="drivers">
            <div class="driver">
                <img src="driver1_picture.png" alt="Driver 1">
                <p>Driver: Driver 1<br> Victories: 10<br> Pole Positions: 5</p>
            </div>
            <div class="driver">
                <img src="driver2_picture.png" alt="Driver 2">
                <p>Driver: Driver 2<br> Victories: 8<br> Pole Positions: 3</p>
            </div>
        </div>

        <!-- History section -->
        <div class="history">
            <h2>Team History</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac dapibus velit. Integer sed nisi in erat fermentum varius. Quisque vehicula, odio eget venenatis pulvinar, libero mauris tempor elit, ut tincidunt dui risus eget mi.</p>
        </div>
    </div>

</asp:Content>
