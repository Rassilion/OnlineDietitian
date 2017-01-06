<%@ Page Title="DietsDetail" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="DietsDetail.aspx.cs" Inherits="OnlineDietitian.User.DietsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">

    <div class="row">

        <!-- Blog Post Content Column -->
        <div class="col-lg-8">

            <!-- Blog Post -->

            <!-- Title -->
            <h1>By <%= BusinessLayers.Business.getDietitianName(currentDietView.DietitianID)  %></h1>


            <!-- Date/Time -->
            <p><h4><span class="glyphicon glyphicon-ok-sign"></span> Request <%= OnlineDietitian.Util.UserRequest(currentDietView) %></h4></p>

            <hr>

            <!-- Post Content -->
            <p><%= currentDietView.DietContent %></p>

            <hr>
        <//div>
    </div>
</asp:Content>
