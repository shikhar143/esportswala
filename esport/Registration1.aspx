<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Registration1.aspx.cs" Inherits="Registration1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="mv1" runat="server">
        <asp:View ID="firstpage" runat="server">
            <div class="container col-6">
                <h1 class="text-center"><i>REGISTRATION</i></h1>
                <div>
                    <div>
                        <div class="form-group">
                            <div>
                            <asp:Label runat="server" ID="nameform">Name</asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_namereg" Display="Dynamic" ForeColor="red"
                        runat="server" ErrorMessage="*" ValidationGroup="tourreg"></asp:RequiredFieldValidator>
                                </div>
                            <asp:TextBox runat="server" ID="txt_namereg" class="form-control" ToolTip="Enter Name"></asp:TextBox>
                        </div>
                        <%--EMAIL--%>
                        <div class="form-group">
                            <div>
                                <asp:Label runat="server" ID="emailform">Email Address</asp:Label>
                                <asp:RequiredFieldValidator ID="reqemail" ControlToValidate="emailreg" Display="Dynamic" ForeColor="red"
                                    runat="server" ErrorMessage="*" ValidationGroup="tourreg">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailreg" ErrorMessage="Invalid Email Format" ForeColor="red" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                            <asp:TextBox runat="server" ID="emailreg" class="form-control" ToolTip="Enter Email Id"></asp:TextBox>
                        </div>
                        <%--MOBILE--%>
                        <div class="form-group">
                            <div>
                                <asp:Label runat="server" ID="numform">Contact No.</asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="numreg" Display="Dynamic" ForeColor="red"
                                    runat="server" ErrorMessage="*" ValidationGroup="tourreg">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ControlToValidate="numreg" ErrorMessage="Please Enter 10 digit number" ForeColor="red" Display="Dynamic"
                                    ValidationExpression="[0-9]{10}">
                                </asp:RegularExpressionValidator>
                            </div>
                            <asp:TextBox runat="server" ID="numreg" class="form-control" ToolTip="Enter Contact Number"></asp:TextBox>
                        </div>
                        <%--GAME NAME--%>
                        <div class="form-group">
                            <div>
                            <asp:Label runat="server" ID="drop">Game Select.</asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="dropdown" Display="Dynamic" ForeColor="red"
                        runat="server" ErrorMessage="*" ValidationGroup="tourreg"></asp:RequiredFieldValidator>
                            </div>
                            <asp:DropDownList class="form-control" runat="server" ID="dropdown">
                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                <asp:ListItem Value="Valorant">VALORANT </asp:ListItem>
                                <asp:ListItem Value="PUBG">PUBG</asp:ListItem>
                                <asp:ListItem Value="cs">CSGO</asp:ListItem>
                                <asp:ListItem Value="cod">COD</asp:ListItem>
                                <asp:ListItem Value="lol">LOL</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <%--TOURNAMENT NAME--%>
                        <div class="form-group">
                            <div>
                                <asp:Label runat="server" ID="tourform">Tournament Name</asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tourreg" Display="Dynamic" ForeColor="red"
                                    runat="server" ErrorMessage="*" ValidationGroup="tourreg">
                                </asp:RequiredFieldValidator>
                            </div>
                            <asp:TextBox runat="server" ID="tourreg" class="form-control" ToolTip="Enter Message"></asp:TextBox>
                        </div>
                        <%--AMOUNT--%>
                        <div class="form-group">
                            <div>
                            <asp:Label runat="server" ID="prizeform">PrizePool Amount</asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="prizereg" Display="Dynamic" ForeColor="red"
                                    runat="server" ErrorMessage="*" ValidationGroup="tourreg">
                                </asp:RequiredFieldValidator>
                                </div>
                            <asp:TextBox runat="server" ID="prizereg" class="form-control" ToolTip="Enter Money"></asp:TextBox>
                        </div>
                        <%--SLOTS--%>
                        <div class="form-group">
                            <div>
                            <asp:Label runat="server" ID="slotform">Slots detail</asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="slotreg" Display="Dynamic" ForeColor="red"
                                    runat="server" ErrorMessage="*" ValidationGroup="tourreg">
                                </asp:RequiredFieldValidator>
                                </div>
                            <asp:TextBox runat="server" ID="slotreg" class="form-control" ToolTip="Enter Slot Number"></asp:TextBox>
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:Button ID="Button1" runat="server" Text="Next Step" ValidationGroup="tourreg" class="btn btn-outline-primary btn-lg btn-block" OnClick="clicknext" />
                            <br />
                            <asp:Label ID="Label2" runat="server" EnableViewState="False"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="secondpage" runat="server">
            <div class="container col-6">
                <h1 class="text-center"><i>CONFIRMATION PAGE</i></h1>
                <div>
                    <div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label1">Name</asp:Label>
                            <asp:Label runat="server" ID="TextBox1" Text="txt_namereg.text" class="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label3">Email</asp:Label>
                            <asp:Label runat="server" ID="Label4" Text="emailreg.text" class="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label5">Number</asp:Label>
                            <asp:Label runat="server" ID="Label6" Text="numreg.text" class="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label7">Game Name</asp:Label>
                            <asp:Label runat="server" ID="Label8" Text="dropdown.text" class="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label9">Torunament Name</asp:Label>
                            <asp:Label runat="server" ID="Label10" Text="tourreg.text" class="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label11">Prizepool</asp:Label>
                            <asp:Label runat="server" ID="Label12" Text="prizereg.text" class="form-control"></asp:Label>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" ID="Label13">Slot</asp:Label>
                            <asp:Label runat="server" ID="Label14" Text="slotreg.text" class="form-control"></asp:Label>
                        </div>
                        <div class="d-flex justify-content-center btn-group">
                            <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-outline-primary btn-lg btn-block" OnClick="clickprev" />
                            <asp:Button ID="regsubmit" runat="server" Text="Submit" class="btn btn-outline-primary btn-lg btn-block" OnClick="clicksubmit" style="margin-top: 0px;" />
                        </div>
                        <div class="d-flex justify-content-center">
                            <asp:Label ID="lblMsg" runat="server" EnableViewState="False"></asp:Label>
                        </div>
                        </div>
                    </div>
                </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

