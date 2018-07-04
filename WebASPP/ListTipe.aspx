<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListTipe.aspx.cs" Inherits="WebASPP.ListTipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="NAMA_TIPE" HeaderText="NAMA_TIPE" SortExpression="NAMA_TIPE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Test_OnlineConnectionString2 %>" SelectCommand="SELECT [NAMA_TIPE] FROM [TIPE_SOAL] ORDER BY [NAMA_TIPE]"></asp:SqlDataSource>
        <asp:LinqDataSource ID="LinqDataSource5" runat="server" ContextTypeName="WebASPP.Test_OnlineEntities" EntityTypeName="" OrderBy="NAMA_TIPE" Select="new (NAMA_TIPE)" TableName="TIPE_SOAL">
        </asp:LinqDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Test_OnlineConnectionString %>" SelectCommand="SELECT [NAMA_TIPE] FROM [TIPE_SOAL] ORDER BY [NAMA_TIPE]"></asp:SqlDataSource>
        <asp:LinqDataSource ID="LinqDataSource4" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource3" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
    </form>
</body>
</html>
