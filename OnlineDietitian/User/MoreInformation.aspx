<%@ Page Title="Information Update" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="MoreInformation.aspx.cs" Inherits="OnlineDietitian.User.MoreInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">


    <h4>More Information</h4>
    <div class="form-group row">
        <label class="control-label col-sm-2" for="pwd">Gender</label>
        <asp:DropDownList ID="ddlGender" CssClass="btn btn-primary" runat="server" Width="200px">
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
        <label for="example-text-input" class="col-xs-2 col-form-label">Body Photo</label>
        <div class="col-xs-10">
            <label class="custom-file">
                <input id="avatarUpload" type="file" name="file" onchange="previewFile()" runat="server" />
                <asp:Image ID="Avatar" runat="server" Height="225px" ImageUrl="/img/NoUser.jpg" Width="225px" />
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
        <label class="control-label col-sm-2" for="pwd">Birth Date</label>
        <div class="col-sm-5">
            <asp:TextBox type="date" CssClass="form-control" ID="birthBox" runat="server"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
            ControlToValidate="birthBox"
            Display="Dynamic"
            ErrorMessage="Cannot be empty."
            runat="server" />
    </div>

    <div class="form-group row">
        <label for="example-search-input" class="col-xs-2 col-form-label">Change Password</label>
        <div class="col-xs-10">
            <asp:TextBox type="password" CssClass="form-control" ID="changePasswordBox" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="example-email-input" class="col-xs-2 col-form-label">Confirm Password</label>
        <div class="col-xs-10">
            <asp:TextBox type="password" CssClass="form-control" ID="confirmBox" runat="server"></asp:TextBox>

        </div>
    </div>
    <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveButton_Click" />

    <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

</asp:Content>
