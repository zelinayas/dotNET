<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSubtes.aspx.cs" Inherits="WebASPS.EditSubtes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">ID Subtes :</td>
                <td>
                    <asp:TextBox ID="NamaIDInput" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Modified By :</td>
                <td>
                    <asp:TextBox ID="NamaModifiedByInput" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Change" runat="server" OnClick="Button1_Click" Text="Change" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
