<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add product.aspx.cs" Inherits="WebApplication2.Add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/add_product.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body{
            background-color:#400270;
        }
    </style>
    <div class="container" style="background-color:#e2d8ed; width:550px; height:450px;">
        <div class="row">
            <div >
                <h2>Add Product</h2>
                
            
          proudectName      <asp:TextBox ID="proudectName" runat="server" ></asp:TextBox>
                <br />
            UnitPrice    <asp:TextBox  ID="UnitPrice" runat="server"></asp:TextBox>
                <br />
             described   <asp:TextBox  ID="described" runat="server"></asp:TextBox>
                
                    <h4>Select a file to upload:</h4>
                    <asp:FileUpload  ID="FileUpload1" runat="server"></asp:FileUpload>
                    <br />
                    <asp:Button ID="UploadButton" Text="Upload file" OnClick="UploadButton_Click" runat="server"></asp:Button>
                    <asp:Label ID="UploadStatusLabel" runat="server"></asp:Label>
               

            </div>
        </div>
        <asp:Label ID="L" runat="server"></asp:Label>
        <asp:Label ID="t" runat="server"></asp:Label>
        
    </div>

      




    <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>


</asp:Content>

