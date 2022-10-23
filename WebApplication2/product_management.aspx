<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product_management.aspx.cs" Inherits="WebApplication2.product_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            
        }
        body{
            background-color:#400270;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- card -->









    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="4" Height="583px" CellPadding="40">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <div>

                            <div class="card-body">
                                <div class="card-body" style="background-color: #e2d8ed; background-position: 240px 240px; background-repeat: no-repeat; background-attachment: fixed; width:240px;">
                                    <asp:Image class=" container card-img-top" ID="Image1" runat="server" ImageUrl='<%# Eval("File") %>' Height="170px" Width="240px" Style=" margin-top:4px;" />
                                    <asp:FileUpload ID="FileUpload2" runat="server" Visible="False" />
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <br />

                                    <asp:Label ID="IDproudect" runat="server" Text='<%# Eval("ProudectID") %>'></asp:Label>
                                    <br />

                                    proudectName:<asp:Label ID="Label2" runat="server" Text='<%# Eval("proudectName") %>'></asp:Label>
                                    <br />
                                    &nbsp;<asp:TextBox ID="name" runat="server" Text='<%# Eval("proudectName") %>' Visible="False"></asp:TextBox>
                                    <br />
                                    UnitPrice:<asp:Label ID="Label3" runat="server" Text='<%# Eval("UnitPrice") %>'></asp:Label>
                                    <br />
                                    &nbsp;<asp:TextBox ID="price" runat="server" Text='<%# Eval("UnitPrice") %>' Visible="False"></asp:TextBox>
                                    <br />
                                    described:<asp:Label ID="Label4" runat="server" Text='<%# Eval("described") %>'></asp:Label>
                                    <br />
                                    &nbsp;<asp:TextBox ID="descrbed" runat="server" Text='<%# Eval("described") %>' Visible="False"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="Edit" Width="119px" OnClick="Button1_Click" Style="background-color:#400270; color:#e2d8ed; margin-left:5px; border-radius:4px" />
                                    <br />
                                    <asp:Label ID="LU" runat="server" Text='<%# Eval("UsernameID") %>' Visible="False"></asp:Label>
                                    <br />

                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProudectID") %>' OnCommand="LinkButton1_Command" Visible="False" style="font-style:normal; font-size:22px;  color:#e2d8ed; background-color:#400270; margin-left:5px; border-radius:4px; " >Update</asp:LinkButton>
                                    
                            <asp:LinkButton ID="delete" runat="server" CommandArgument='<%# Eval("ProudectID") %>' OnCommand="delete_Command" Text="Delete" style="font-style:normal; font-size:22px;  color:#e2d8ed; background-color:#400270; margin-left:5px; border-radius:4px; "  />
                                </div>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT [UsernameID], [proudectName], [File], [ProudectID], [UnitPrice], [described], [phone] FROM [proudect] WHERE ([UsernameID] = @UsernameID)">
        <SelectParameters>
            <asp:SessionParameter Name="UsernameID" SessionField="User" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>











    <div class="container">
        <div class="d-grid gap-2 col-6 mx-auto">
            <asp:Button runat="server" Style="background-color: #e2d8ed; width: 450px; color: #400270; font-size: 45px; height: 60px; background-attachment:fixed " Text="Add Product " OnClick="Unnamed1_Click" />

        </div>
    </div>
    <script src="bootstrap/popper.min.js"></script>
    <script src="bootstrap/jquery-3.6.0.min.js"></script>
    <script src="bootstrap/bootstrap.js"></script>
</asp:Content>
