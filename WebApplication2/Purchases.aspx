<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Purchases.aspx.cs" Inherits="WebApplication2.Purchases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Purchases.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body{
            background-color:#400270;
        }
    </style>
   <div class="container">
        <div class="row">
            <div class="col-lg-3 p-2 col-md-6 col-sm-12">
                <div class="card" style="background-color:#e2d8ed; width:200px; margin-top:30px ">
                 <img  src="img/f1.jpg" class="card-img-top" >
                  <div class="card-body" style="background-color:#e2d8ed;">
                  <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <div class="rating" style="margin-left:5px"> 
                  <input type="radio" name="rating" value="5" id="5">
                  <label for="5">☆</label> <input type="radio" name="rating" value="4" id="4">
                  <label for="4">☆</label> <input type="radio" name="rating" value="3" id="3">
                  <label for="3">☆</label> <input type="radio" name="rating" value="2" id="2">
                  <label for="2">☆</label> <input type="radio" name="rating" value="1" id="1">
                 <label for="1">☆</label>
                 </div>
                </div>
               </div>
            </div>   
         </div>
    </div>
</asp:Content>
