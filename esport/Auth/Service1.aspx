<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/MasterPage.master" AutoEventWireup="true" CodeFile="Service1.aspx.cs" Inherits="Service1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <%--background image--%>
        <div class="bg-image img-responsive" style="background-image: url('../esports/fristslide.jpg'); height: 600px; background-size: cover;">

            <%--CARDS--%>
            <div>
            <div class="container d-flex justify-content-center" style="padding:5px;">
                <div class="card" style="width: 18rem;">
                    <img src="../esports/service.jpg" class="card-img-top" alt="slide3">
                    <div class="card-body">
                        <h5 class="card-title text-center">Organise tournament</h5>
                        <a href="../Registration1.aspx" class="btn btn-primary d-flex justify-content-center">Book a slot</a>
                    </div>
                </div>
                <div class="card ml-3" style="width: 18rem;">
                    <img src="../esports/slide3.jpg" class="card-img-top" alt="slide3">
                    <div class="card-body">
                        <h5 class="card-title text-center">Trophy Distribution</h5>
                        <a href="../Registration1.aspx" class="btn btn-primary d-flex justify-content-center">Book a slot</a>
                    </div>
                </div>
                <div class="card ml-3" style="width: 18rem;">
                    <img src="../esports/slide2.png" class="card-img-top" alt="slide3" >
                    <div class="card-body">
                        <h5 class="card-title text-center">Live Streaming</h5>
                        <a href="../Registration1.aspx" class="btn btn-primary d-flex justify-content-center">Book a slot</a>
                    </div>
                </div>
            </div>
                </div>
        </div>
    </div>
</asp:Content>

