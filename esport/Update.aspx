<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container col-6">
        <h1 class="text-center"><i>UPDATE REGISTRATION</i></h1>
        <div>
            <div>
                <div class="form-group">
                    <asp:Label runat="server" ID="idform">ID</asp:Label>
                    <asp:TextBox runat="server" ID="idreg" class="form-control" ToolTip="Enter ID"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="nameform">Name</asp:Label>
                    <asp:TextBox runat="server" ID="txt_namereg" class="form-control" ToolTip="Enter Name"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="emailform">Email Address</asp:Label>
                    <asp:TextBox runat="server" ID="emailreg" class="form-control" ToolTip="Enter Email Id"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="numform">Contact No.</asp:Label>
                    <asp:TextBox runat="server" ID="numreg" class="form-control" ToolTip="Enter Contact Number"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="drop">Game Select.</asp:Label>
                    <asp:DropDownList class="form-control" runat="server" ID="dropdown">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                        <asp:ListItem Value="Valorant">VALORANT </asp:ListItem>
                        <asp:ListItem Value="PUBG">PUBG</asp:ListItem>
                        <asp:ListItem Value="cs">CSGO</asp:ListItem>
                        <asp:ListItem Value="cod">COD</asp:ListItem>
                        <asp:ListItem Value="lol">LOL</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="tourform">Tournament Name</asp:Label>
                    <asp:TextBox runat="server" ID="tourreg" class="form-control" ToolTip="Enter Message"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="prizeform">PrizePool Amount</asp:Label>
                    <asp:TextBox runat="server" ID="prizereg" class="form-control" ToolTip="Enter Money"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="slotform">Slots detail</asp:Label>
                    <asp:TextBox runat="server" ID="slotreg" class="form-control" ToolTip="Enter Slot Number"></asp:TextBox>
                </div>
                <div class="d-flex justify-content-center btn-group">
                    <asp:Button ID="updatebtn" runat="server" Text="Update" Enabled="false" class="btn btn-outline-primary btn-lg btn-block" OnClick="clickupdate"/>
                    <asp:Button ID="getreg" runat="server" Text="Get Details" class="btn btn-outline-primary btn-lg btn-block" OnClick="clickget" style="margin-top: 0px;"/>
                </div>
                <div class="d-flex justify-content-center">
                    <asp:Button ID="delreg" runat="server" Text="Delete" class="btn btn-outline-primary btn-lg btn-block" OnClick="clickdel"/>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

