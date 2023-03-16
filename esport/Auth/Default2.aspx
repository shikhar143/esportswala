<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <%--background image--%>
        <div class="bg-image img-responsive" style="background-image: url('../esports/img2.jpg'); height: 600px; background-size: cover;">
            <div class="ml-4 container text-light col-5 align-content-left ">
                <h1 style="padding-top: 200px;">Esports Tournaments</h1>
                <div class="ml-4">
                    <b>Scores •  Stats  •  Odds  •  Projections  •  News  •  Images</b>
                    <br />
                    <div class="mt-1 ml-4">We provide real-time coverage, including scores &amp; stats, of esports tournaments for the most popular esports titles Like League of Legends (LoL), CSGO (Counter-Strike Global Offensive), PUBG (PlayerUnknown's Battlegrounds), VALORANT and COD (Call Of Duty).</div>
                </div>
                    <asp:Button ID="get" runat="server" Text="GET IN TOUCH" class="btn btn-dark ml-4 mt-1" PostBackUrl=" mailto:shikharkr2001@gamil.com "/>                      
            </div>
        </div>
    </div>
    <div class="text-center mt-3">
        <h1><i>Game Day Coverage</i></h1>
        <p>EsportsWala follows the entire event lifecycle from creation to completion by providing continuous, real-time updates starting well before the headsets get put on...</p>
    </div>
    <div class=" d-flex justify-content-center mt-4">
        <div class="col-2 ml-5 ">
            <ul class="list-group">
                <li class="list-group-item active text-center" aria-current="true">PreGame</li>
                <li class="list-group-item">PC Games</li>
                <li class="list-group-item">Mobile Games</li>
                <li class="list-group-item">Shedules</li>
                <li class="list-group-item">Teams</li>
            </ul>
        </div>
        <h1>>></h1>
        <div class="col-2">
            <ul class="list-group">
                <li class="list-group-item active text-center" aria-current="true">LIVE</li>
                <li class="list-group-item">Player Stats</li>
                <li class="list-group-item">Team Stats</li>
                <li class="list-group-item">Scores</li>
                <li class="list-group-item">Matches</li>
            </ul>
        </div>
        <h1>>></h1>
        <div class="col-2">
            <ul class="list-group">
                <li class="list-group-item active text-center" aria-current="true">POST GAME</li>
                <li class="list-group-item">Player Game Stats</li>
                <li class="list-group-item">Team Game Stats</li>
                <li class="list-group-item">Scores</li>
                <li class="list-group-item">MVP</li>
            </ul>
        </div>
    </div>

    <%--games with logo--%>
    <div class=" mt-4">
        <h2 class="text-center"><i>-Games-</i></h2>
    </div>
    <div class="d-flex justify-content-center">

        <div class="col-2 mx-6">
            <div>
                <a href="https://playvalorant.com/en-gb/"><img src="../esports/valo.png" class="img-fluid d-block mx-auto"/></a>
                <h3 class="text-center">Valorant</h3>
            </div>
        </div>
        <div class="col-2 mx-6">
            <div>
                <a href="https://na.battlegrounds.pubg.com/"><img src="../esports/pubg.png" class="img-fluid d-block mx-auto"  /></a>
                <h3 class="text-center">PUBG</h3>
            </div>
        </div>
        <div class="col-2 mx-6">
            <div>
                <a href="https://blog.counter-strike.net/"><img src="../esports/csgo.png" class="img-fluid d-block mx-auto"/></a>
                <h3 class="text-center">CSGO</h3>
            </div>
        </div>
        <div class="col-2 mx-6">
            <div>
                <a href="https://www.callofduty.com/"><img src="../esports/cods.png" class="img-fluid d-block mx-auto"/></a>
                <h3 class="text-center">COD</h3>
            </div>
        </div>
        <div class="col-2 mx-6">
            <div>
                <a href="https://www.leagueoflegends.com/en-gb/"><img src="../esports/lol.png"class="img-fluid d-block mx-auto"/></a>
                <h3 class="text-center">LOL</h3>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center">
        <iframe title="newdash" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=b7db97a5-41c2-4f3b-afc8-22cf8ac5ca67&autoAuth=true&ctid=1aa57dd5-e2ba-4d5c-9373-6254e24a8460" frameborder="0" allowFullScreen="true"></iframe>
    </div>
</asp:Content>

