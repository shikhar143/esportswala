<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container col-6">
        <h1 class="text-center"><i>LogIn Page</i></h1>
        <div>
            <div>
                <div class="form-group">
                    <asp:Label runat="server" ID="emailform">Email Address</asp:Label>
                    <asp:TextBox runat="server" ID="emailreg" class="form-control" ToolTip="Enter Email Id"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" ID="passform">Password</asp:Label>
                    <asp:TextBox runat="server" ID="passreg" class="form-control" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>
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
                <h5 class="text-center"><i>OR</i></h5>

                <%--signup button--%>
                <div class="d-flex justify-content-center">
                           <asp:Button ID="Button2" runat="server" Text="Create an Account / SignUp" class="btn btn-outline-primary btn-lg btn-block" PostBackUrl="~//Auth/Signup.aspx"/>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>

