<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="OnlineDietitian.Payment" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">


    <div class="row">
        <!-- You can make it whatever width you want. I'm making it full width
             on <= small devices and 4/12 page width on >= medium devices -->
        <div class="col-xs-12 col-md-4">

            <!-- CREDIT CARD FORM STARTS HERE -->
            <div class="panel panel-default credit-card-box">
                <div class="panel-heading display-table">
                    <div class="row display-tr">
                        <h3 class="panel-title display-td">Payment Details</h3>
                        <div class="display-td">
                            <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form" method="POST" action="javascript:void(0);">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input
                                            type="tel"
                                            class="form-control"
                                            name="cardNumber"
                                            placeholder="Valid Card Number"
                                            autocomplete="cc-number"
                                            required autofocus />
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input
                                        type="tel"
                                        class="form-control"
                                        name="cardExpiry"
                                        placeholder="MM / YY"
                                        autocomplete="cc-exp"
                                        required />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <input
                                        type="tel"
                                        class="form-control"
                                        name="cardCVC"
                                        placeholder="CVC"
                                        autocomplete="cc-csc"
                                        required />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">COUPON CODE</label>
                                    <input type="text" class="form-control" name="couponCode" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <asp:Button ID="payButton" Text="Pay" CssClass="btn btn-primary" runat="server" OnClick="payment_Click" />
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="successPayment" runat="server" Text="Label" Visible="False"></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="display: none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <div class="well col-xs-10 col-sm-10 col-md-6">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong><%= (Session["user"] as Entity.UserE).getNameSurname() %></strong>
                        <br>
                        <br>

                        <br>
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: <%= DateTime.Now.ToString() %></em>
                    </p>
                    <p>
                        <em>Pay #: 34522677W</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="paymentRepeater" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>

                                        <%# BusinessLayers.Business.getDietitianName( Eval("DietitianID") ) %>
                                   
                                    </td>
                                    <td>
                                        <%# Eval("UserID").ToString() %>
                                    </td>

                                    <td class="text-center">
                                        
                                         <%# Eval("Fee") %>
                                    </td>
                                    <td class="text-center"><%# total += Convert.ToInt32(Eval("Fee"))%></td>
                                </tr>


                            </ItemTemplate>
                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:Repeater>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="text-center">

                                <%= total.ToString() %>
                                   
                            </td>

                        </tr>
                    </tbody>
                </table>

            </div>

        </div>
    </div>


    <style>
        /* Padding - just for asthetics on Bootsnipp.com */
        body {
            margin-top: 20px;
        }

        /* CSS for Credit Card Payment form */
        .credit-card-box .panel-title {
            display: inline;
            font-weight: bold;
        }

        .credit-card-box .form-control.error {
            border-color: red;
            outline: 0;
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(255,0,0,0.6);
        }

        .credit-card-box label.error {
            font-weight: bold;
            color: red;
            padding: 2px 8px;
            margin-top: 2px;
        }

        .credit-card-box .payment-errors {
            font-weight: bold;
            color: red;
            padding: 2px 8px;
            margin-top: 2px;
        }

        .credit-card-box label {
            display: block;
        }
        /* The old "center div vertically" hack */
        .credit-card-box .display-table {
            display: table;
        }

        .credit-card-box .display-tr {
            display: table-row;
        }

        .credit-card-box .display-td {
            display: table-cell;
            vertical-align: middle;
            width: 50%;
        }
        /* Just looks nicer */
        .credit-card-box .panel-heading img {
            min-width: 180px;
        }
    </style>

</asp:Content>
