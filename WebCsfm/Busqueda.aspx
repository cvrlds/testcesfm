<%@ Page Title="" Language="C#" MasterPageFile="~/MasterWBCsfm.master" AutoEventWireup="true" CodeFile="Busqueda.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/buscar.css" rel="stylesheet"/>


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
<asp:Content CssClass="image" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <fieldset>
        <div class="input-group">
                <asp:TextBox id="txBusq" class="form-control" placeholder="Rut" autofocus="autofocus" runat="server" Width="200px" MaxLength="10"></asp:TextBox>
                <asp:Button id="btnBusq" OnClick="buscar_Click" class="btn btn-info" Text="Buscar" runat="server" ></asp:Button>
        </div>
        
        <div id="pnlNomb" class="input-group">
            <span id="tx" class="label-info input-group-addon">Nombre</span>
            <asp:TextBox type="text" class="form-control" ID="txtNombre" disabled runat="server"></asp:TextBox>
        </div>
        <div id="pnlRut" class="input-group">
            <span id="tx" class="label-info input-group-addon">Rut</span>
            <asp:TextBox type="text" class="form-control" ID="txtRut" disabled runat="server"></asp:TextBox>
        </div>
        <asp:Label id="test" runat="server"></asp:Label>
        <div id="pnlEdad" class="input-group">
            <span id="tx" class="label-info input-group-addon">Telefono</span>
            <asp:TextBox type="text" class="form-control" id="txtFono" disabled runat="server"></asp:TextBox>
        </div>
    </fieldset>
    <div id="fldBtnForm">
        <asp:Button id="btnForm" class="btn btn-success" runat="server" Text="Formulario Medicamentos" OnClick="btnForm_Click"></asp:Button>
    </div>
    
    <!-- Nuevo -->
    <div class="row">
        <div class="col-md-6">

          <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">Input masks</h3>
            </div>
            <div class="box-body">
              <!-- Date dd/mm/yyyy -->
              <div class="form-group">
                <label>Date masks:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask>
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- Date mm/dd/yyyy -->
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask>
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- phone mask -->
              <div class="form-group">
                <label>US phone mask:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- phone mask -->
              <div class="form-group">
                <label>Intl US phone mask:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- IP mask -->
              <div class="form-group">
                <label>IP mask:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-laptop"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'alias': 'ip'" data-mask>
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col (left) -->
        <div class="col-md-6">
          <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">Date picker</h3>
            </div>
            <div class="box-body">
              <!-- Date -->
              <div class="form-group">
                <label>Date:</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker">
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- Date range -->
              <div class="form-group">
                <label>Date range:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="reservation">
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- Date and time range -->
              <div class="form-group">
                <label>Date and time range:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-clock-o"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="reservationtime">
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.form group -->

              <!-- Date and time range -->
              <div class="form-group">
                <label>Date range button:</label>

                <div class="input-group">
                  <button type="button" class="btn btn-default pull-right" id="daterange-btn">
                    <span>
                      <i class="fa fa-calendar"></i> Date range picker
                    </span>
                    <i class="fa fa-caret-down"></i>
                  </button>
                </div>
              </div>
              <!-- /.form group -->

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col (right) -->
      </div>
      <!-- /.row -->

</asp:Content>

