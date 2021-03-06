﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSCESFM;
using Negocio;
using AjaxControlToolkit;
using Newtonsoft.Json;
using System.Data;

public partial class Pruebas : System.Web.UI.Page
{
    Service1Client wsCSFM = new Service1Client();
    string valNomPac;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["nombMed"].ToString().Equals(" "))
            {
                Session.RemoveAll();
                Server.Transfer("./Login.aspx", true);
            }
            string ssNomb = Session["nombMed"].ToString() + " " + Session["apPatMed"].ToString();
            lblBienv.Text = "Bienvenido " + ssNomb;
            txtFecha.Text = DateTime.Now.ToString("dd/MM/yyyy");

            valNomPac = Session["nombPac"].ToString() + " " + Session["apPatPac"].ToString() + " " + Session["apMatPac"].ToString();
            txtPac.Text = valNomPac;
        }
        catch (NullReferenceException ne)
        {
            throw new NullReferenceException("Error: ", ne); 
        }
    }

    protected void btnSalir_ServerClick(object sender, EventArgs e)
    {
        try
        {
            Session.RemoveAll();
            Response.Redirect("./Login.aspx");
        }
        catch (ArgumentNullException arg)
        {
            throw new ArgumentNullException("Favor contactar al Administrador del Sistema!", arg);
        }
    }

    protected void btnBusca_ServerClick(object sender, EventArgs e)
    {
        try
        {
            GridView1.DataBind();
            txMed1.Text = GridView1.SelectedRow.Cells[1].Text;         
        }
        catch (NullReferenceException ex)
        {

            throw new NullReferenceException("error: ", ex);
        }
    }
}