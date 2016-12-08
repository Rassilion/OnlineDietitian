<%@ Page Title="Blog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="OnlineDietitian.About" validateRequest="false"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <% if (global_asax.userID != -1)
        {%>
    <div class="jumbotron">
        <h3>DEBUG</h3>
        <p>
            <asp:TextBox ID="dietitianID_textbox" runat="server">DietitianID</asp:TextBox>
            <asp:TextBox ID="title_textbox" runat="server">Title</asp:TextBox>
            <asp:TextBox ID="content_textbox" CssClass="newContent" runat="server">Contetent</asp:TextBox>
            <asp:Button ID="newpost_button" runat="server" OnClick="newpost_button_Click" Text="New Post" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:TextBox ID="blogID_textbox" runat="server">BlogID</asp:TextBox>
            <asp:Button ID="deletePost_button" runat="server" OnClick="deletePost_button_Click" Text="Delete Post" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:TextBox ID="blogID_update_textbox" runat="server">BlogID</asp:TextBox>
            <asp:TextBox ID="dietitianID_update_textbox" runat="server">DietitianID</asp:TextBox>
            <asp:TextBox ID="title_update_textbox" runat="server">Title</asp:TextBox>
            <asp:TextBox ID="content_update_textbox" CssClass="updateContent" runat="server">Content</asp:TextBox>
            <asp:Button ID="update_button" runat="server" OnClick="update_button_Click" Text="Update Post" />
        </p>
    </div>
    <hr>
    <% }%>

    <asp:Repeater ID="blogPostRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <h2>
                <a href="blogpost/<%# Eval("BlogID") %>">
                    <asp:Label ID="blogPostTitle" runat="server" Text='<%# Eval("Title") %>' /></a>
            </h2>
            <p class="lead">
                by <a href="index.php">
                    <asp:Label ID="blogPostAuthor" runat="server" Text='<%# BusinessLayers.Business.getDietitianName( Eval("DietitanID") ) %>' /></a>
                <span class="glyphicon glyphicon-time"></span>Posted on
                <asp:Label ID="blogPostDate" runat="server" Text='<%# Eval("PostDate") %>' />
            </p>
            <hr>
            <p>
                <asp:Label ID="blogPostContent" runat="server" Text='<%# Eval("BlogContent") %>' />
            </p>
            <a class="btn btn-primary" href="blogpost/<%# Eval("BlogID") %>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

            <hr>
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
