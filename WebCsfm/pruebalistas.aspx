<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pruebalistas.aspx.cs" Inherits="pruebalistas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title>Cesfam - Busqueda</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <link href="css/paneles.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="css/master.css" rel="stylesheet"/>
    <link href="css/form.css" rel="stylesheet"/>
    <link href="css/general.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="tbl">
            <table id="tabla" class="table table-hover table-responsive">
                <thead>
                    <tr>
                        <th>Medicamento</th>
                        <th>Stock</th>
                        <th>Prescripción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                          <asp:TextBox ID="txtCodMedicamento" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPrescripcion" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="lbtnAgregar" runat="server" CssClass="btn btn-info btn-xs" Text="OK" OnClick="lbtnAgregar_Click" >
                                <span class="glyphicon glyphicon-check"></span>Agregar</asp:LinkButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        <asp:GridView ID="gvDetalle" runat="server" AutoGenerateColumns="False" OnRowCommand="gvDetalleRowCommand">
            <Columns>
                <asp:BoundField DataField="IdMedicamento" HeaderText="COD. MEDICAMENTO" />
                <asp:BoundField DataField="Prescripcion" HeaderText="PRESCRIPCION" />
                <asp:ButtonField CommandName="Eliminar" Text="Eliminar" />
            </Columns>

        </asp:GridView>
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
       <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info btn-xs" Text="OK" OnClick="LinkButton1_Click"  >
           <span class="glyphicon glyphicon-save"></span>Grabar</asp:LinkButton>
        </div>
        
        </form>
</body>
</html>
