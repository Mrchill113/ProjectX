<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TableInfo.aspx.cs" Inherits="ProjectX.HTML.TableInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


        <meta charset="utf-8" />
<title> Table Data and Info! </title>


        <style> 


body {
    background-color: whitesmoke;
}

.class1 {
    background-color: darkslategray;
    font-size: 1.2vw;
    font-family: Calibri;
}

table {
    text-align: center;
}

td {
    width: 220px;
    height: 40px;
    border: 2px solid gray;
    color: whitesmoke;
}

th {
    width: 220px;
    height: 40px;
    border: 2.5px solid gray;
    font-size: 1.5vw;
    color: whitesmoke;
    font-family: Calibri;
    background-color: dimgray;
}

            </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table style="margin-top: 10px">
    <tr style="background: whitesmoke; border: whitesmoke;">
            <h2> Team Specifications </h2>
    </tr>
    <tr>
        <th> Manufacturer </th>
        <th> Model </th>
        <th> Engine </th>
        <th> Hrosepower </th>
    </tr>
    <tr>
        <td class="class1"> Mercedes </td>
        <td class="class1"> AMG One </td>
        <td class="class1"> Turbo Hybrid V6 </td>
        <td class="class1"> 1063 </td>
    </tr>
    <tr>
        <td class="class1"> Porsche </td>
        <td class="class1"> Carrera GT </td>
        <td class="class1"> NA V10 </td>
        <td class="class1"> 603 </td>
    </tr>
    <tr>
        <td class="class1"> Ferrari </td>
        <td class="class1"> SF90 Stradale </td>
        <td class="class1"> Hybrid V8 </td>
        <td class="class1"> 986 </td>
    </tr>
    <tr>
        <td class="class1"> Chevrolet </td>
        <td class="class1"> Corvette ZO6 </td>
        <td class="class1"> NA V8 </td>
        <td class="class1"> 670 </td>
    </tr>
    <tr>
        <td class="class1"> BMW </td>
        <td class="class1"> M2 </td>
        <td class="class1"> Trubo I6 </td>
        <td class="class1"> 453 </td>
    </tr>
    <tr>
        <td class="class1"> Audi </td>
        <td class="class1"> RS6 Avant </td>
        <td class="class1"> Twin Turbo V8 </td>
        <td class="class1"> 591 </td>
    </tr>
    <tr>
        <td class="class1"> Toyota </td>
        <td class="class1"> GR Yaris </td>
        <td class="class1"> Turbo I3 </td>
        <td class="class1"> 257 </td>
    </tr>
    <tr>
        <td class="class1"> Renault </td>
        <td class="class1"> Megane RS </td>
        <td class="class1"> Turbo I4 </td>
        <td class="class1"> 300 </td>
    </tr>
</table>



</asp:Content>
