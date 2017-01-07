<%@ Page Title="DietitianPage" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="DietitianPage.aspx.cs" Inherits="OnlineDietitian.Dietitian.DietitianPage" EnableEventValidation="false"  ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DietitianContent" runat="server">
 <asp:Repeater ID="userRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>
                        <asp:Label ID="userName" runat="server" Text='<%# BusinessLayers.Business.getUserName( Convert.ToInt32(Eval("UserID")) ) %>' />
                </h2>
                <p class="lead">
                    <span class="glyphicon glyphicon-envelope"></span>
                        <asp:Label ID="userEmail" runat="server" Text='<%# Eval("UserEmail").ToString() %>' />
                    <i class="fa fa-birthday-cake" aria-hidden="true"></i>
                <asp:Label ID="userBirth" runat="server" Text='<%# ((DateTime)Eval("UserBirth")).ToShortDateString() %>' />
                </p>
                <hr>

               <a class="btn btn-primary" href="PatientDetail/<%# Eval("DietID") %>">Write Diet <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            <br />
        </ItemTemplate>
       
    </asp:Repeater>


</asp:Content>
