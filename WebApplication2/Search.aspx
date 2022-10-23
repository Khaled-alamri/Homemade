<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication2.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" >  
    <div>    
   <table>  
    <tr>  
    <td>   
       Search  
        </td>  
        <td>  
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>  
        </td>  
        <td>   
        <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" />  
        </td>  
        </tr>  
</table>  
<table><tr><td><p><asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  </p></td></tr></table>  
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="proudectName" HeaderText="proudectName" SortExpression="proudectName" />
    </Columns>
    </asp:GridView>   
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT [proudectName] FROM [proudect]"></asp:SqlDataSource>
        
    </div>  
</form>  
</asp:Content>


