<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahSubtes.aspx.cs" Inherits="WebASPP.TambahTes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 240px;
        }
        .auto-style4 {
            height: 23px;
            width: 348px;
        }
        .auto-style5 {
            width: 348px;
        }
        .auto-style6 {
            width: 0px;
        }
        .auto-style7 {
            width: 240px;
        }
        .auto-style8 {
            width: 217%;
            height: 356px;
            margin-left: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel2" runat="server" BackColor="#003366" Height="45px" Width="940px">
        </asp:Panel>
        <div class="auto-style6">
            <asp:Panel ID="Panel1" runat="server" Height="417px" Width="178px" BackColor="#FFB9FF">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style2">Created by :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="CratedByInput" runat="server" Width="161px"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CratedByInput" ErrorMessage="Nama Tidak Diisi">Tidak Diisi</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Created date :</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="CratedDateInput" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Modified by :</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="ModifiedByInput" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Durasi sub :</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="DurasiInput" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Simpan" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="EditSubTes.aspx">Dashboard</asp:LinkButton>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebASPP.Test_OnlineEntities" EntityTypeName="" TableName="SUBTES" Where="Created_by == @Created_by">
                    <WhereParameters>
                        <asp:FormParameter DefaultValue="NULL" FormField="NULL" Name="Created_by" Type="String" />
                    </WhereParameters>
                </asp:LinqDataSource>
                <center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ID_SUBTES" HeaderText="ID_SUBTES" SortExpression="ID_SUBTES" />
                            <asp:BoundField DataField="ID_TES" HeaderText="ID_TES" SortExpression="ID_TES" />
                            <asp:BoundField DataField="DURASI_SUB" HeaderText="DURASI_SUB" SortExpression="DURASI_SUB" />
                            <asp:BoundField DataField="Created_by" HeaderText="Created_by" SortExpression="Created_by" />
                            <asp:BoundField DataField="Created_date" HeaderText="Created_date" SortExpression="Created_date" />
                            <asp:BoundField DataField="Modified_by" HeaderText="Modified_by" SortExpression="Modified_by" />
                            <asp:CheckBoxField DataField="Is_Active" HeaderText="Is_Active" SortExpression="Is_Active" />
                        </Columns>
                    </asp:GridView>
                </center>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
