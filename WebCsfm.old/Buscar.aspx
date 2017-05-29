<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buscar.aspx.cs" Inherits="Buscar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2 style="color:Crimsom; font-style:italic;">Ejemplo</h2>
        <hr width="500" align="center" color="Salmon"/>

        <asp:TextBox ID="txtbusc" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" ForeColor="DodgerBlue" BackColor="AliceBlue"
            Font-Bold="False" Font-Italic="True" BorderColor="CornflowerBlue" Font-Names="Tahoma" DataSourceID="wscfm">
            <HeaderStyle ForeColor="Snow" BackColor="DodgerBlue" Font-Bold="true"/>
        </asp:GridView>
        <asp:ObjectDataSource ID="wscfm" runat="server" SelectMethod="getMedicamentosPorNombre" TypeName="WSCESFM.Service1Client">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtbusc" Name="strMedicamento" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="true" ForeColor="SaddleBrown" Text="Prueba"
            OnClick="Button1_Click" Height="45"/>
    </div>
    </form>
</body>
</html>
