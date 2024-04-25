<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminControl.aspx.cs" Inherits="ProjectX.HTML.AdminControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../StyleSheet2.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Admin Control</h1>
    <h2><a href="ShowTable.aspx">ShowTable</a></h2>
    <h2><a href="DeleteUser.aspx">DeleteUser</a></h2>
    <h2><a href="DeleteAll.aspx">DeleteAll.aspx</a></h2>
    <h2><a href="OneAttribute.aspx">OneAttribute</a></h2>
    <h2><a href="TwoAttributes.aspx">TwoAttributes</a></h2>

</asp:Content>
