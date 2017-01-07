<%@ Page Title="Home" Language="C#" MasterPageFile="~/AdminPage/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineDietitian.AdminPage.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well">
        <div class="row">
            <div class="dropdown col-sm-12">
                <label class="control-label col-sm-3" for="email">Select a table to list:</label>
                <div class="col-sm-5">
                    <asp:DropDownList ID="selectTable" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="selectTable_SelectedIndexChanged">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Dietitian</asp:ListItem>
                        <asp:ListItem>Appointment</asp:ListItem>
                        <asp:ListItem>Payment</asp:ListItem>
                        <asp:ListItem>MedicalReport</asp:ListItem>
                        <asp:ListItem>DietRequest</asp:ListItem>
                        <asp:ListItem>Diet</asp:ListItem>
                        <asp:ListItem>BlogPost</asp:ListItem>
                        <asp:ListItem>DietView</asp:ListItem>
                        <asp:ListItem>Logs</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="newButton" CssClass="btn btn-default" runat="server" Text="New" OnClick="newButton_Click" />
                </div>

            </div>
        </div>
        <div class="row">
            <h4>
                <asp:Label ID="error" runat="server" Text="0" Visible="False"></asp:Label></h4>
        </div>
        <div class="row">
            <div class="dropdown col-sm-12">
                <asp:Repeater ID="UserRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th>Birthdate</th>
                                    <th>Gender</th>
                                    <th>BodyPhoto</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditUser/<%# Eval("UserID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteUser" OnClick="deleteButton" CommandName="user" CommandArgument='<%#Eval("UserID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("UserID") %></th>
                            <td><%# Eval("UserName") %></td>
                            <td><%# Eval("UserSurname") %></td>
                            <td><%# Eval("UserEmail") %></td>
                            <td><%# Eval("UserPassword") %></td>
                            <td><%# Eval("Address") %></td>
                            <td><%# Eval("UserPhone") %></td>
                            <td><%# Eval("UserBirth") %></td>
                            <td><%# Eval("Gender") %></td>
                            <td><%# Eval("UserBodyPhoto") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>

                <asp:Repeater ID="DietitianRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th>License</th>
                                    <th>CV</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditDietitian/<%# Eval("DietitianID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDietitan" OnClick="deleteButton" CommandName="dietitian" CommandArgument='<%#Eval("DietitianID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("DietitianID") %></th>
                            <td><%# Eval("DietitianName") %></td>
                            <td><%# Eval("DietitianSurname") %></td>
                            <td><%# Eval("DietitianEmail") %></td>
                            <td><%# Eval("DietitianPassword") %></td>
                            <td><%# Eval("Address") %></td>
                            <td><%# Eval("DietitianPhone") %></td>
                            <td><%# Eval("CV") %></td>
                            <td><%# Eval("DietitianLicense") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>


                <asp:Repeater ID="LogRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Type</th>
                                    <th>Message</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <th scope="row"><%# Eval("id") %></th>
                            <td><%# Eval("type") %></td>
                            <td><%# Eval("message") %></td>
                            <td><%# Eval("date") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                        <ul class="pager">
                            <li class="previous">
                                <asp:LinkButton ID="prev" OnClick="prevButton" runat="server">
                            &larr; Prev
                                </asp:LinkButton>
                            </li>
                            <li class="next">
                                <asp:LinkButton ID="next" OnClick="nextButton" runat="server">
                            Next &rarr;
                                </asp:LinkButton>
                            </li>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>



                <asp:Repeater ID="AppointmentRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>UserID</th>
                                    <th>DietitianID</th>
                                    <th>Status</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditAppointment/<%# Eval("AppointmentID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteAppointment" OnClick="deleteButton" CommandName="appointment" CommandArgument='<%#Eval("AppointmentID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("AppointmentID") %></th>
                            <td><%# Eval("UserID") %></td>
                            <td><%# Eval("DietitianID") %></td>
                            <td><%# Eval("AppointmentStatus") %></td>
                            <td><%# Eval("AppointmentDate") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>

                <asp:Repeater ID="DietRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>DietitianID</th>
                                    <th>UserID</th>
                                    <th>DietRequestID</th>
                                    <th>Content</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditDiet/<%# Eval("DietID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDiet" OnClick="deleteButton" CommandName="diet" CommandArgument='<%#Eval("DietID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("DietID") %></th>
                            <td><%# Eval("DietitianID") %></td>
                            <td><%# Eval("UserID") %></td>
                            <td><%# Eval("DietRequestID") %></td>
                            <td><%# Eval("DietContent") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>



                <asp:Repeater ID="DietRequestRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>Content</th>
                                    <th>Health</th>
                                    <th>Fitness</th>
                                    <th>WeighGain</th>
                                    <th>WeighLoss</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditRequest/<%# Eval("RequestID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDietrequest" OnClick="deleteButton" CommandName="dietrequest" CommandArgument='<%#Eval("RequestID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("RequestID") %></th>
                            <td><%# Eval("RequestContent") %></td>
                            <td><%# Eval("Health") %></td>
                            <td><%# Eval("Fitness") %></td>
                            <td><%# Eval("WeighGain") %></td>
                            <td><%# Eval("WeighLoss") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>



                <asp:Repeater ID="MedicalReportRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>UserID</th>
                                    <th>DietID</th>
                                    <th>Date</th>
                                    <th>UsedDrugs</th>
                                    <th>Disease</th>
                                    <th>Height</th>
                                    <th>Weight</th>
                                    <th>UrineTest</th>
                                    <th>BloodTest</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditMedicalReport/<%# Eval("ReportID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDietrequest" OnClick="deleteButton" CommandName="medicalreport" CommandArgument='<%#Eval("ReportID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("ReportID") %></th>
                            <td><%# Eval("UserID") %></td>
                            <td><%# Eval("DietID") %></td>
                            <td><%# Eval("Date") %></td>
                            <td><%# Eval("UsedDrugs") %></td>
                            <td><%# Eval("Disease") %></td>
                            <td><%# Eval("Height") %></td>
                            <td><%# Eval("Weight") %></td>
                            <td><%# Eval("UrineTest") %></td>
                            <td><%# Eval("BloodTest") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>


                <asp:Repeater ID="PaymentRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>UserID</th>
                                    <th>DietitianID</th>
                                    <th>Date</th>
                                    <th>Fee</th>
                                    <th>BankCard</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditPayment/<%# Eval("PayID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDietrequest" OnClick="deleteButton" CommandName="pay" CommandArgument='<%#Eval("PayID")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("PayID") %></th>
                            <td><%# Eval("UserID") %></td>
                            <td><%# Eval("DietianID") %></td>
                            <td><%# Eval("Date") %></td>
                            <td><%# Eval("Fee") %></td>
                            <td><%# Eval("BankCard") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>


                <asp:Repeater ID="BlogPostRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>DietitianID</th>
                                    <th>Title</th>
                                    <th>Content</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="EditBlogPost/<%# Eval("BlogID") %>">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </a>
                                <asp:LinkButton ID="deleteDietrequest" OnClick="deleteButton" CommandName="blogpost" CommandArgument='<%#Eval("BlogPost")%>' runat="server">
                            <span class="glyphicon glyphicon-trash"></span>
                                </asp:LinkButton>
                            </td>
                            <th scope="row"><%# Eval("BlogPost") %></th>
                            <td><%# Eval("DietianID") %></td>
                            <td><%# Eval("Title") %></td>
                            <td><%# Eval("BlogContent") %></td>
                            <td><%# Eval("PostDate") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>


                <asp:Repeater ID="DietViewRepeater" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>DietID</th>
                                    <th>UserID</th>
                                    <th>DietitianID</th>
                                    <th>UsedDrugs</th>
                                    <th>Disease</th>
                                    <th>Height</th>
                                    <th>Weight</th>
                                    <th>UrineTest</th>
                                    <th>BloodTest</th>
                                    <th>RequestID</th>
                                    <th>Content</th>
                                    <th>Health</th>
                                    <th>Fitness</th>
                                    <th>WeighGain</th>
                                    <th>WeighLoss</th>
                                    <th>DietContent</th>
                                    <th>RequestContent</th>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Email</th>
                                    <th>Birthdate</th>
                                    <th>Gender</th>
                                    <th>BodyPhoto</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <th scope="row"><%# Eval("DietID") %></th>
                            <td><%# Eval("UserID") %></td>
                            <td><%# Eval("DietianID") %></td>
                            <td><%# Eval("Date") %></td>
                            <td><%# Eval("UsedDrugs") %></td>
                            <td><%# Eval("Disease") %></td>
                            <td><%# Eval("Height") %></td>
                            <td><%# Eval("Weight") %></td>
                            <td><%# Eval("UrineTest") %></td>
                            <td><%# Eval("BloodTest") %></td>
                            <td><%# Eval("RequestID") %></td>
                            <td><%# Eval("RequestContent") %></td>
                            <td><%# Eval("Health") %></td>
                            <td><%# Eval("Fitness") %></td>
                            <td><%# Eval("WeighGain") %></td>
                            <td><%# Eval("WeighLoss") %></td>
                            <td><%# Eval("DietContent") %></td>
                            <td><%# Eval("RequestContent") %></td>
                            <td><%# Eval("UserName") %></td>
                            <td><%# Eval("UserSurname") %></td>
                            <td><%# Eval("UserEmail") %></td>
                            <td><%# Eval("UserBirth") %></td>
                            <td><%# Eval("Gender") %></td>
                            <td><%# Eval("UserBodyPhoto") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                </table>
                    </FooterTemplate>
                </asp:Repeater>


            </div>
        </div>
    </div>

</asp:Content>
