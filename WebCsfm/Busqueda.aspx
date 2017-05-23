<%@ Page Title="" Language="C#" MasterPageFile="~/MasterWBCsfm.master" AutoEventWireup="true" CodeFile="Busqueda.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/busqueda.css" rel="stylesheet"/>
    <link href="css/general.css" rel="stylesheet"/>


    <style type="text/css">
        .auto-style2 {
            position: relative;
            display: table;
            border-collapse: separate;
            left: 0px;
            top: -6px;
            height: 33px;
            width: 187px;
        }
        .auto-style3 {
            left: 0px;
            top: 1px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <p id="titulo">Archivo de Pacientes</p>
    </div>
    <fieldset>
        <div class="inline">
            <div id="busq" class="auto-style2">
                <asp:TextBox id="txBusq" class="form-control" placeholder="Rut" autofocus="autofocus" runat="server" Width="200px" MaxLength="10"></asp:TextBox>
                <asp:Button id="btnBusq" OnClick="buscar_Click" class="btn btn-info" Text="Buscar" runat="server" ></asp:Button>
            </div>
        </div>
        
        <div id="pnlNomb" class="input-group">
            <span id="tx" class="label-info input-group-addon">Nombre</span>
            <asp:TextBox type="text" class="form-control" ID="txtNombre" disabled runat="server"></asp:TextBox>
        </div>
        <div id="pnlRut" class="input-group">
            <span id="tx" class="label-info input-group-addon">Rut</span>
            <asp:TextBox type="text" class="form-control" ID="txtRut" disabled runat="server"></asp:TextBox>
        </div>
        <div id="pnlEdad" class="input-group">
            <span id="tx" class="label-info input-group-addon">Telefono</span>
            <asp:TextBox type="text" class="form-control" id="txtFono" disabled runat="server"></asp:TextBox>
        </div>
    </fieldset>
    <div id="fldBtnForm">
        <asp:Button id="btnForm" class="btn btn-success" runat="server" Text="Form Medicamentos" OnClick="btnForm_Click"></asp:Button>
    </div>
</asp:Content>

