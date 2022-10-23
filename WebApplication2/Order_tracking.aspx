<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order_tracking.aspx.cs" Inherits="WebApplication2.Order_tracking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
body {
background-color:#400270;
}
</style> 
     <asp:DataList ID="DataList1" runat="server" DataKeyField="order_id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="40" Width="984px">
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
             From:
             <asp:Label ID="f" runat="server" Text='<%# Eval("Username_f") %>'></asp:Label>
                                   <br />
                                   Stats order:<asp:Label ID="Label3" runat="server" Text='<%# Eval("order_stats") %>'></asp:Label>
                                   <br />
                                   total price:<asp:Label ID="Label4" runat="server" Text='<%# Eval("total") %>'></asp:Label>
             <br />
             <asp:Button ID="b1" runat="server"  Text="it was received" OnClick="Button1_Click" Style=" background-color:#400270; color:#e2d8ed; border-radius:14px; margin-left:4px; margin-bottom:5px;" />
                                  
                                   </div>
                  </div>
             
<br />
         </ItemTemplate>
     </asp:DataList>
    <asp:Label ID="s3" runat="server" Style=" color:#e2d8ed; font-size:22px; margin-left:40px;" />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [o1] WHERE ([UsernameID] = @UsernameID)">
         <SelectParameters>
             <asp:SessionParameter Name="UsernameID" SessionField="user" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
     <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
</asp:Content>
