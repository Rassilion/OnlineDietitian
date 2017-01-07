<%@ Page Title="BlogPost" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BlogPost.aspx.cs" Inherits="OnlineDietitian.BlogPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="row well">

        <!-- Blog Post Content Column -->
        <div class="col-lg-12">

            <!-- Blog Post -->

            <!-- Title -->
            <h1><%= currentPost.Title %></h1>

            <!-- Author -->
            <p class="lead">
                by <%= BusinessLayers.Business.getDietitianName(currentPost.DietitanID) %>
            </p>

            <hr>

            <!-- Date/Time -->
            <p><span class="glyphicon glyphicon-time"></span>Posted on <%= currentPost.PostDate %></p>

            <hr>

            <!-- Post Content -->
            <p><%= currentPost.BlogContent %></p>

            <hr>
        </div>

        

    </div>

</asp:Content>
