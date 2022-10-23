<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style>
       body{
           background-color:#400370;
       }

       
   </style>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT * FROM [proudect]"></asp:SqlDataSource>
   
      <asp:DataList ID="DataList1" runat="server" DataKeyField="ProudectID" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" CellPadding="30">
     
          <ItemTemplate >
            
                                
                         <div class="card-body"> 
                       <div class="card-body" style="background-color: #e2d8ed; background-position: 240px 240px; background-repeat: no-repeat; background-attachment: fixed; width:210px;height:340px; ">
            

                

                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProudectID") %>' Style="color:#e2d8ed;" ></asp:Label>
                        <br />
                        <asp:Image ID="Image1" Style="width:180px; height:120px; " runat="server" 
                            ImageUrl='<%# Eval("File") %>' Height="110px" Width="220px" />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("proudectName") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("UnitPrice") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("described") %>' ></asp:Label>
                        <br />
                        The phone:<asp:Label ID="Label5" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                        <br />
                        <asp:Label ID="UD" runat="server" Text='<%# Eval("UsernameID") %>' Visible="False"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox1"   runat="server" Width="40px" ></asp:TextBox>
                        <br />
                                   <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" />

                               </div>
                               </div>
                   
            <br />
        </ItemTemplate>
         
    </asp:DataList>
    <asp:Label id="t" runat="server" Visible="false" />
     <asp:Button ID="Button1" runat="server" Text="Add to cart"  OnClick="Button1_Click"  Visible="true" Style="background-attachment:fixed ; width:100px; height:50px; border-radius:9px; color:#400370; border:#400370; background-color:#e2d8ed; font:bold; position:fixed; left:42%; width:240px;" />
     <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
</asp:Content>
