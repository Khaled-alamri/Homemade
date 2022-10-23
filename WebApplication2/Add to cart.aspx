<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add to cart.aspx.cs" Inherits="WebApplication2.Add_to_cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="bootstrap/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        class="table table-bordered table-condensed table-responsive table-hover col-12" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" GridLines="None" ShowFooter="True" Height="269px" Width="100%" CssClass="col-12" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="a" HeaderText="No" />
            <asp:BoundField DataField="id" HeaderText="ProudectID" />
            <asp:BoundField DataField="d" HeaderText="name" />
            <asp:ImageField DataImageUrlField="b" HeaderText="img">
                <ControlStyle Height="50px" Width="50px" />
            </asp:ImageField>
            <asp:BoundField DataField="e" HeaderText="price" />
             <asp:BoundField DataField="quantity" HeaderText="quantity" />
            <asp:BoundField DataField="UD" HeaderText="From" />
             
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    
    
    
    
    
    
     <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
      
    
    <asp:Button Style="margin-left:41%; margin-top:4px; height:50px; border-radius:9px; color:#ffffff; background-color:#400270;" ID="Button1" runat="server" OnClick="Button1_Click" Text="PAY" Width="249px"  />
      <asp:Label id="t" runat="server" Visible="false" />
    <asp:Label id="u" runat="server" Visible="false" />
     <asp:Label id="Label" runat="server" Visible="false"  />
    
    
</asp:Content>
