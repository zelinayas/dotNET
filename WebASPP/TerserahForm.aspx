<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TerserahForm.aspx.cs" Inherits="WebASPP.TerserahForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 283px;
        }
        .auto-style2 {
            width: 171px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 393px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">Nama</td>
                <td class="auto-style2">
                    <asp:TextBox ID="NamaInput" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NamaInput" ErrorMessage="NamaValidator"></asp:RequiredFieldValidator>
&nbsp;Anda</td>
            </tr>
            <tr>
                <td class="auto-style1">Umur</td>
                <td class="auto-style2">
                    <asp:TextBox ID="UmurInput" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" BorderColor="#009933" ControlToValidate="UmurInput" ErrorMessage="Umur Wajib Diisi">Sesuatu</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="UmurInput" ErrorMessage="Umur Anda Labil" MaximumValue="40" MinimumValue="17"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="EmailInput" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailInput" ErrorMessage="Email Wajib Diisi"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Simpan" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
