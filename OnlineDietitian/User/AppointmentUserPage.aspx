<%@ Page Title="AppointmentUser" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="AppointmentUserPage.aspx.cs" Inherits="OnlineDietitian.User.AppointmentUserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">
    <br />
    <div class="row">
        <div class="col-md-offset-2 col-md-8 well">
                <div class="form-group">
                    <label class="control-label col-sm-4" for="pwd">Appointment Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="date" CssClass="form-control" ID="appointmentBox" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                        ControlToValidate="appointmentBox"
                        Display="Dynamic"
                        ErrorMessage="Cannot be empty."
                        runat="server" />
                </div>
            <br /><br /><br />
            <asp:TextBox ID="dietContent_textbox" CssClass="newContent" runat="server">Content</asp:TextBox>
        </div>

        
    
    </div>
    
    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>

</asp:Content>
