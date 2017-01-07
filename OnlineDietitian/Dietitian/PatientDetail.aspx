<%@ Page Title="PatientDetail" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="PatientDetail.aspx.cs"  Inherits="OnlineDietitian.Dietitian.PatientDetail" EnableEventValidation="false"  ValidateRequest="false"%>

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

     <table class="table table-striped">
        <thead>
            <tr>
                <th>Request Name</th>
                <th>Information</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>User's Content</td>
                <td><%: currentDietView.RequestContent  %></td>
            </tr>
            <tr>
                <td>Health</td>
                <td><%: currentDietView.Health  %></td>
            </tr>
            <tr>
                <td>Fitness</td>
                <td><%: currentDietView.Fitness  %></td>
            </tr>
             <tr>
                <td>Weight Gain</td>
                <td><%: currentDietView.WeightGain  %></td>
            </tr>
             <tr>
                <td>Weight Loss</td>
                <td><%: currentDietView.WeightLoss  %></td>
            </tr>
            
        </tbody>
    </table>
    
    <hr />
     <h4>Diet Prepare</h4>
        <p>&nbsp;</p>
        <p>
            <h4>Meals</h4>
            <asp:TextBox ID="dietContent_textbox" CssClass="newContent" runat="server">Content</asp:TextBox>
        </p>
        <p>&nbsp;</p>

        <asp:Button ID="sendDiet" Text="Send Diet" CssClass="btn btn-primary" runat="server" OnClick="sendDiet_Click" />


    
    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>

</asp:Content>
