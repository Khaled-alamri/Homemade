<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="false" CodeBehind="order1.aspx.cs" Inherits="WebApplication2.order1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><style>
        body {
            background-color:#400270;
        }
    </style><asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="the order "></asp:Label>
        <br />
        <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [o1] WHERE ([Username_f] = @Username_f)" >
         <SelectParameters>
             <asp:SessionParameter Name="Username_f" SessionField="User" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
     <asp:DataList ID="DataList1" runat="server" DataKeyField="order_id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="40">
         <ItemTemplate >
              <div class="card-body"> 
                               <div class="card-body" style="background-color: #e2d8ed; background-position: 240px 240px; background-repeat: no-repeat; background-attachment: fixed;">
             order_id:
             <asp:Label ID="order_idLabel" runat="server" Text='<%# Eval("order_id") %>' />
             <br />
             price:
             <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
             <br />
             Quantity:
             <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
             <br />
             proudectName:
             <asp:Label ID="proudectNameLabel" runat="server" Text='<%# Eval("proudectName") %>' />
             <br />
             comment:
             <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
             <br />
             Username:
             <asp:Label ID="UsernameIDLabel" runat="server" Text='<%# Eval("UsernameID") %>' />
                                   <br />
                                   total price:<asp:Label ID="Label3" runat="server" Text='<%# Eval("total") %>'></asp:Label>
             <br />
             <asp:Button ID="Button1" runat="server"  Text="I receive" OnClick="Button1_Click" Style=" background-color:#400270; color:#e2d8ed; border-radius:14px; margin-left:4px;" />
             <asp:Button ID="b1" runat="server" Text="I sent" Width="110px" OnClick="b1_Click" Style=" background-color:#400270; color:#e2d8ed; border-radius:14px; margin-right:4px; margin-bottom:5px" />
<br />
                                   </div>
                  </div>
         </ItemTemplate>
     </asp:DataList>
    <asp:Label ID="s2" runat="server" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;" />
    <br />
    <asp:Label ID="s3" runat="server" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;" />
     <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
</asp:Content>
