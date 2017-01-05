<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineDietitian.Register" enableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">
        <div class="col-md-offset-2 col-md-8 well">
            <form class="form-horizontal">
                
                <div class="form-group">
                    <label class="control-label col-sm-4" for="email">Email:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="email" CssClass="form-control" ID="emailBox" placeholder="Enter email" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            ControlToValidate="emailBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="pwd">Password:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="password" CssClass="form-control" ID="passwordBox" placeholder="Enter password" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            ControlToValidate="passwordBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="pwd">Password Confirm:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="password" CssClass="form-control" ID="passwordConfirmBox" placeholder="Enter password" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            ControlToValidate="passwordConfirmBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="pwd">Name:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="text" CssClass="form-control" ID="nameBox" placeholder="Enter name" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                            ControlToValidate="nameBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="pwd">Surname:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="text" CssClass="form-control" ID="surnameBox" placeholder="Enter surname" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                            ControlToValidate="surnameBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="pwd">Birthdate:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="date" CssClass="form-control" ID="birthBox" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                            ControlToValidate="birthBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>




                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                        <asp:Button ID="Submit1" Text="Register" CssClass="btn btn-default" runat="server" OnClick="Submit1_Click" />
                    </div>
                    <asp:Label ID="successLabel" runat="server" Text="0" Visible="False"></asp:Label>
                </div>

            </form>
        </div>
    </div>
</asp:Content>
