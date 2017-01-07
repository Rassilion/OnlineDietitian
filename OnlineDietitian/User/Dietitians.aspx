<%@ Page Title="Dietitians" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="Dietitians.aspx.cs" Inherits="OnlineDietitian.User.Dietitians" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">

    <asp:Repeater ID="dietitianRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>Dietitian Name: 
                        <asp:Label ID="dietitianName" runat="server" Text='<%# BusinessLayers.Business.getDietitianName( Eval("DietitianID") ) %>' />
                </h2>
                <p class="lead">
                    <span class="glyphicon glyphicon-envelope"></span>
                    <asp:Label ID="dietitianEmail" runat="server" Text='<%# Eval("DietitianEmail").ToString() %>' />
                    <i class="fa fa-university" aria-hidden="true"></i>
                    <asp:Label ID="blogPostDate" runat="server" Text='<%# Eval("DietitianLicense") %>' />
                </p>
                <hr>

                <p>
                    <asp:Label ID="CV" runat="server" Text='<%# Eval("CV").ToString()  %>' />

                </p>
                <asp:Button ID="selectButton" Text="Select Dietitian" CssClass="btn btn-primary" runat="server" CommandArgument='<%# Eval("DietitianID") %>' CommandName="DietitianID" OnClick="selectDietitian_Click" />
            </div>
            <br />
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
