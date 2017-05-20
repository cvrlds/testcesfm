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
        <asp:Label ID="lblBienv" runat="server" Font-Bold="True" Font-Names="Tahoma" ForeColor="Black" ToolTip="Hola!">Bienvenido (Usuario)</asp:Label>
        <asp:Panel ID="Panel1" runat="server">
            <a href="Login.aspx" ><asp:Label   ID="lbSalida" runat="server" Text="Label"><i class="glyphicon glyphicon-log-out"></i> Salir</asp:Label></a>
        </asp:Panel>
    </div>

    <div>
        <p id="titulo">Formulario Medicamentos</p>
    </div>
    <form id="form1" runat="server">

        <div class="inline">
            <label id="txtCodigo" for="lblCodigo">Código: </label>
            <asp:Label class="lblCodigo" ID="lblCodigo" runat="server" Enabled="false">(codigo)</asp:Label>
            <label id="txtTratam" for="lblTratam">Tratamiento</label>
            <asp:DropDownList class="lblTratam" ID="lblTratam" runat="server" Height="21px" Width="120px">
                <asp:ListItem Selected="True">Seleccionar...</asp:ListItem>
                <asp:ListItem Value="corto">Corto</asp:ListItem>
                <asp:ListItem Value="largo">Largo</asp:ListItem>
                <asp:ListItem Value="permanente">Permanente</asp:ListItem>
            </asp:DropDownList>
            <label id="txtFecha" for="lblFecha">Fecha: </label>
            <asp:Label class="lblFecha" ID="lblFecha" runat="server">(fecha)</asp:Label>
        </div>
        <div>
            <div>
                <asp:Label class="txtPaciente" for="lblPaciente" runat="server">Paciente:</asp:Label>
                <asp:Label class="lblPaciente" ID="lblPaciente" runat="server" Enabled="false">(paciente)</asp:Label>
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
                            <button type="button" id="" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></button>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></button>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></button>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></button>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="" class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></button>
                        </td>
                        <td></td>
                        <td></td>
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

        <!-- Modal -->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <!-- Modal -->
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div id="tituloMod" class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Buscar Medicamento</h4>
                            </div>
                            <div class="modal-body">
                                <div id="busq" class="input-group">
                                    <input id="buscar" type="text" class="form-control" name="buscar" placeholder="Ingresar Medicamento" />
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-search" ></i></span>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button Text="Guardar" runat="server" class="btn btn-success" data-dismiss="modal" />
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>