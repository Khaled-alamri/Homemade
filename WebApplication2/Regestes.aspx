<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regestes.aspx.cs" Inherits="WebApplication2.Regestes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
</head>
<body >
    <style>
        body{
            background-color:#400270;
        }
        #UserTayp{
            background-color:#400270;
            color:#e2d8ed;
        }
        #Rgst{
            margin-left:35%;
            margin-bottom:40px;
            background-color:#400270;
            color:#e2d8ed;
        }
    </style>
     <form id="form1" runat="server">
        <div class="container" style="margin-right:800px; width:700px">
            <section class=" gradient-custom ">
                <div class="container py-5 h-50">
                    <div class="row d-flex justify-content-center align-items-center h-50">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card text-dark" style="border-radius: 1rem; background-color:#e2d8ed; width:500px">
                                
                                    <h2 class="fw-bold mb-2 text-uppercase" style="margin-left:30%; margin-top:7px;">New Account</h2>
                                    <h5 class="text-dark-50 mb-5" style="margin-left:36%; margin-top:7px;">Please Enter Info </h5>
                                    <div class="form-outline form-white" style="width: 250px">
                                        
                                        <asp:TextBox class="form-control form-control-lg ml-5" ID="Username" placeholder="Enter Your Username" runat="server" Width="376px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldUsername" runat="server" ErrorMessage="Enter Your Username" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </div>
                                    <div class="form-outline form-white " style="width: 250px">
                                        <asp:TextBox class="form-control form-control-lg ml-5" ID="MobileNumber" placeholder="Enter Your Mobile Number" runat="server" TextMode="Number" Width="378px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldMobileNumber" runat="server" ErrorMessage="Enter Your Mobile Number" ControlToValidate="MobileNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="MobileNumber" ValidationExpression="\d{10}"
ErrorMessage="Telephone number must be 10 numeric digits"

runat="server" Font-Size="Small"/>

                                        <br />

                                    </div>
                                    <div class="form-outline form-white" style="width: 250px">
                                        <asp:TextBox class="form-control form-control-lg ml-5" ID="Email" placeholder="Enter Your Email" runat="server" TextMode="Email" Width="378px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldEmail" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <div class="form-outline form-white" style="width: 250px">
                                            <asp:TextBox class="form-control form-control-lg ml-5" ID="Addres" placeholder="Enter Your Address" runat="server" Width="378px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Address" ControlToValidate="Addres" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                        </div>

                                    </div>
                                    <div class="form-outline form-white" style="width: 250px">
                                        <asp:TextBox class="form-control form-control-lg ml-5" ID="Password" placeholder="Enter Your Password" runat="server" TextMode="Password" Width="377px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ErrorMessage="Enter Your Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator id="RegularExpressionValidator8"
ControlToValidate="Password"
ValidationExpression="\S{8,20}"
ErrorMessage="the password moust by btowen 8-20"
runat="server"/>

                                        
                                        <br />

                                    </div>
                                    <div class="form-outline form-white " style="width: 250px">
                                        <asp:TextBox class="form-control form-control-lg ml-5" ID="PasswordConfirmation" placeholder="Password Confirmation" runat="server" TextMode="Password" Width="379px" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredField" runat="server" ErrorMessage="Entr your PasswordConfirmation" ControlToValidate="PasswordConfirmation" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="ComparePassword" runat="server" ErrorMessage="Password must be the same" ControlToValidate="PasswordConfirmation" ControlToCompare="Password" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                   
                                    <div>
                                        <br />
                                        <h6 class="align-content-lg-around" style="margin-left:23%;">Select User Type   <asp:DropDownList Class="btn btn-dark dropdown-toggle" ID="UserTayp"  runat="server"  DataSourceID="SqlDataSource1" DataTextField="Usertyap" DataValueField="Usertyap">
                                           
                                        </asp:DropDownList>
                                        </h6>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [usertyap]"></asp:SqlDataSource>
                                        <br />
                                        <br />
                                    </div>
                                    <div>

                                        <asp:Button Class="btn btn-outline-dark btn-lg px-5" ID="Rgst" runat="server" Text="Registration" OnClick="Rgst_Click" />
                                        <br />

                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
            </section>
        </div>

    </form>
    <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
</body>
</html>
