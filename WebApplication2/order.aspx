<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication2.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="bootstrap/bootstrap.css" rel="stylesheet" />
     <style type="text/css">
         .panel-default {
             height: 349px;
         }
         body {
             background-color:#400270;
         }
         #pay{
             background-color:#e2d8ed;
             color:#400270;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="container">
    <div class="row">
        <div class="col-xs-4 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" style="color:#e2d8ed;">
                        Payment Details
                    </h3>
                   
                    </div>
                
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group">
                        <label for="cardNumber" style="color:#e2d8ed;" >
                            CARD NUMBER</label>
                       
                            <asp:TextBox runat="server" class="form-control" id="cardNumber" placeholder="Valid Card Number" />
                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="cardNumber" ValidationExpression="\d{16}"
ErrorMessage="card number must be 16 number digits"

runat="server" Font-Size="Small" ForeColor="Red"/>

                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    
                        
                            
                               
                               
                                    <asp:TextBox runat="server" class="form-control" id="expityMonth" placeholder="MM"/>
                        <asp:RegularExpressionValidator id="RegularExpressionValidator2" ControlToValidate="expityMonth" ValidationExpression="\d{2}"
ErrorMessage="The date is not correct"

runat="server" Font-Size="Small" ForeColor="Red"/>
                                
                                
                                    <asp:TextBox runat="server" type="text" class="form-control" id="expityYear" placeholder="YY" />
                        <asp:RegularExpressionValidator id="RegularExpressionValidator3" ControlToValidate="expityYear" ValidationExpression="\d{2}"
ErrorMessage="The date is not correct"

runat="server" Font-Size="Small" ForeColor="Red"/>
                        </div>
                            
                        
                       
                                
                        <br />
                            <div>
                                <asp:TextBox runat="server"  type="password" class="form-control" id="cvCode" placeholder="CV" />
                                 <asp:RegularExpressionValidator id="RegularExpressionValidator4" ControlToValidate="cvCode" ValidationExpression="\d{3}"
ErrorMessage="The cv is not correct"

runat="server" Font-Size="Small" ForeColor="Red"/>
                            </div>
                        </div>
                       
                    </form>
                </div>
            </div>
            <ul class="nav nav-pills nav-stacked">
                
               
                
            </ul>
            <br/>
       <asp:Button Text="PAY" ID="pay" runat="server" OnClick="Unnamed1_Click" Width="723px" />
       <br />
       <br />
     
<br />
       

<p style="color:#e2d8ed;">Comment</p><br />
<asp:TextBox ID="TextBox2" runat="server" Width="268px"></asp:TextBox>
        </div>
    <asp:Label ID="t" runat="server" Text="Label" Visible="false" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;"></asp:Label>
    <asp:Label ID="p" runat="server" Text="Label" Visible="false" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;"></asp:Label>
    <asp:Label ID="oo1" runat="server" Text="Label" Visible="false" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;"></asp:Label>
    <asp:Label ID="s1" runat="server" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;" />
   </div>
      <script src="bootstrap/popper.min.js"></script>
        <script src="bootstrap/jquery-3.6.0.min.js"></script>
        <script src="bootstrap/bootstrap.js"></script>

</asp:Content>
