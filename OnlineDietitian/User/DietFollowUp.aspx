<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="DietFollowUp.aspx.cs" Inherits="OnlineDietitian.User.DietFollowUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">
      <asp:Repeater ID="dietRepeater" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="well">
                <h2>
                        <asp:Label ID="userName" runat="server" Text='<%# BusinessLayers.Business.getDietitianByDietitianID( Eval("DietitianID").ToString() ).getNameSurname() %>' />
                </h2>                
               <hr>
                <p>
                    <asp:Label ID="blogPostContent" runat="server" Text='<%# BusinessLayers.Business.getDietRequestByID(Eval("DietRequestID").ToString()).RequestContent.ToString() %>' />
                </p>

               <a class="btn btn-primary" href="/User/DietsDetail/<%# Eval("DietID") %>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            <br />
        </ItemTemplate>
       
    </asp:Repeater>

</asp:Content>
