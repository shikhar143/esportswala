<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="logindetail.aspx.cs" Inherits="logindetail" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container col-8 mt-4 text-center" >
        <div class="d-inline-block text-center">
            <h2 class="text-center text-info bg-dark"><i>Profile Details</i><asp:Image CssClass=" pull-right" runat="server" src="esports/updateimg.png" /></h2>
        </div>
        <asp:GridView ID="detail" runat="server" Width="100%"></asp:GridView>
    </div>
</asp:Content>

