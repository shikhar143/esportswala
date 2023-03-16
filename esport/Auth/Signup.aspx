<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container col-6">
        <h1 class="text-center"><i>SignUp Page</i></h1>
        <div>
            <div>
                <%--NAME--%>
                <div class="form-group">
                    <div>
                        <asp:Label runat="server" ID="nameform">Name</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_namereg" Display="Dynamic" ForeColor="red"
                        runat="server" ErrorMessage="*" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </div>
                    <asp:TextBox runat="server" ID="txt_namereg" class="form-control" ToolTip="Enter Name"></asp:TextBox>
                    
                </div>
                <%--EMAIL--%>
                <div class="form-group">
                    <div>
                    <asp:Label runat="server" ID="emailform">Email Address</asp:Label>
                        <asp:RequiredFieldValidator ID="reqemail" ControlToValidate="emailreg" Display="Dynamic" ForeColor="red"
                        runat="server" ErrorMessage="*" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailreg" ErrorMessage="Invalid Email Format" ForeColor="red" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
                        </div>
                    <asp:TextBox runat="server" ID="emailreg" class="form-control" ToolTip="Enter Email Id" ></asp:TextBox>
                </div>
                <%--MOBILE NUMBER--%>
                <div class="form-group">
                    <div>
                        <asp:Label runat="server" ID="numform">Contact No.</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="numreg" Display="Dynamic" ForeColor="red"
                        runat="server" ErrorMessage="*" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="numreg" ErrorMessage="Please Enter 10 digit number" ForeColor="red" Display="Dynamic"
                        ValidationExpression="[0-9]{10}" ValidationGroup="signup"></asp:RegularExpressionValidator>
                    </div>
                    <asp:TextBox runat="server" ID="numreg" class="form-control" ToolTip="Enter Contact Number"></asp:TextBox>
                </div>
                <%--PASSWORD--%>
                <div class="form-group">
                    <div>
                    <asp:Label runat="server" ID="passform">Password</asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="passreg" Display="Dynamic" ForeColor="red"
                        runat="server" ErrorMessage="*" ValidationGroup="signup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="passreg" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ValidationGroup="signup" ForeColor="red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$">
                        </asp:RegularExpressionValidator>
                    </div>
                    <asp:TextBox runat="server" ID="passreg" class="form-control" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>
                </div>

                <%--register button--%>
                <div class="d-flex justify-content-center">
                    <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-outline-primary btn-lg btn-block" OnClick="clickreg" ValidationGroup="signup" />
                    <br />
                    <asp:Label ID="Label2" runat="server" EnableViewState="False"></asp:Label>
                </div>
                <h5 class="text-center"><i>OR</i></h5>

                <%--login button--%>
                <div class="d-flex justify-content-center">
                    <asp:Button ID="Button2" runat="server" Text="Already a user!?" class="btn btn-outline-primary btn-lg btn-block" PostBackUrl="~/login.aspx"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

