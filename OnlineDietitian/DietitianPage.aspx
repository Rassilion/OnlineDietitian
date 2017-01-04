<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DietitianPage.aspx.cs" Inherits="OnlineDietitian.DietitianPage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <% if (Session["user"] == null)
        { Response.Redirect("~/Logon.aspx"); }%>
    <hr />

    <!-- nav bar -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <a href="mail-compose.html" class="btn btn-danger btn-block btn-compose-email">Compose Email</a>
                <ul class="nav nav-pills nav-stacked nav-email shadow mb-20">
                    <li class="active">
                        <a href="#mail-inbox.html">
                            <i class="fa fa-inbox"></i>Inbox  <span class="label pull-right">7</span>
                        </a>
                    </li>
                    <li>
                        <a href="#mail-compose.html"><i class="fa fa-envelope-o"></i>Send Mail</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-certificate"></i>Diets</a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-file-text-o"></i>Patients <span class="label label-info pull-right inbox-notification">2</span>
                        </a>
                    </li>
                    <li><a href="#"><i class="fa fa-trash-o"></i>Trash</a></li>
                </ul>
                <!-- /.nav -->

                <h5 class="nav-email-subtitle">More</h5>
                <ul class="nav nav-pills nav-stacked nav-email mb-20 rounded shadow">
                    <li>
                        <a href="/MoreInformation">
                            <i class="fa fa-folder-open"></i>Information Update  <span class="label label-danger pull-right">3</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-folder-open"></i>Job list
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-folder-open"></i>Backup
                        </a>
                    </li>
                </ul>
                <!-- /.nav -->
            </div>
            <div class="col-sm-9">

                <!-- resumt -->
                <div class="panel panel-default">
                    <div class="panel-heading resume-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-xs-12 col-sm-4">
                                    <figure>
                                        <img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
                                    </figure>
                                    <div class="row">
                                        <div class="col-xs-12 social-btns">
                                        </div>


                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-8">
                                    <ul class="list-group">
                                        <li class="list-group-item"><%: (Session["user"] as Entity.UserE).UserName + " " + (Session["user"] as Entity.UserE).UserSurname %></li>
                                        <li class="list-group-item"><%: " " + (Session["user"] as Entity.UserE).UserBirth%></li>
                                        <li class="list-group-item">Google Inc. </li>
                                        <li class="list-group-item"><i class="fa fa-phone"></i><%: " " + (Session["user"] as Entity.UserE).UserPhone%> </li>
                                        <li class="list-group-item"><i class="fa fa-envelope"></i><%: " " + (Session["user"] as Entity.UserE).UserEmail %> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bs-callout bs-callout-danger">
                        <h4>Daily News</h4>
                        <!DOCTYPE html>
                        <html>
                        <head>
                            <style>
                                .button {
                                    position: relative;
                                    background-color: #4CAF50;
                                    border: none;
                                    font-size: 28px;
                                    color: #FFFFFF;
                                    padding: 20px;
                                    margin: 0px 0px 0px 20%;
                                    width: 500px;
                                    text-align: center;
                                    -webkit-transition-duration: 0.4s; /* Safari */
                                    transition-duration: 0.4s;
                                    text-decoration: none;
                                    overflow: hidden;
                                    cursor: pointer;
                                }

                                    .button:after {
                                        content: "";
                                        background: #90EE90;
                                        display: block;
                                        position: absolute;
                                        padding-top: 300%;
                                        padding-left: 350%;
                                        margin-left: -20px !important;
                                        margin-top: -120%;
                                        opacity: 0;
                                        transition: all 0.8s;
                                    }

                                    .button:active:after {
                                        padding: 0;
                                        margin: 0;
                                        opacity: 1;
                                        transition: 0s;
                                    }
                            </style>
                        </head>
                        <body>
                        </body>
                        </html>
                    </div>
                </div>
            </div>
            <!-- resume -->

        </div>
    </div>
    </div>






</asp:Content>
