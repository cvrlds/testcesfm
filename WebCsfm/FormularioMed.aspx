﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormularioMed.aspx.cs" Inherits="Pruebas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Cesfam - Busqueda</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="css/master.css" rel="stylesheet"/>
    <link href="css/form.css" rel="stylesheet"/>
    <link href="css/general.css" rel="stylesheet"/>


    </head>
<body>
    <div class="navbar">
        <div class="container">
            <h2><img src="recursos/imagenes/logo_cesfam.jpg"/> CESFAM - Santiago Centro</h2>
        </div>
    </div>        
    <div class="bread">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="true"/>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#990000" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
        </asp:SiteMapPath>
        <asp:Label ID="lblBienv" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="Black" ToolTip="Hola!">Bienvenido</asp:Label>
        <asp:Panel ID="lbSalida" runat="server">
            <span class="glyphicon glyphicon-log-out"><input id="btnSalir" type="button" runat="server" value="Salir" onserverclick="btnSalir_ServerClick"/></span>
        </asp:Panel>
    </div>

    <div>
        <p id="titulo">Formulario Medicamentos</p>
    </div>
    <form id="form1" runat="server">
        <div class="inline">
            <div id="pnlInp" class="input-group">
                <span id="tx" class="label-info input-group-addon">Paciente</span>
                <asp:TextBox type="text" class="form-control" id="txtPac" disabled runat="server"></asp:TextBox>
                <span id="tx" class="label-info input-group-addon">Fecha</span>
                <asp:TextBox type="text" class="form-control" id="txtFecha" disabled runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="inline">
            <div id="pnlTrat" class="input-group">
                <span id="tx" class="label-info input-group-addon">Tratamiento</span>
                <asp:DropDownList class="lblTratam form-control" ID="lblTratam" runat="server">
                    <asp:ListItem Selected="True">Seleccionar...</asp:ListItem>
                    <asp:ListItem Value="C">Corto</asp:ListItem>
                    <asp:ListItem Value="L">Largo</asp:ListItem>
                    <asp:ListItem Value="P">Permanente</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
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
                            <button type="button" id="med" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModalMed"></button>
                        </td>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txPresc1" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="med" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModalMed"></button>
                        </td>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txPresc2" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="med" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModalMed"></button>
                        </td>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txPresc3" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="med" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModalMed"></button>
                        </td>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txPresc4" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="med" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModalMed"></button>
                        </td>
                        <td></td>
                        <td>
                            <asp:TextBox ID="txPresc5" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="check">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="- El paciente debe controlarse antes de la proxima entrega -" />
        </div>
        <div id="btnOk">
            <button type="button" class="btn btn-success btn-lg btn-round"><span class="glyphicon glyphicon-ok"></span></button>
        </div>

        <!-- Modal Medicamento -->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            
        </asp:UpdatePanel>
    </form>
</body>
</html>