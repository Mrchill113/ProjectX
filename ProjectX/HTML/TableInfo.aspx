<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TableInfo.aspx.cs" Inherits="ProjectX.HTML.TableInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../StyleSheet2.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Team Specifications</h1>

<table style="max-width: 1200px;">
    <thead>
        <tr>
            <th>Team</th>
            <th>Constructors Championships Won</th>
            <th>Founded</th>
            <th>World Championships Won</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style = "background-color:#d9a5b3;">Mercedes</td>
            <td style = "background-color:#d9a5b3;">8</td>
            <td style = "background-color:#d9a5b3;">2010</td>
            <td style = "background-color:#d9a5b3;">7</td>
        </tr>
        <tr>
            <td style = "background-color:#d9a5b3;">Ferrari</td>
            <td style = "background-color:#d9a5b3;">16</td>
            <td style = "background-color:#d9a5b3;">1950</td>
            <td style = "background-color:#d9a5b3;">16</td>
        </tr>
        <tr>
            <td style = "background-color:#d9a5b3;">Red Bull Racing</td>
            <td style = "background-color:#d9a5b3;">6</td>
            <td style = "background-color:#d9a5b3;">2005</td>
            <td style = "background-color:#d9a5b3;">4</td>
        </tr>
        <tr>
            <td style = "background-color:#d9a5b3;">McLaren</td>
            <td style = "background-color:#d9a5b3;">8</td>
            <td style = "background-color:#d9a5b3;">1963</td>
            <td style = "background-color:#d9a5b3;">8</td>
        </tr>
        <tr>
            <td style = "background-color:#d9a5b3;">Aston Martin</td>
            <td style = "background-color:#d9a5b3;">N/A</td>
            <td style = "background-color:#d9a5b3;">2021</td>
            <td style = "background-color:#d9a5b3;">0</td>
        </tr>
    </tbody>
</table>
</asp:Content>
