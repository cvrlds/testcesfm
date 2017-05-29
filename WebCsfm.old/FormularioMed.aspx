<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormularioMed.aspx.cs" Inherits="Pruebas" %>

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
                        <th>Prescripción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ico form-inline">
                            <button type="button" id="med1" class="glyphicon glyphicon-search" runat="server"></button>
                            <asp:Label ID="txMed1" class="valPresc" runat="server" disabled></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txPresc1" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="ico">
                            <button type="button" id="med2" class="glyphicon glyphicon-search"  runat="server"></button>
                            <asp:Label ID="txMed2" class="valPresc" runat="server" disabled></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txPresc2" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="ico">
                            <button type="button" id="med3" class="glyphicon glyphicon-search"  runat="server"></button>
                            <asp:Label ID="txMed3" class="valPresc" runat="server" disabled></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txPresc3" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="ico">
                            <button type="button" id="med4" class="glyphicon glyphicon-search"  runat="server"></button>
                            <asp:Label ID="txMed4" class="valPresc" runat="server" disabled></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txPresc4" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="ico">
                            <button type="button" id="med5" class="glyphicon glyphicon-search"  runat="server"></button>
                            <asp:Label ID="txMed5" class="valPresc" runat="server" disabled></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txPresc5" class="valPresc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>


        <!-- Modal -->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                CancelControlID="btnCancel" OkControlID="btnOkay"
                TargetControlID="med1" PopupControlID="Panel1"
                PopupDragHandleControlID="popUpHeader" drag="true"
                BackgroundCssClass="ModalPopUpBG">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
                CancelControlID="btnCancel" OkControlID="btnOkay"
                TargetControlID="med2" PopupControlID="Panel1"
                PopupDragHandleControlID="popUpHeader" drag="true"
                BackgroundCssClass="ModalPopUpBG">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender3" runat="server"
                CancelControlID="btnCancel" OkControlID="btnOkay"
                TargetControlID="med3" PopupControlID="Panel1"
                PopupDragHandleControlID="popUpHeader" drag="true"
                BackgroundCssClass="ModalPopUpBG">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender4" runat="server"
                CancelControlID="btnCancel" OkControlID="btnOkay"
                TargetControlID="med4" PopupControlID="Panel1"
                PopupDragHandleControlID="popUpHeader" drag="true"
                BackgroundCssClass="ModalPopUpBG">
            </ajaxToolkit:ModalPopupExtender>
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender5" runat="server"
                CancelControlID="btnCancel" OkControlID="btnOkay"
                TargetControlID="med5" PopupControlID="Panel1"
                PopupDragHandleControlID="popUpHeader" drag="true"
                BackgroundCssClass="ModalPopUpBG">
            </ajaxToolkit:ModalPopupExtender>

            <asp:Panel class="panel" style="display: none" ID="Panel1" runat="server">
                <div class="HelloWorlPopup">
                    <div class="PopupHeader" id="popUpHeader">Buscar Medicamento</div>
                    <div class="PopupBody">
                        <br />
                        <div class="input-group">
                            <input type="button" id="btnBusca" runat="server" onserverclick="btnBusca_ServerClick"/>
                            <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
                        </div>
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" BorderColor="#336699" BorderStyle="Dashed" CellPadding="2" DataSourceID="WSCEFM" SelectedRowStyle-Width="Auto">
                                        <HeaderStyle BackColor="SteelBlue" />
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="WSCEFM" runat="server" SelectMethod="getMedicamentosPorNombre" TypeName="WSCESFM.Service1Client">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="txtBuscar" Name="strMedicamento" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </asp:Panel>
                        <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="btnBusca"
                            PopupControlID="Panel2" Position="Bottom" CommitProperty="value" CommitScript="e.value;">
                        </ajaxToolkit:PopupControlExtender>
                    </div>
                    <br />
                    <div class="Controls">
                        <input id="btnOkay" class="btn btn-success" type="button" value="Listo" runat="server" onserverclick="btnBusca_ServerClick"/>
                        <input id="btnCancel" class="btn btn-warning" type="button" value="Cancelar"/>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>