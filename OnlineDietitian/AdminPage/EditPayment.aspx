<%@ Page Title="Edit Payment" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="EditPayment.aspx.cs" Inherits="OnlineDietitian.AdminPage.EditPayment"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bs-callout bs-callout-danger">
        <h4>Edit Payment</h4>
        <h4>
            <asp:Label ID="error" runat="server" Text="0" Visible="False"></asp:Label></h4>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">DietitianID</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="dietitianidBox" placeholder="id" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">UserID</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="useridBox" placeholder="id" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label class="control-label col-sm-2" for="pwd">Pay Date</label>
            <div class="col-sm-5">
                <asp:TextBox type="date" CssClass="form-control" ID="paydateBox" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-group row">
            <label for="example-email-input" class="col-xs-2 col-form-label">Fee</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="feeBox" placeholder="fee" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-email-input" class="col-xs-2 col-form-label">BankCard</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="bankcardBox" placeholder="card number" runat="server"></asp:TextBox>

            </div>
        </div>

        <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveButton_Click" />

        <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

    </div>
</asp:Content>
