<%@ Page Title="AppointmentDietitian" Language="C#" MasterPageFile="~/Dietitian/Dietitian.master" AutoEventWireup="true" CodeBehind="AppointmentDietitianPage.aspx.cs" Inherits="OnlineDietitian.Dietitian.AppointmentDietitianPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DietitianContent" runat="server">

    <h4>Appointments</h4>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>User Name</th>
                <th class="text-center">Appoitment Date</th>
                <th class="text-center">Appoitment Content</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="appointmentRepeater" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>

                            <%# BusinessLayers.Business.getUserName(Convert.ToInt32(Eval("UserID"))) %>
                                   
                        </td>
                        <td class="text-center">
                            <%# Eval("AppointmentDate") %>
                        </td>

                        <td class="text-center">

                            <%# Eval("AppointmentContent") %>
                        </td>
                       
                    </tr>


                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
