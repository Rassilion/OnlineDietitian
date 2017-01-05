<%@ Page Title="" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="PatientDetail.aspx.cs"  Inherits="OnlineDietitian.Dietitian.PatientDetail" EnableEventValidation="false"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="DietitianContent" runat="server">

    <h4>Medical Report</h4>

    <table class="table table-striped">
        <thead>
            <tr>
                <th><%: (Session["patient"] as Entity.UserE).getNameSurname() %></th>
                <th>Information</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Height</td>
                <td><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).Height  %></td>
                <td>john@example.com</td>
            </tr>
            <tr>
                <td>Weight</td>
                <td><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).Weight  %></td>
                <td>mary@example.com</td>
            </tr>
            <tr>
                <td>Disease</td>
                <td><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).Disease  %></td>
                <td>july@example.com</td>
            </tr>
             <tr>
                <td>Used Drugs</td>
                <td><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).UsedDrugs  %></td>
                <td>july@example.com</td>
            </tr>
             <tr>
                <td>Blood Test</td>
                <td><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).BloodTest  %></td>
                <td>july@example.com</td>
            </tr>
             <tr>
                <td>Urine Test</td>
                <td><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).UrineTest  %></td>
                <td>july@example.com</td>
            </tr>
        </tbody>
    </table>

    <h4>Diet Request</h4>


    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">User's Content</label>
        <div class="col-xs-10">
            <asp:TextBox type="search" CssClass="form-control" ID="userContent" placeholder="photo" runat="server" ><%: (Session["patientMedicalReport"] as Entity.MedicalReportE).UrineTest  %> </asp:TextBox>

        </div>
    </div>
    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">User's Request</label>
        <div class="col-xs-10">

            <asp:TextBox type="search" CssClass="form-control" ID="userRequest" placeholder="photo" runat="server"></asp:TextBox>

        </div>
    </div>

</asp:Content>
