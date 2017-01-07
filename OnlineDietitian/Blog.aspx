<%@ Page Title="Blog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="OnlineDietitian.About" ValidateRequest="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Session["dietitian"] != null)
        {%>
    <div class="jumbotron">
        <h3>New Blog Post</h3>
        <p>
            <asp:TextBox ID="title_textbox" runat="server">Title</asp:TextBox>
            <asp:TextBox ID="content_textbox" CssClass="newContent" runat="server">Content</asp:TextBox>
            <asp:Button ID="newpost_button" runat="server" OnClick="newpost_button_Click" Text="New Post" />
        </p>
    </div>
    <hr>
    <% }%>

    <asp:Repeater ID="blogPostRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>
                    <a href="blogpost/<%# Eval("BlogID") %>">
                        <asp:Label ID="blogPostTitle" runat="server" Text='<%# Eval("Title") %>' /></a>
                </h2>
                <p class="lead">
                        <asp:Label ID="blogPostAuthor" runat="server" Text='<%# BusinessLayers.Business.getDietitianName( Eval("DietitanID") ) %>' />
                    <span class="glyphicon glyphicon-time"></span>Posted on
                <asp:Label ID="blogPostDate" runat="server" Text='<%# Eval("PostDate") %>' />
                </p>
                <hr>
                <p>
                    <asp:Label ID="blogPostContent" runat="server" Text='<%# OnlineDietitian.Util.summary(Eval("BlogContent").ToString())  %>' />
                </p>
                <a class="btn btn-primary" href="blogpost/<%# Eval("BlogID") %>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

            </div>
            <br />
        </ItemTemplate>
        <FooterTemplate>            
        </FooterTemplate>
    </asp:Repeater>

    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>
</asp:Content>
