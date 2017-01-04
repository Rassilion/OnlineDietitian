<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DietRequest.aspx.cs" Inherits="OnlineDietitian.DietRequest" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <%  if (Session["user"] == null)
         Response.Redirect("~/Logon.aspx");  %>
      <hr />

<!-- nav bar -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
<div class="row">
    <div class="col-sm-3">
        <a href="mail-compose.html" class="btn btn-danger btn-block btn-compose-email">Compose Email</a>
        <ul class="nav nav-pills nav-stacked nav-email shadow mb-20">
            <li class="active">
                <a href="#mail-inbox.html">
                    <i class="fa fa-inbox"></i> Inbox  <span class="label pull-right">7</span>
                </a>
            </li>
            <li>
                <a href="#mail-compose.html"><i class="fa fa-envelope-o"></i> Send Mail</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-certificate"></i> Important</a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-file-text-o"></i> Drafts <span class="label label-info pull-right inbox-notification">35</span>
                </a>
            </li>
            <li><a href="#"> <i class="fa fa-trash-o"></i> Trash</a></li>
        </ul><!-- /.nav -->

        <h5 class="nav-email-subtitle">More</h5>
        <ul class="nav nav-pills nav-stacked nav-email mb-20 rounded shadow">
            <li>
                <a href="#">
                    <i class="fa fa-folder-open"></i> Information Update  <span class="label label-danger pull-right"></span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-folder-open"></i> Job list
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-folder-open"></i> Backup
                </a>
            </li>

        </ul><!-- /.nav -->
    </div>
    <div class="col-sm-9">
        
        <!-- resumt -->
        <div class="panel panel-default">
               <div class="panel-heading resume-heading">
                  <div class="row">
                     <div class="col-lg-12">
                        <div class="col-xs-12 col-sm-4">
                           <figure>
                              <img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
                           </figure>
                           <div class="row">
                              <div class="col-xs-12 social-btns">
                                 
                              </div>
                              
                              
                           </div>
                        </div>
                        <div class="col-xs-12 col-sm-8">
                           <ul class="list-group">
                              <li class="list-group-item"> <%: (Session["user"] as Entity.UserE).UserName + " " + (Session["user"] as Entity.UserE).UserSurname %></li>
                              <li class="list-group-item"><%: " " + (Session["user"] as Entity.UserE).UserBirth%></li>
                              <li class="list-group-item">Google Inc. </li>
                              <li class="list-group-item"><i class="fa fa-phone"></i> <%: " " + (Session["user"] as Entity.UserE).UserPhone%> </li>
                              <li class="list-group-item"><i class="fa fa-envelope"></i> <%: " " + (Session["user"] as Entity.UserE).UserEmail %> </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
             
              
             <div class="bs-callout bs-callout-danger">
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

             </div>

            </div>
         </div>
        <!-- resume -->


    </div>
</div>
</div>

    <script type="text/javascript" src="/Scripts/tinymce/tinymce.min.js"></script>
    <script>tinymce.init({ selector: 'input.updateContent' });</script>
    <script>tinymce.init({ selector: 'input.newContent' });</script>

</asp:Content>
