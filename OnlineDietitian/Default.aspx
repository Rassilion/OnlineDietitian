<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineDietitian._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Easy Dieting</h1>
        <p class="lead">Online Dietitian platform for people who are striving for long healthy life.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Personal Diet</h2>
            <p>
                Every user gets personal diets for their healthy life style.</p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Profesional Help</h2>
            <p>
                Our Dietitians answer users questions, if user need more personal care they can arrange meeting.</p>
            <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Healthy Life Tips</h2>
            <p>
                Our dietitans posts latest healthy life tips on our blog</p>
            <p>
                <a class="btn btn-default" href="/blog">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
