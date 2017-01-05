<%@ Page Title="" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="DietitianPage.aspx.cs" Inherits="OnlineDietitian.Dietitian.DietitianPage" %>

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

                <asp:Button ID="readMore" Text="Read More" CssClass="btn btn-primary" runat="server" CommandArgument='<%# Eval("UserID") %>' CommandName="UserID" OnClick="readMore_Click" />
            </div>
            <br />
        </ItemTemplate>
       
    </asp:Repeater>

    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>

</asp:Content>
