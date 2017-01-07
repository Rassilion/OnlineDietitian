<%@ Page Title="MedicalReport" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="MedicalReport.aspx.cs" Inherits="OnlineDietitian.User.MedicalReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">

    <h4>Medical Report</h4>

    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Height</label>
        <div class="col-xs-10">
            <asp:TextBox type="search" CssClass="form-control" ID="height" placeholder="cm" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Weight</label>
        <div class="col-xs-10">
            <label class="custom-file">
                <asp:TextBox type="search" CssClass="form-control" ID="weight" placeholder="kg" runat="server"></asp:TextBox>
                <span class="custom-file-control"></span>
            </label>
        </div>

    </div>
    <div class="form-group row">
        <label for="example-email-input" class="col-xs-2 col-form-label">Disease</label>
        <div class="col-xs-10">
            <asp:TextBox type="search" CssClass="form-control" ID="disease" placeholder="ex.renal failure" runat="server"></asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Used Drugs</label>
        <div class="col-xs-10">
            <asp:TextBox type="search" CssClass="form-control" ID="usedDrugs" placeholder="ex.buscopanPlus" runat="server"></asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Urine Test</label>
        <div class="col-xs-10">
            <asp:TextBox type="search" CssClass="form-control" ID="urineTest" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Blood Test</label>
        <div class="col-xs-10">

            <asp:TextBox type="search" CssClass="form-control" ID="bloodTest" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>

    <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveMedicalReport_Click" />

    <asp:Label ID="error" runat="server" Text="Label" Visible="False"></asp:Label>

</asp:Content>
