<%@ Page Title="" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="Dietitians.aspx.cs" Inherits="OnlineDietitian.Dietitian.Dietitians" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DietitianContent" runat="server">

    <asp:Repeater ID="dietitianRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>
                    <a href="dietitian/<%# Eval("DietitianID") %>">
                        <asp:Label ID="dietitianName" runat="server" Text='<%# BusinessLayers.Business.getDietitianName( Eval("DietitianID") ) %>' /></a>
                </h2>
                <p class="lead">
                    Email Address <a href="index.php">
                        <asp:Label ID="dietitianEmail" runat="server" Text='<%# Eval("DietitianEmail").ToString() %>' /></a>
                    <span class="glyphicon glyphicon-time"></span>License 
                <asp:Label ID="blogPostDate" runat="server" Text='<%# Eval("DietitianLicense") %>' />
                </p>
                <hr>

                <p>
                    <asp:Label ID="CV" runat="server" Text='<%# Eval("CV").ToString()  %>' />

                </p>
                <a class="btn btn-primary" href="dietitian/<%# Eval("DietitianID") %>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                <asp:Button ID="selectButton" Text="Select Dietitian" CssClass="btn btn-primary" runat="server" CommandArgument='<%# Eval("DietitianID") %>' CommandName="DietitianID" OnClick="selectDietitian_Click" />
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
