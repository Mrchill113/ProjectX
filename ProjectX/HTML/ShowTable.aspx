﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="ProjectX.HTML.ShowTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style type="text/css">
    h1{color:aliceblue; text-align:center;}
    h2{text-align: center; direction:ltr;}
    h3{text-align: center;}

    tableDB{ border:1px solid black; margin:0px auto;}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>guests table</h1>
<h2><%= sqlSelect %></h2>

<table style="border: 1px solid black; margin: 0px auto;">

    <%= st %>

</table>

<h3><%= msg %></h3>

</asp:Content>