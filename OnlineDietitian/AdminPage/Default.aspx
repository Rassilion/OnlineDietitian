<%@ Page Title="Home" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineDietitian.AdminPage.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well">
        <asp:Repeater ID="UserRepeater" runat="server">
            <HeaderTemplate>
                <table class="table table-hover table-sm">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Surname</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Birthdate</th>
                            <th>Gender</th>
                            <th>BodyPhoto</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <a href="EditUser/<%# Eval("UserID") %>">
                            <span class="glyphicon glyphicon-pencil"></span>
                        </a>
                        <asp:LinkButton ID="deleteUser" OnClick="deleteButton" CommandName="user" CommandArgument='<%#Eval("UserID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                        </asp:LinkButton>
                    </td>
                    <th scope="row"><%# Eval("UserID") %></th>
                    <td><%# Eval("UserName") %></td>
                    <td><%# Eval("UserSurname") %></td>
                    <td><%# Eval("UserEmail") %></td>
                    <td><%# Eval("UserPassword") %></td>
                    <td><%# Eval("Address") %></td>
                    <td><%# Eval("UserPhone") %></td>
                    <td><%# Eval("UserBirth") %></td>
                    <td><%# Eval("Gender") %></td>
                    <td><%# Eval("UserBodyPhoto") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>
    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>

</asp:Content>
