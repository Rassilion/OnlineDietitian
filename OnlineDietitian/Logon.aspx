<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="OnlineDietitian.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">
        <div class="col-md-offset-4 col-md-4 well">
            <h3>Login Page</h3>
            <table>
                <tr>
                    <td>E-mail address:</td>
                    <td>
                        <asp:TextBox ID="UserEmail" runat="server" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            ControlToValidate="UserEmail"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="UserPass" TextMode="Password" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            ControlToValidate="UserPass"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Remember me?</td>
                    <td>
                        <asp:CheckBox ID="Persist" runat="server" /></td>
                </tr>
            </table>
            <asp:Button ID="Submit1" Text="Login" runat="server" OnClick="Submit1_Click" />
            <p>
                <asp:Label ID="Msg" ForeColor="red" runat="server" />
            </p>
        </div>
    </div>
</asp:Content>
