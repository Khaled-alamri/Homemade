<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <style>
        body{
            background-color:#400270;
        }
    </style>




    <div class="container" style="position:absolute; right:50%; ">
        <div class="row">
            <div class="col-md-6 offset-md-3">
            <div class="col-md-6 offset-md-3">

                <div class="card my-5" style=" background-color:#e2d8ed; width:600px; margin-left:200px">
                    <h2 class="text-center text-dark mt-5" style="margin-right:10px;">Login</h2>

                       
                   
                        <div class="mb-3"  style="width: 280px; margin-left: 160px;">
                            <asp:TextBox class="form-control form-control-lg" ID="Username" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldUsername" runat="server" ErrorMessage="Entr your username" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                        
                       <div class="mb-3" style="width: 280px; margin-left: 160px;">
                            <asp:TextBox class="form-control form-control-lg" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ErrorMessage="Entr your Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                        <div class="text-center">
                           
                            <asp:Button Text="Login" runat="server" OnClick="Loginup_Click" Style=" border-radius: 7px; width: 180px; height: 50px" />
                        </div>
                        <div id="emailHelp" class="form-text text-center mb-5 text-dark">
                            Not
              Registered?
                            <asp:HyperLink ID="Rg" class="small mb-5 pb-lg-2" NavigateUrl="~/Regestes.aspx" runat="server">New Account</asp:HyperLink>
                            <br />
                            <asp:HyperLink class="small mb-5 pb-lg-2" runat="server">Forget Passwoerd</asp:HyperLink>
                        </div>
                        </div>
                
            </div>

        </div>
            
    </div>
    </div>
</asp:Content>
