<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TambahCountry.aspx.cs" Inherits="WORLD.TambahCountry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Tambah </title>
    <style type="text/css">
        .auto-style1 {
            width: 538px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 538px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 538px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 538px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            width: 538px;
            height: 59px;
        }
        .auto-style11 {
            height: 59px;
        }
        .auto-style12 {
            width: 538px;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</head>
<body id="yy">
    <form id="form1" runat="server">
        <div>
        </div>
        <table id="table1" class="auto-style2">
            <tr>
                <td class="auto-style10">Region :</td>
               <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" AutoPostBack="True" runat="server"  DataSourceID="SqlDataSource1" DataTextField="Name_Region" DataValueField="Name_Region" >
                    
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:worldConnectionString %>" SelectCommand="SELECT [Name_Region] FROM [Region]"></asp:SqlDataSource>
                    
               </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style1">Nama Negara :</td>
                <td id="DropDownList">
                    <asp:TextBox ID="NamaNegara" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Code :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="NamaNegara0" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style12">Continent :</td>
                <td class="auto-style13">
                    <asp:TextBox ID="NamaNegara1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style3">Surface_Area :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="NamaNegara2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style1">Indep Year :</td>
                <td>
                    <asp:TextBox ID="NamaNegara3" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Population :</td>
                <td>
                    <asp:TextBox ID="NamaNegara4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Life Expectancy :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="NamaNegara5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style1">GNP :</td>
                <td>
                    <asp:TextBox ID="NamaNegara6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">GNP Old :</td>
                <td>
                    <asp:TextBox ID="NamaNegara7" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Local Name :</td>
                <td>
                    <asp:TextBox ID="NamaNegara8" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Government :</td>
                <td>
                    <asp:TextBox ID="NamaNegara9" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Head :</td>
                <td>
                    <asp:TextBox ID="NamaNegara10" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Capital</td>
                <td>
                    <asp:TextBox ID="NamaNegara11" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Code 2 :</td>
                <td>
                    <asp:TextBox ID="NamaNegara12" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Change" runat="server" OnClick="Button1_Click" Text="Tambah" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style9">
                    <center> <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="795px">
                        <Columns>
                            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                            <asp:BoundField DataField="Name_Country" HeaderText="Name_Country" SortExpression="Name_Country" />
                            <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
                            <asp:BoundField DataField="Surface_Area" HeaderText="Surface_Area" SortExpression="Surface_Area" />
                            <asp:BoundField DataField="Indep_Year" HeaderText="Indep_Year" SortExpression="Indep_Year" />
                            <asp:BoundField DataField="Population" HeaderText="Population" SortExpression="Population" />
                            <asp:BoundField DataField="Code2" HeaderText="Code2" SortExpression="Code2" />
                            <asp:BoundField DataField="Capital" HeaderText="Capital" SortExpression="Capital" />
                            <asp:BoundField DataField="Head_Of_State" HeaderText="Head_Of_State" SortExpression="Head_Of_State" />
                            <asp:BoundField DataField="Government_Form" HeaderText="Government_Form" SortExpression="Government_Form" />
                            <asp:BoundField DataField="Local_Name" HeaderText="Local_Name" SortExpression="Local_Name" />
                            <asp:BoundField DataField="GNPOld" HeaderText="GNPOld" SortExpression="GNPOld" />
                            <asp:BoundField DataField="GNP" HeaderText="GNP" SortExpression="GNP" />
                            <asp:BoundField DataField="Life_Expectancy" HeaderText="Life_Expectancy" SortExpression="Life_Expectancy" />
                        </Columns>
                    </asp:GridView>  
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:worldConnectionString3 %>" SelectCommand="SELECT [Code], [Name_Country], [Continent], [Surface_Area], [Indep_Year], [Population], [Code2], [Capital], [Head_Of_State], [Government_Form], [Local_Name], [GNPOld], [GNP], [Life_Expectancy] FROM [country]"></asp:SqlDataSource>
                    </center>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
