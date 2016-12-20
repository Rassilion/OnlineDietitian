<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DietitianPage.aspx.cs" Inherits="OnlineDietitian.DietitianPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <% if (Session["user"] == null)
        Response.Redirect("~/Logon.aspx");%>
    
  
    
    <asp:Repeater ID="dietitianRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>
                    <a href="dietitian/<%# Eval("DietitianID") %>">
                        <asp:Label ID="dietitianName" runat="server" Text='<%# BusinessLayers.Business.getDietitianName( Eval("DietitanID") ) %>' /></a>
                </h2>
                <p class="lead">
                    information <a href="index.php">
                        <asp:Label ID="blogPostAuthor" runat="server" Text='<%# BusinessLayers.Business.getDietitianName( Eval("DietitanID") ) %>' /></a>
                    <span class="glyphicon glyphicon-time"></span>Posted on
                <asp:Label ID="blogPostDate" runat="server" Text='<%# Eval("DietitianLicense") %>' />
                </p>
                <hr>
                <p>
                    <asp:Label ID="blogPostContent" runat="server" Text='<%# OnlineDietitian.Util.summary(Eval("CV").ToString())  %>' />
                </p>
                <a class="btn btn-primary" href="blogpost/<%# Eval("DietitianID") %>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

            </div>
            <br />
        </ItemTemplate>
        <FooterTemplate>
            <!-- Pager -->
            <ul class="pager">
                <li class="previous">
                    <a href="#">&larr; Older</a>
                </li>
                <li class="next">
                    <a href="#">Newer &rarr;</a>
                </li>
            </ul>
        </FooterTemplate>
    </asp:Repeater>

    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>
</asp:Content>
