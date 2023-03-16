<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container col-6">
        <h1 class="text-center"><i>Admin Page</i></h1>
        <div>
            <div>
                <div class="form-group">
                    <asp:Label runat="server" ID="adminidform">ID</asp:Label>
                    <asp:TextBox runat="server" ID="adminidreg" class="form-control" ToolTip="Enter Email Id"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="adminpassform">Password</asp:Label>
                    <asp:TextBox runat="server" ID="adminpassreg" class="form-control" ToolTip="Enter Password"></asp:TextBox>
                </div>
                <div>
                <asp:CheckBox runat="server" ID="check"/>
                    <asp:Label runat="server" ID="checklabel">I have read and agree to the terms</asp:Label>
            </div>


                <%--signin button--%>
                <div class="d-flex justify-content-center">
                            <asp:Button ID="Button1" runat="server" Text="SignIn" class="btn btn-outline-primary btn-lg btn-block" OnClick="clicklogin" />
                            
                        </div>
                <div class="text-center">

                <asp:Label ID="Label2" runat="server" EnableViewState="False"></asp:Label>
                </div>     
            </div>
        </div>
    </div>
</asp:Content>

