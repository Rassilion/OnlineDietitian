<%@ Page Title="" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="PatientDetail.aspx.cs"  Inherits="OnlineDietitian.Dietitian.PatientDetail" EnableEventValidation="false"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="DietitianContent" runat="server">

    <h4>Medical Report</h4>

    <table class="table table-striped">
        <thead>
            <tr>
                <th><%: currentDietView.getNameSurname() %></th>
                <th>Information</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Height</td>
                <td><%: currentDietView.Height  %></td>
            </tr>
            <tr>
                <td>Weight</td>
                <td><%: currentDietView.Weight  %></td>
            </tr>
            <tr>
                <td>Disease</td>
                <td><%: currentDietView.Disease  %></td>
            </tr>
             <tr>
                <td>Used Drugs</td>
                <td><%: currentDietView.UsedDrugs  %></td>
            </tr>
             <tr>
                <td>Blood Test</td>
                <td><%: currentDietView.BloodTest  %></td>
            </tr>
             <tr>
                <td>Urine Test</td>
                <td><%: currentDietView.UrineTest  %></td>
            </tr>
        </tbody>
    </table>

    <h4>Diet Request</h4>


    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">User's Content</label>
        <div class="col-xs-10">
            <asp:TextBox type="search" CssClass="form-control" ID="requestContent" placeholder="photo" runat="server" > </asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Health</label>
        <div class="col-xs-10">

            <asp:TextBox type="search" CssClass="form-control" ID="health" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Fitness</label>
        <div class="col-xs-10">

            <asp:TextBox type="search" CssClass="form-control" ID="fitness" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Weight Gain</label>
        <div class="col-xs-10">

            <asp:TextBox type="search" CssClass="form-control" ID="weightGain" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>
     <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Weight Loss</label>
        <div class="col-xs-10">

            <asp:TextBox type="search" CssClass="form-control" ID="weightLoss" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>

</asp:Content>
