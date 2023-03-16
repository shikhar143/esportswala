<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Upcoming.aspx.cs" Inherits="Upcoming" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container col-8 mt-4">
        <h2 class="text-center text-info bg-dark"><i>UPCOMING TOURNAMENTS</i></h2>
        <asp:GridView ID="list" runat="server" Width="100%"></asp:GridView>
        <div class="d-flex justify-content-center"> 

        <asp:Button ID="playerregbtn"  runat="server" Text="Player Registration" class="btn-sm col-3 mt-4  btn-outline-primary btn-lg btn-block" PostBackUrl="~/playerreg.aspx"/>
        </div>
    </div>
    
    <div class="d-flex justify-content-center">
        <iframe title="upcoming" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=1f7ce082-8011-42b6-812a-34c731d86417&autoAuth=true&ctid=1aa57dd5-e2ba-4d5c-9373-6254e24a8460" frameborder="0" allowFullScreen="true"></iframe>
        </div>
    <div class="container col-5 mt-4">
        <h2 class="text-center text-info bg-dark"><i>UPCOMING TOURNAMENTS</i></h2>
        <asp:Repeater runat="server" ID="repeater1">
            <itemtemplate>
                <div class="container border border-secondary">
                    <table class="container d-flex justify-content-center">
                        <tr>
                            <td><b>ID:</b></td>
                            <td>
                                <asp:Label runat="server" ID="lblid" Text='<%#Eval("id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Name:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label1" Text='<%#Eval("name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Email:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label2" Text='<%#Eval("email") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Number:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label3" Text='<%#Eval("number") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Game:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label4" Text='<%#Eval("game") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Tournament Name:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label5" Text='<%#Eval("tournamentname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Prizepool:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label6" Text='<%#Eval("prize") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Slots:</b></td>
                            <td>
                                <asp:Label runat="server" ID="Label7" Text='<%#Eval("slots") %>'></asp:Label>
                            </td>
                        </tr>
                        </table>
                </div>
            </itemtemplate>
        </asp:Repeater>
    </div>
</asp:Content>
