<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login - Cesfam</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="generator" content="Mobirise v3.12.1, mobirise.com"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" href="assets/images/logo-cesfam-128x128.jpg" type="image/x-icon"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" />
    <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css" />
    <link rel="stylesheet" href="assets/tether/tether.min.css" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/animate.css/animate.min.css" />
    <link rel="stylesheet" href="assets/dropdown/css/style.css" />
    <link rel="stylesheet" href="assets/theme/css/style.css" />
    <link rel="stylesheet" href="assets/theme/css/style-rtl.css" />
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css" />
</head>
<body>
    <section id="menu-6">

    <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <span class="navbar-logo"><img src="assets/images/logo-cesfam-128x128.jpg" alt="Cesfam"></span>
                        <a class="navbar-caption">CESFAM</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar"><li class="nav-item"><a id="btnLogin" class="nav-link link" runat="server">Login</a></li></ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="engine"><a rel="external"></a></section><section class="mbr-section mbr-section-hero mbr-section-full mbr-after-navbar" id="header4-2" data-bg-video="https://www.youtube.com/embed/0DQfcrOQGDU?rel=0&amp;amp;showinfo=0&amp;autoplay=0&amp;loop=0">

    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(0, 0, 0);"></div>

    <div class="mbr-table-cell">

        <div class="container">
            <div class="row">
                <div class="mbr-section col-md-10 col-md-offset-1 text-xs-center">
                    <h1 class="mbr-section-title display-1"><span style="font-weight: normal;">Web CESFAM</span></h1>
                    <p class="mbr-section-lead lead"><br><span style="font-style: normal;">...Con tu ayuda, siempre habra un paciente feliz</span></p>
                </div>
            </div>
        </div>
    </div>
    <form id="form1" runat="server" method="post">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnLogin" PopupControlID="pnlLogin"></asp:ModalPopupExtender>
        <asp:Panel id="pnlLogin" runat="server">
            <fieldset>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox ID="user" type="text" class="form-control" name="user" placeholder="Usuario" runat="server" ToolTip="Usuario"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="test" runat="server"></asp:Label></div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <asp:TextBox ID="password" type="password" class="form-control" name="password" placeholder="Clave" runat="server" ToolTip="Clave"></asp:TextBox>
                </div>
                <br />
                <asp:Button class="btn btn-success" runat="server" Text="Ingresar" ID="btnIngresar" OnClick="btnIngresar_Click" />
            </fieldset>
        </asp:Panel>
    </form>

</section>

<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-2" style="background-color: rgb(50, 50, 50); padding-top: 1.75rem; padding-bottom: 1.75rem;">
    
    <div class="container">
        <p class="text-xs-center">DLC Team 2017</p>
    </div>
</footer>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/viewport-checker/jquery.viewportchecker.js"></script>
  <script src="assets/jquery-mb-ytplayer/jquery.mb.ytplayer.min.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
  <input name="animation" type="hidden" />

</body>
</html>
