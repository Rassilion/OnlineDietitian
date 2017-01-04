<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeBehind="DietRequest.aspx.cs" Inherits="OnlineDietitian.User.DietRequest" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="UserContent" runat="server">
      
     
              
                <h4>Diet Request</h4>
                 <p>
                     <asp:TextBox ID="content_textbox" CssClass="newContent" runat="server">Request Content</asp:TextBox>
                 </p>
                    
                    <div class="form-group row">
                        <label class="control-label col-sm-2" for="pwd">Diet Request:</label>
                       <asp:DropDownList ID="ddlGender" CssClass="btn btn-primary" runat="server" Width="200px" Margin="100px">
                            <asp:ListItem Text="Health" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Fitness" Value="2"></asp:ListItem>
                            <asp:ListItem Text="WeightGain" Value="3"></asp:ListItem>
                            <asp:ListItem Text="WeightLoss" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </div> 

                 
                <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveRequest_Click"  />               

                 <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

             

    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>

</asp:Content>
