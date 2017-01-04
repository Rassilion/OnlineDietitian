<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="OnlineDietitian.User.UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">
   

 <h4>New Diet</h4>
 <asp:Button ID="dietitianButton" Text="Please click for select dietitian" CssClass="button" runat="server" OnClick="dietitianButton_Click" />



</asp:Content>
