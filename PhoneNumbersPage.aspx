<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhoneNumbersPage.aspx.cs" Inherits="WebFormsTest.PhoneNumbersPage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MainStyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #Text1 {
            margin-left: 50px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div style="height: 839px; font-family: 'Arial Black'; background-color: #336699;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Welcome to phone number filter" ForeColor="#33CC33"></asp:Label>
        &nbsp;<br/>
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ForeColor="#33CC33" ID="Label2" runat="server" Text="Phone number"></asp:Label>
        <asp:TextBox ID="PhoneInputTextBox" runat="server" style="margin-bottom: 0px; margin-left: 33px;" Height="16px" Width="141px" Columns="11"></asp:TextBox>
        <ajaxToolkit:MaskedEditExtender ID="PhoneInputTextBox_MaskedEditExtender" runat="server" AutoComplete="False" ClearMaskOnLostFocus="False" Mask="(999) 999-99-999" MessageValidatorTip="False" TargetControlID="PhoneInputTextBox" />
        &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="ButtonFilter_Click" style="margin-left: 20px" Text="FILTER" CssClass="buttonBase"/>
        <br/>
        <br/>
        <div style= "overflow: auto; height: 250px; width: 650px;">
        <asp:Table ID="Table1" runat="server" Height="250px" style="margin-left: 25px" Width="575px" BorderStyle="Solid" BorderWidth="1px" GridLines="Horizontal" HorizontalAlign="Justify">
        </asp:Table>
        </div>
        <asp:Button ID="Button2" runat="server" OnClick="ButtonExportToText_Click" style="margin-left: 25px; margin-top: 26px;" Text="EXPORT TO TEXT" CssClass="buttonBase" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Height="47px" Width="80px"/>
        <asp:Button ID="Button3" runat="server" OnClick="ButtonExportToCSV_Click" style="margin-left: 25px" Text="EXPORT TO CSV" CssClass="buttonBase" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Height="48px" Width="80px"/>
        <asp:Button ID="Button4" runat="server" OnClick="ButtonExportDuplicatesToText_Click" style="margin-left: 25px" Text="EXPORT DUPLICATES TO TEXT" CssClass="buttonBase" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Height="48px" Width="170px"/>
        <asp:Button ID="Button5" runat="server" OnClick="ButtonExportDuplicatesToCSV_Click" style="margin-left: 25px" Text="EXPORT DUPLICATES TO CSV" CssClass="buttonBase" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Height="48px" Width="170px"/>
        <br />
        <asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" runat="server">
        </asp:ScriptManager>
        <br />
    </div>
</form>
</body>
</html>