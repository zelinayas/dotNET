<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUDCountry.aspx.cs" Inherits="WORLD.CRUDCountry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> CRUD Company </title>
    <style type="text/css">
        .auto-style1 {
            width: 259px;
        }
        .auto-style2 {
            margin-left: 1px;
        }
        .auto-style3 {
            width: 259px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 259px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="New Create" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style2" Height="231px" Width="965px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name_Region" HeaderText="Name_Region" SortExpression="Name_Region" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Name_Country" HeaderText="Name_Country" SortExpression="Name_Country" />
                <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
                <asp:BoundField DataField="Surface_Area" HeaderText="Surface_Area" SortExpression="Surface_Area" />
                <asp:BoundField DataField="Indep_Year" HeaderText="Indep_Year" SortExpression="Indep_Year" />
                <asp:BoundField DataField="Population" HeaderText="Population" SortExpression="Population" />
                <asp:BoundField DataField="Life_Expectancy" HeaderText="Life_Expectancy" SortExpression="Life_Expectancy" />
                <asp:BoundField DataField="GNP" HeaderText="GNP" SortExpression="GNP" />
                <asp:BoundField DataField="GNPOld" HeaderText="GNPOld" SortExpression="GNPOld" />
                <asp:BoundField DataField="Local_Name" HeaderText="Local_Name" SortExpression="Local_Name" />
                <asp:BoundField DataField="Government_Form" HeaderText="Government_Form" SortExpression="Government_Form" />
                <asp:BoundField DataField="Head_Of_State" HeaderText="Head_Of_State" SortExpression="Head_Of_State" />
                <asp:BoundField DataField="Capital" HeaderText="Capital" SortExpression="Capital" />
                <asp:BoundField DataField="Code2" HeaderText="Code2" SortExpression="Code2" />
            </Columns>
        </asp:GridView>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:worldConnectionString8 %>" DeleteCommand="DELETE FROM [Country] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Country] ([Region_ID], [Code], [Name_Country], [Continent], [Surface_Area], [Indep_Year], [Population], [Life_Expectancy], [GNP], [GNPOld], [Local_Name], [Government_Form], [Head_Of_State], [Capital], [Code2]) VALUES (@Region_ID, @Code, @Name_Country, @Continent, @Surface_Area, @Indep_Year, @Population, @Life_Expectancy, @GNP, @GNPOld, @Local_Name, @Government_Form, @Head_Of_State, @Capital, @Code2)" SelectCommand="SELECT Country.ID, Country.Code, Country.Name_Country, Country.Continent, Country.Surface_Area, Country.Indep_Year, Country.Population, Country.Life_Expectancy, Country.GNP, Country.GNPOld, Country.Local_Name, Country.Government_Form, Country.Head_Of_State, Country.Capital, Country.Code2, Region.Name_Region FROM Country INNER JOIN Region ON Country.Region_ID = Region.ID" UpdateCommand="UPDATE [Country] SET [Region_ID] = @Region_ID, [Code] = @Code, [Name_Country] = @Name_Country, [Continent] = @Continent, [Surface_Area] = @Surface_Area, [Indep_Year] = @Indep_Year, [Population] = @Population, [Life_Expectancy] = @Life_Expectancy, [GNP] = @GNP, [GNPOld] = @GNPOld, [Local_Name] = @Local_Name, [Government_Form] = @Government_Form, [Head_Of_State] = @Head_Of_State, [Capital] = @Capital, [Code2] = @Code2 WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Region_ID" Type="Int32" />
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Name_Country" Type="String" />
                <asp:Parameter Name="Continent" Type="String" />
                <asp:Parameter Name="Surface_Area" Type="Double" />
                <asp:Parameter Name="Indep_Year" Type="Int32" />
                <asp:Parameter Name="Population" Type="Int32" />
                <asp:Parameter Name="Life_Expectancy" Type="Double" />
                <asp:Parameter Name="GNP" Type="Double" />
                <asp:Parameter Name="GNPOld" Type="Double" />
                <asp:Parameter Name="Local_Name" Type="String" />
                <asp:Parameter Name="Government_Form" Type="String" />
                <asp:Parameter Name="Head_Of_State" Type="String" />
                <asp:Parameter Name="Capital" Type="Int32" />
                <asp:Parameter Name="Code2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Region_ID" Type="Int32" />
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Name_Country" Type="String" />
                <asp:Parameter Name="Continent" Type="String" />
                <asp:Parameter Name="Surface_Area" Type="Double" />
                <asp:Parameter Name="Indep_Year" Type="Int32" />
                <asp:Parameter Name="Population" Type="Int32" />
                <asp:Parameter Name="Life_Expectancy" Type="Double" />
                <asp:Parameter Name="GNP" Type="Double" />
                <asp:Parameter Name="GNPOld" Type="Double" />
                <asp:Parameter Name="Local_Name" Type="String" />
                <asp:Parameter Name="Government_Form" Type="String" />
                <asp:Parameter Name="Head_Of_State" Type="String" />
                <asp:Parameter Name="Capital" Type="Int32" />
                <asp:Parameter Name="Code2" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
