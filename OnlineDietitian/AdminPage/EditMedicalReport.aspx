<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="EditMedicalReport.aspx.cs" Inherits="OnlineDietitian.AdminPage.EditMedicalReport"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="bs-callout bs-callout-danger">
        <h4>Edit User</h4>
        <h4>
            <asp:Label ID="error" runat="server" Text="0" Visible="False"></asp:Label></h4>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">DietnID</label>
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
            <label for="example-email-input" class="col-xs-2 col-form-label">Used Drugs</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="drugBox" placeholder="name" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Disease</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="diseaseBox" placeholder="Disease" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">height</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="heightBox" placeholder="height" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Weight</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="weightBox" placeholder="Weight" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Urine Test</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="urineBox" placeholder="Urine" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="form-group row">
            <label for="example-text-input" class="col-xs-2 col-form-label">Blood Test</label>
            <div class="col-xs-10">
                <asp:TextBox type="search" CssClass="form-control" ID="bloodBox" placeholder="Blood" runat="server"></asp:TextBox>

            </div>
        </div>
        
        <div class="form-group row">
            <label class="control-label col-sm-2" for="pwd">Date</label>
            <div class="col-sm-5">
                <asp:TextBox type="date" CssClass="form-control" ID="dateBox" runat="server"></asp:TextBox>
            </div>
        </div>
        
        <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveButton_Click" />

        <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

    </div>

</asp:Content>
