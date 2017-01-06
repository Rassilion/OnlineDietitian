<%@ Page Title="Edit Dietitian" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="EditDietitian.aspx.cs" Inherits="OnlineDietitian.AdminPage.EditDietitian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="bs-callout bs-callout-danger">
        <h4>Edit Dietitian</h4>
        <h4>
            <asp:Label ID="error" runat="server" Text="0" Visible="False"></asp:Label></h4>
        <div class="form-group row">
            <label class="control-label col-sm-2" for="pwd">Gender</label>
            <asp:DropDownList ID="ddlGender" CssClass="btn btn-primary" runat="server" Width="200px">
                <asp:ListItem Text="Select Gender" Value="0"></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Address</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="addressBox" placeholder="Country, State, Street, ApartNo" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Email</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="emailBox" placeholder="adres@site.com" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Body Photo</label>
            <div class="col-xs-10">
                <label class="custom-file">
                    <asp:TextBox type="search" CssClass="form-control" ID="bodyPhotoBox" placeholder="BodyPhoto" runat="server"></asp:TextBox>
                    <span class="custom-file-control"></span>
                </label>
            </div>

        </div>
        <div class="form-group row">
            <label for="example-email-input" class="col-xs-2 col-form-label">Name</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="nameBox" placeholder="name" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Surname</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="surnameBox" placeholder="surname" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Phone</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="phoneBox" placeholder="0 (505) 111 11 11" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">CV</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="cvBox" placeholder="surname" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">License</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="licenseBox" placeholder="surname" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label for="example-search-input" class="col-xs-2 col-form-label">Change Password</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="changePasswordBox" runat="server"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveButton_Click" />

        <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

    </div>

</asp:Content>
