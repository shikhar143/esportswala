<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Contact1.aspx.cs" Inherits="Contact1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container col-6">
        <h1 class="text-center"><i>Contact Us</i></h1>
        <div>
            <div>
            <div class="form-group">
                <asp:Label runat="server" ID="nameform">Name</asp:Label>
                <asp:TextBox runat="server" ID="namebox" class="form-control" ToolTip="Enter Name"></asp:TextBox>
            </div>
                <div class="form-group">
                <asp:Label runat="server" ID="emailform">Email Address</asp:Label>
                <asp:TextBox runat="server" ID="emailbox" class="form-control" ToolTip="Enter Email Id"></asp:TextBox>
            </div>
                <div class="form-group">
                <asp:Label runat="server" ID="numform">Contact No.</asp:Label>
                <asp:TextBox runat="server" ID="numbox" class="form-control" ToolTip="Enter Contact Number"></asp:TextBox>
            </div>
                <div class="form-group">
                <asp:Label runat="server" ID="msgfrom">Message</asp:Label>
                <asp:TextBox runat="server" ID="msgbox" class="form-control" ToolTip="Enter Message" Wrap="True" ViewStateMode="Enabled" TextMode="MultiLine"></asp:TextBox>
            </div>
                <div class="d-flex justify-content-center">
                    <asp:Button ID="formsubmit" runat="server" Text="SEND" class="btn btn-outline-primary btn-lg btn-block" />
                </div>
             </div>
        </div>

    </div>
</asp:Content>

