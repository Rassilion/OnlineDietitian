<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MoreInformation.aspx.cs" Inherits="OnlineDietitian.MoreInformation" %>
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
                <h4>More Information</h4>
                  <div class="form-group row">
                    <label class="control-label col-sm-2" for="pwd">Gender</label>
                   <asp:DropDownList ID="ddlGender" CssClass="btn btn-primary" runat="server" Width="200px">
                        <asp:ListItem Text="Select Gender" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                </div> 
                <div class="form-group row">
                  <label for="example-text-input" class="col-xs-2 col-form-label">Address</label>
                  <div class="col-xs-10">
                      <asp:TextBox type="search" CssClass="form-control" ID="addressBox" placeholder="Country, State, Street, ApartNo" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="form-group row">
                  <label for="example-text-input" class="col-xs-2 col-form-label">Body Photo</label>
                  <div class="col-xs-10">
                     <label class="custom-file"> <!--  <input type="file" id="file" class="custom-file-input"> -->
                     <asp:TextBox type="search" CssClass="form-control" ID="bodyPhotoBox" placeholder="BodyPhoto" runat="server"></asp:TextBox>
                     <span class="custom-file-control"></span>
                     </label>
                     </div>
                     
                </div>
                <div class="form-group row">
                  <label for="example-email-input" class="col-xs-2 col-form-label">Name</label>
                  <div class="col-xs-10">
                    <asp:TextBox type="search" CssClass="form-control" ID="nameBox" placeholder="name" runat="server"></asp:TextBox>

                  </div>
                </div>
                  <div class="form-group row">
                  <label for="example-text-input" class="col-xs-2 col-form-label">Surname</label>
                  <div class="col-xs-10">
                    <asp:TextBox type="search" CssClass="form-control" ID="surnameBox" placeholder="surname" runat="server"></asp:TextBox>
                    
                  </div>
                </div>
                  <div class="form-group row">
                  <label for="example-text-input" class="col-xs-2 col-form-label">Phone</label>
                  <div class="col-xs-10">
                    <asp:TextBox type="search" CssClass="form-control" ID="phoneBox" placeholder="0 (505) 111 11 11" runat="server"></asp:TextBox>
                    
                  </div>
                </div>
                  <div class="form-group row">
                    <label class="control-label col-sm-2" for="pwd">Birth Date</label>
                    <div class="col-sm-5">
                        <asp:TextBox type="date" CssClass="form-control" ID="birthBox" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                            ControlToValidate="birthBox"
                            Display="Dynamic"
                            ErrorMessage="Cannot be empty."
                            runat="server" />
                </div>

                <div class="form-group row">
                  <label for="example-search-input" class="col-xs-2 col-form-label">Change Password</label>
                  <div class="col-xs-10">
                       <asp:TextBox type="password" CssClass="form-control" ID="changePasswordBox"  runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="form-group row">
                  <label for="example-email-input" class="col-xs-2 col-form-label">Confirm Password</label>
                  <div class="col-xs-10">
                    <asp:TextBox type="password" CssClass="form-control" ID="confirmBox" runat="server"></asp:TextBox>

                  </div>
                </div>
                <asp:Button ID="saveButton" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="saveButton_Click" />               

                 <asp:Label ID="successLabel" runat="server" Text="Label" Visible="False"></asp:Label>

             </div>

            </div>
         </div>
        <!-- resume -->


    </div>
</div>
</div>


</asp:Content>
