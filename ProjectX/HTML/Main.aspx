<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProjectX.HTML.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formula One Website</title>
    <link href="../StyleSheet2.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Team links -->
    <ul class="team-links">
        <li><a href="#team1">Team 1</a></li>
        <li><a href="#team2">Team 2</a></li>
        <li><a href="#team3">Team 3</a></li>
        <li><a href="#team4">Team 4</a></li>
        <li><a href="#team5">Team 5</a></li>
    </ul>

    <!-- Main content container -->
    <div class="container">
        <!-- Page header -->
        <h1>Welcome to Formula One World</h1>

        <!-- Section: History -->
        <div class="section-header">History</div>
        <div class="section-content">
            <p>Formula One, often referred to as F1, has a rich and storied history that dates back to the early 20th century. The roots of F1 can be traced to the European Grand Prix motor racing of the 1920s and 1930s, which featured daring drivers competing on public roads and circuits. However, it wasn't until 1950 that the modern Formula One World Championship was established, with the inaugural race held at Silverstone Circuit in the United Kingdom. Since then, Formula One has evolved into one of the most prestigious and popular motorsport competitions in the world, attracting millions of fans and showcasing cutting-edge technology and engineering prowess. Over the years, F1 has seen legendary drivers, such as Juan Manuel Fangio, Ayrton Senna, and Michael Schumacher, push the limits of speed and skill on iconic circuits like Monza, Monaco, and Spa-Francorchamps. The sport continues to captivate audiences with its blend of speed, drama, and innovation, making it a true global spectacle.</p>
        </div>

        <!-- Section: Yearly Schedule -->
        <div class="section-header">Yearly Schedule</div>
        <div class="section-content">
            <table>
        <thead>
            <tr>
                <th>Date</th>
                <th>Grand Prix</th>
                <th>Location</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="width: 220px;height: 40px;">20th March 2024</td>
                <td>Australian Grand Prix</td>
                <td>Melbourne, Australia</td>
            </tr>
            <tr>
                <td style="width: 220px;height: 40px;">27th March 2024</td>
                <td>Bahrain Grand Prix</td>
                <td>Sakhir, Bahrain</td>
            </tr>
            <tr>
                <td style="width: 220px;height: 40px;">10th April 2024</td>
                <td>Chinese Grand Prix</td>
                <td>Shanghai, China</td>
            </tr>
            <tr>
            <td style="width: 220px;height: 40px;">24th April 2024</td>
            <td>Spanish Grand Prix</td>
            <td>Barcelona, Spain</td>
        </tr>
        <tr>
            <td style="width: 220px;height: 40px;">8th May 2024</td>
            <td>Monaco Grand Prix</td>
            <td>Monte Carlo, Monaco</td>
        </tr>
        <tr>
            <td style="width: 220px;height: 40px;">22nd May 2024</td>
            <td>Canadian Grand Prix</td>
            <td>Montreal, Canada</td>
        </tr>
            <!-- Add more rows for other Grand Prix events -->
        </tbody>
    </table>
        </div>

        <!-- Section: Upcoming Grand Prix -->
        <div class="section-header">Upcoming Grand Prix</div>
        <div class="section-content">
            <p>The Monaco Grand Prix is one of the most prestigious events on the Formula One calendar. Held annually on the Circuit de Monaco, this street circuit is known for its tight corners, narrow streets, and glamorous backdrop. The race winds its way through the picturesque streets of Monte Carlo, offering a unique and challenging experience for drivers.
                The Monaco Grand Prix attracts celebrities, dignitaries, and racing enthusiasts from around the world, making it a must-attend event for fans of the sport. With its rich history and iconic status, the Monaco Grand Prix promises excitement, drama, and unforgettable moments on and off the track.
                Stay tuned for updates and coverage of the 2024 Monaco Grand Prix as drivers battle it out for glory on the streets of Monte Carlo!</p>
        </div>

        <!-- Section: Latest Grand Prix -->
        <div class="section-header">Latest Grand Prix</div>
        <div class="section-content">
            <p>The Spanish Grand Prix, held at the Circuit de Barcelona-Catalunya, provided a thrilling spectacle for Formula One fans worldwide. The race saw fierce competition among the drivers as they navigated the challenging twists and turns of the circuit.
                The Spanish Grand Prix showcased the intense rivalry between teams and drivers, highlighting the competitive spirit of Formula One. As the season progresses, fans eagerly anticipate more exhilarating races and unforgettable moments on the track.
                Stay tuned for updates and analysis of the Spanish Grand Prix as the Formula One season continues to unfold!
            </p>
        </div>

        <!-- Section: Teams -->
        <div class="section-header">Teams</div>
        <div class="section-content">
            <table>
                <tr>
                    <td style="width: 20%;" id="team5">
                    <div class="team-info">
                        <h2>Mercedes</h2>
                        <p>Loading team information...</p>
                        <img id="mercedes-logo" src="" alt="Mercedes Logo">
                        <p id="mercedes-drivers">Drivers: </p>
                        <p id="mercedes-stats">Stats: </p>
                    </div>
                    </td>
                    <td style="width: 20%;" id="team2">
                    <div class="team-info">
                        <h2>Ferrari</h2>
                        <p>Loading team information...</p>
                        <img id="ferrari-logo" src="" alt="Ferrari Logo">
                        <p id="ferrari-drivers">Drivers: </p>
                        <p id="ferrari-stats">Stats: </p>
                    </div>
                    </td>
                    <td style="width: 20%;" id="team3">
                    <div class="team-info">
                        <h2>Mclaren</h2>
                        <p>Loading team information...</p>
                        <img id="mclaren-logo" src="" alt="Mclaren Logo">
                        <p id="mclaren-drivers">Drivers: </p>
                        <p id="mclaren-stats">Stats: </p>
                    </div>
                    </td>
                    <td style="width: 20%;" id="team4">
                    <div class="team-info">
                        <h2>Aston Martin</h2>
                        <p>Loading team information...</p>
                        <img id="aston-logo" src="" alt="Aston Martin Logo">
                        <p id="aston-drivers">Drivers: </p>
                        <p id="aston-stats">Stats: </p>
                    </div>
                    </td>
                                        <td style="width: 20%;" id="team1">
                    <div class="team-info">
                        <h2>Redbull</h2>
                        <p>Loading team information...</p>
                        <img id="redbull-logo" src="" alt="Redbull Logo">
                        <p id="redbull-drivers">Drivers: </p>
                        <p id="redbull-stats">Stats: </p>
                    </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
