<%@ Page Title="" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="DietitianPage.aspx.cs" Inherits="OnlineDietitian.Dietitian.DietitianPage" EnableEventValidation="false"  ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DietitianContent" runat="server">
 <asp:Repeater ID="userRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>
                    <a href="user/<%# Eval("UserID") %>">
                        <asp:Label ID="userName" runat="server" Text='<%# BusinessLayers.Business.getUserName( Convert.ToInt32(Eval("UserID")) ) %>' /></a>
                </h2>
                <p class="lead">
                    Email Address <a href="index.php">
                        <asp:Label ID="userEmail" runat="server" Text='<%# Eval("UserEmail").ToString() %>' /></a>
                    <span class="glyphicon glyphicon-time"></span> Birth Date 
                <asp:Label ID="userBirth" runat="server" Text='<%# Eval("UserBirth") %>' />
                </p>
                <hr>

               <a class="btn btn-primary" href="PatientDetail/<%# Eval("DietID") %>">Write Diet <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            <br />
        </ItemTemplate>
       
    </asp:Repeater>


</asp:Content>
