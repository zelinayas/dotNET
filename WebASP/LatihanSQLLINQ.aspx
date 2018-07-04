<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LatihanSQLLINQ.aspx.cs" Inherits="WebASP.TambahTes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="304px" Width="582px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="NAMA_TIPE" HeaderText="NAMA_TIPE" SortExpression="NAMA_TIPE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Test_OnlineConnectionString %>" SelectCommand="SELECT [NAMA_TIPE] FROM [TIPE_SOAL] ORDER BY [NAMA_TIPE]"></asp:SqlDataSource>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebASP.Test_OnlineEntities1" EntityTypeName="" OrderBy="ID_SOAL, ISI_SOAL, ID_SOAL" Select="new (ISI_SOAL)" TableName="SOAL">
        </asp:LinqDataSource>
    </form>
</body>
</html>
