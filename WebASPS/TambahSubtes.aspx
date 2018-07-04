<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahSubtes.aspx.cs" Inherits="WebASPS.TambahSubtes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TES ONLINE</title>
    <style type="text/css">

        .auto-style2 {
            width: 185%;
            height: 230px;
            margin-left: 200px;
        }
        .auto-style3 {
            width: 125px;
            height: 42px;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style1 {
            width: 125px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="height: 0px; width: 0px; background-color : #d2d6de; margin-left: 11px;">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel3" runat="server" BackColor="#003366" Height="59px" Width="655px">
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" BackColor="#FFB9FF" CssClass="auto-style5" Height="402px" Width="171px">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Durasi sub :</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Created by :</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Wajib Diisi !"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Created date :</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Modified by :</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Wajib Diisi "></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Simpan" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Dashboard</asp:LinkButton>
            </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
