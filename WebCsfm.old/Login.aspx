<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login - Cesfam</title>
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/login.css" rel="stylesheet"/>

</head>
<body>
    <div class="jumbotron">
        <div class="container">
            <h1><img src="recursos/imagenes/logo_cesfam.jpg"/> Web CESFAM</h1>
        </div>
    </div>
    <form id="form1" runat="server" method="post">
        <fieldset>
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox id="user" type="text" class="form-control" name="user" placeholder="Usuario" runat="server" ToolTip="Usuario"></asp:TextBox>
            </div>
            <div><asp:Label id="test" runat="server"></asp:Label></div>
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <asp:TextBox id="password" type="password" class="form-control" name="password" placeholder="Clave" runat="server" ToolTip="Clave"></asp:TextBox>
            </div>
            <br />
            <asp:Button class="btn btn-success" runat="server" Text="Ingresar" ID="btnIngresar" OnClick="btnIngresar_Click"/>
        </fieldset>
    </form>
</body>
</html>
