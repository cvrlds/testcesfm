<%@ OutputCache Location="None" VaryByParam="None" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormularioMed.aspx.cs" Inherits="Pruebas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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

        <center>
            <div class="input-group">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info btn-sm" OnClick="lbtnBuscar1_Click"><span class="glyphicon glyphicon-search"></span></asp:LinkButton>
                <span class="lblbusca">Buscar Medicamento</span>
            </div>
            <br />
            <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1RowCommand">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Unidad" />
                    <asp:BoundField DataField="UnidadMedida" HeaderText="Medida" />
                    <asp:TemplateField HeaderText="Prescripción">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-xs btn-danger" CommandName="Delete" Text="Eliminar" 
                        HeaderText="Opciones" >
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
        
            
        <br />
        <div id="check">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="- El paciente debe controlarse antes de la proxima entrega -" />
        </div>
        <div id="btnOk" class="input-group">
            <button type="button" class="btn btn-success btn-lg btn-round" runat="server" onserverclick="lbtOk_Click"><span class="glyphicon glyphicon-ok"></span></button>
        </div>
        </center>

        <asp:Panel ID="pnlBloqueo" runat="server" Visible="False"></asp:Panel>
        <asp:Panel ID="Pnl_pop_up" runat="server" Visible="False">
             <div class ="panel-heading">
                <asp:Label ID="lbl_titulo"  CssClass="panel-title" runat="server" Text="Busqueda Medicamento" ></asp:Label>
                <asp:LinkButton ID="lbtnClose" runat="server" CssClass="close" aria-label="Close" OnClick="lbtnClose_Click" ><span aria-hidden="true">&times;</span></asp:LinkButton>
            </div>
            <div class ="panel-body">
                <asp:TextBox ID="txtMedicamentoBuscar" runat="server"></asp:TextBox>
                <asp:LinkButton ID="btnBuscarMedicamento" runat="server" CssClass="btn btn-info btn-md" OnCLick="btnBuscarMedicamento_Click"><span class="glyphicon glyphicon-search"></span>&nbsp Buscar</asp:LinkButton>
                <hr width="500" align="center" color="Salmon"/>
                <asp:GridView ID="gvMedicamentos" CssClass="table" runat="server"  
                    OnSelectedIndexChanged="gvMedicamentos_SelectedIndexChanged" AutoGenerateColumns="False">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-xs btn-success">
                        <ControlStyle CssClass="btn btn-xs btn-success" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Cant_Um" HeaderText="Unidad" />
                        <asp:BoundField DataField="nombre_unidad" HeaderText="Medida" />
                        <asp:BoundField DataField="stock_general" HeaderText="Stock Bodega" />
                    </Columns>
                    <HeaderStyle CssClass="header" />

                </asp:GridView> 
            </div>
        </asp:Panel>
        
    </form>
</body>
</html>