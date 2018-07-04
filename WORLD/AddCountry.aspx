<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCountry.aspx.cs" Inherits="WORLD.AddCountry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 130px;
        }
        .auto-style2 {
            width: 130px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 578px;
        }
        .auto-style5 {
            height: 23px;
            width: 578px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Region :</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name_Region" DataValueField="Name_Region">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:worldConnectionString4 %>" SelectCommand="SELECT [Name_Region] FROM [Region]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Code&nbsp;&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Name_Country :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="countryh" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Continent :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="continent" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Surface_Area</td>
                <td class="auto-style4">
                    <asp:TextBox ID="surface" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Indep_Year</td>
                <td class="auto-style4">
                    <asp:TextBox ID="indep" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Population</td>
                <td class="auto-style4">
                    <asp:TextBox ID="population" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Life_Expectancy</td>
                <td class="auto-style4">
                    <asp:TextBox ID="life" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">GNP</td>
                <td class="auto-style4">
                    <asp:TextBox ID="gnp" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">GNPOld</td>
                <td class="auto-style4">
                    <asp:TextBox ID="gnpold" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Local_Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="local" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Government_Form</td>
                <td class="auto-style4">
                    <asp:TextBox ID="government" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Head_Of_State</td>
                <td class="auto-style4">
                    <asp:TextBox ID="head" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Capital</td>
                <td class="auto-style4">
                    <asp:TextBox ID="capital" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Code2</td>
                <td class="auto-style4">
                    <asp:TextBox ID="code2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Simpan" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                        <Columns>
                            <asp:CommandField HeaderText="Edit" SelectText="Edit" ShowSelectButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:worldConnectionString16 %>" SelectCommand="SELECT Country.ID, Region.Name_Region, Country.Code, Country.Name_Country, Country.Continent, Country.Surface_Area, Country.Indep_Year, Country.Population, Country.Code2, Country.Capital, Country.Head_Of_State, Country.Government_Form, Country.Local_Name, Country.GNPOld, Country.GNP, Country.Life_Expectancy FROM Country INNER JOIN Region ON Country.Region_ID = Region.ID"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
