<%@ Page Title="Edit Diet Request" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="EditDietRequest.aspx.cs" Inherits="OnlineDietitian.AdminPage.EditDietRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="bs-callout bs-callout-danger">
        <h4>Edit Diet Request</h4>
        <h4>
            <asp:Label ID="error" runat="server" Text="0" Visible="False"></asp:Label></h4>

        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Content</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="updateContent" ID="contentBox" placeholder="Country, State, Street, ApartNo" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Health</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="healthBox" placeholder="bool" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Fitness</label>
            <div class="col-xs-10">
                <label class="custom-file">
                    <asp:TextBox type="search" CssClass="form-control" ID="fitnessBox" placeholder="bool" runat="server"></asp:TextBox>
                    <span class="custom-file-control"></span>
                </label>
            </div>

        </div>
        <div class="form-group row">
            <label for="example-email-input" class="col-xs-2 col-form-label">Weightgain</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="gainBox" placeholder="bool" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">WeightLoss</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="lossBox" placeholder="bool" runat="server"></asp:TextBox>

            </div>
        </div>


        <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveButton_Click" />

        <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

    </div>

    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
</asp:Content>
