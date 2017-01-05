<%@ Page Title="Home" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineDietitian.AdminPage.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well">
        <div class="row">
            <div class="dropdown col-sm-12">
                <label class="control-label col-sm-3" for="email">Select a table to list:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="selectTable" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="selectTable_SelectedIndexChanged">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Dietitian</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="dropdown col-sm-12">
                <asp:Repeater ID="UserRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
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

                <asp:Repeater ID="DietitianRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
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
                                    <th>License</th>
                                    <th>CV</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditDietitan/<%# Eval("DietitianID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDietitan" OnClick="deleteButton" CommandName="dietitian" CommandArgument='<%#Eval("DietitianID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("DietitianID") %></th>
                            <td><%# Eval("DietitianName") %></td>
                            <td><%# Eval("DietitianSurname") %></td>
                            <td><%# Eval("DietitianEmail") %></td>
                            <td><%# Eval("DietitianPassword") %></td>
                            <td><%# Eval("Address") %></td>
                            <td><%# Eval("DietitianPhone") %></td>
                            <td><%# Eval("CV") %></td>
                            <td><%# Eval("DietitianLicense") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>

</asp:Content>
