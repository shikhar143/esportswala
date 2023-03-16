<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="playregdetail.aspx.cs" Inherits="playregdetail" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-8 mt-4 container">
            <div class="d-flex justify-content-center">
                <h2 class="text-center text-info bg-dark"><i>Registration Players</i></h2>
                </div>
                <div>
                <asp:Label runat="server" ID="drop">Game Select.</asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="dropdown" Display="Dynamic" ForeColor="red"
                    runat="server" ErrorMessage="*" ValidationGroup="tourreg"></asp:RequiredFieldValidator>
            <asp:DropDownList class="form-control" AutoPostBack="true" runat="server" ID="dropdown">
            </asp:DropDownList>
                    <div class="d-flex justify-content-center">
                    <asp:Button ID="getreg" runat="server" Text="Get Details" class="btn btn-outline-primary btn-lg btn-block" OnClick="clickget"  style="margin-top: 2px;"/>
                    </div>
                    </div>
        <div class="mt-4">
        <asp:GridView ID="list" runat="server" Width="100%"></asp:GridView>
            </div>
    </div>
</asp:Content>

