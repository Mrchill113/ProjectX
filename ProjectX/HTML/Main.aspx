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
        <li><a href="#history">F1 History</a></li>
        <li><a href="#schedule">Yearly Schedule</a></li>
        <li><a href="#upcoming">Upcoming Grand Prix</a></li>
        <li><a href="#latest">Latest Grand Prix</a></li>
        <li><a href="#teams">Competing Teams</a></li>
    </ul>

    <!-- Main content container -->
    <div class="container">
        <!-- Page header -->
        <h1>Welcome to Formula One World</h1>

        <!-- Section: History -->
        <div id="history" class="section-header">History</div>
        <div class="section-content">
            <p>Formula One, often referred to as F1, has a rich and storied history that dates back to the early 20th century. The roots of F1 can be traced to the European Grand Prix motor racing of the 1920s and 1930s, which featured daring drivers competing on public roads and circuits. However, it wasn't until 1950 that the modern Formula One World Championship was established, with the inaugural race held at Silverstone Circuit in the United Kingdom. Since then, Formula One has evolved into one of the most prestigious and popular motorsport competitions in the world, attracting millions of fans and showcasing cutting-edge technology and engineering prowess. Over the years, F1 has seen legendary drivers, such as Juan Manuel Fangio, Ayrton Senna, and Michael Schumacher, push the limits of speed and skill on iconic circuits like Monza, Monaco, and Spa-Francorchamps. The sport continues to captivate audiences with its blend of speed, drama, and innovation, making it a true global spectacle.</p>
        </div>

        <!-- Section: Yearly Schedule -->
        <div id="schedule" class="section-header">Yearly Schedule</div>
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
        <div id="upcoming" class="section-header">Upcoming Grand Prix</div>
        <div class="section-content">
            <p>The Monaco Grand Prix is one of the most prestigious events on the Formula One calendar. Held annually on the Circuit de Monaco, this street circuit is known for its tight corners, narrow streets, and glamorous backdrop. The race winds its way through the picturesque streets of Monte Carlo, offering a unique and challenging experience for drivers.
                The Monaco Grand Prix attracts celebrities, dignitaries, and racing enthusiasts from around the world, making it a must-attend event for fans of the sport. With its rich history and iconic status, the Monaco Grand Prix promises excitement, drama, and unforgettable moments on and off the track.
                Stay tuned for updates and coverage of the 2024 Monaco Grand Prix as drivers battle it out for glory on the streets of Monte Carlo!</p>
        </div>

        <!-- Section: Latest Grand Prix -->
        <div id="latest" class="section-header">Latest Grand Prix</div>
        <div class="section-content">
            <p>The Spanish Grand Prix, held at the Circuit de Barcelona-Catalunya, provided a thrilling spectacle for Formula One fans worldwide. The race saw fierce competition among the drivers as they navigated the challenging twists and turns of the circuit.
                The Spanish Grand Prix showcased the intense rivalry between teams and drivers, highlighting the competitive spirit of Formula One. As the season progresses, fans eagerly anticipate more exhilarating races and unforgettable moments on the track.
                Stay tuned for updates and analysis of the Spanish Grand Prix as the Formula One season continues to unfold!
            </p>
        </div>

        <!-- Section: Teams -->
        <div id="teams" class="section-header">Teams</div>
        <div class="section-content">
            <table>
                <tr>
                    <td style="width: 20%;" id="team5">
                    <div class="team-info">
                        <h2>Mercedes</h2>
                        <img style="width:100%" id="mercedes-logo" src="../Pictures/mercedes_logo-removebg-preview.png" alt="Mercedes Logo">
                        <p>The Mercedes-AMG Petronas Formula One Team stands at the pinnacle of motorsport, embodying a relentless pursuit of perfection and dominance on the track. With a legacy forged through innovation, precision engineering, and a winning mentality, Mercedes consistently raises the bar, setting new standards of excellence in Formula One racing.</p>
                        <p id="mercedes-drivers">Drivers: Lewis Hamilton and George Russell </p>
                        <p id="mercedes-stats">Constructor Standing : 409pt </p>
                        <a href="Team1.aspx">More Information...</a>
                    </div>
                    </td>
                    <td style="width: 20%;" id="team2">
                    <div class="team-info">
                        <h2>Ferrari</h2>
                        <img style="width:100%" id="ferrari-logo" src="../Pictures/ferrari_logo-removebg-preview.png" alt="Ferrari Logo">
                        <p>The Scuderia Ferrari F1 Team commands respect and admiration as one of the oldest and most iconic teams in Formula One, with a rich history steeped in passion and tradition. Renowned for its iconic red livery and prancing horse emblem, Ferrari continues to captivate fans worldwide with its unwavering pursuit of victory and legendary status in the sport.</p>
                        <p id="ferrari-drivers">Drivers: Charles Leclerc and Carlos Sainz</p>
                        <p id="ferrari-stats">Constructor Standing : 406pt</p>
                        <a href="Team2.aspx">More Information...</a>
                    </div>
                    </td>
                    <td style="width: 20%;" id="team3">
                    <div class="team-info">
                        <h2>Mclaren</h2>
                        <img style="width:100%" id="mclaren-logo" src="../Pictures/mclaren%20logo.png" alt="Mclaren Logo">
                        <p>The McLaren Formula One Team embodies a legacy of speed, precision, and technological innovation, forged through decades of racing excellence. With a relentless pursuit of perfection and a roster of talented drivers, McLaren continues to push the boundaries of performance on the Formula One grid.</p>
                        <p id="mclaren-drivers">Drivers: Lando Norries and Oscar Piastri</p>
                        <p id="mclaren-stats">Constructor Standing : 302pt</p>
                        <a href="Team3.aspx">More Information...</a>
                    </div>
                    </td>
                    <td style="width: 20%;" id="team4">
                    <div class="team-info">
                        <h2>Aston Martin</h2>
                        <img style="width:100%" id="aston-logo" src="../Pictures/AstonMartin%20logo.png" alt="Aston Martin Logo">
                        <p>The Aston Martin Formula One Team epitomizes the fusion of luxury and performance, bringing the elegance of Aston Martin to the high-speed world of Formula One racing. With a heritage rooted in automotive excellence and a commitment to pushing boundaries, Aston Martin's return to F1 represents a new era of racing prestige and innovation.</p>
                        <p id="aston-drivers">Drivers: Fernando Alonso and Lance Stroll</p>
                        <p id="aston-stats">Constructor Standing : 280pt</p>
                        <a href="Team4.aspx">More Information...</a>
                    </div>
                    </td>
                                        <td style="width: 20%;" id="team1">
                    <div class="team-info">
                        <h2>Redbull</h2>
                        <img style="width:100%" id="redbull-logo" src="../Pictures/red-bull-racing-logo-1-removebg-preview.png" alt="Redbull Logo">
                        <p>The Red Bull Racing Formula One Team is synonymous with high-octane excitement, pushing the limits of speed and innovation on the track. With a winning formula blending cutting-edge technology and fearless driving talent, Red Bull consistently challenges for top honors in Formula One racing.</p>
                        <p id="redbull-drivers">Drivers: Max Verstappen and Sergio Perez</p>
                        <p id="redbull-stats">Constructors Standing : 860pt</p>
                        <a href="Team5.aspx">More Information.../a>
                    </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
