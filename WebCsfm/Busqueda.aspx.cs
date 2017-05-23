using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSCESFM;
using Negocio;
using Newtonsoft.Json;


public partial class _Default : System.Web.UI.Page
{
    Service1Client wsCSFM = new Service1Client();
    Paciente pac = new Paciente();

    protected void Page_Load(object sender, EventArgs e)
    {
       if(Session["nobMedico"].ToString().Equals(" "))
        {
            Session.RemoveAll();
            Server.Transfer("./Login.aspx", true);
        }
    }

    protected void buscar_Click(object sender, EventArgs e)
    {
        string val = wsCSFM.getPacienteRut(txBusq.Text).Replace(@"\", "").Replace(@"[", "").Replace(@"]", "").Replace("}}", "}");
        val = val.Substring(val.IndexOf(':') + 1);

        try
        {
            if(val.Equals("}"))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "No se encuentra el Paciente. Favor intente de nuevo" + "');", true);
                txBusq.Text = string.Empty;
                txtNombre.Text = string.Empty;
                txtRut.Text = string.Empty;
                txtFono.Text = string.Empty;
            }
            else
            {
                pac = JsonConvert.DeserializeObject<Paciente>(val);
                string rut = pac.Rut;

                if (rut.Equals(txBusq.Text))
                {
                    txtNombre.Text = pac.Nombres + " " + pac.ApellidoPat + " " + pac.ApellidoMat;
                    txtRut.Text = rut;
                    txtFono.Text = pac.Celular.ToString();
                    txBusq.Text = string.Empty;
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "No se encuentra el Paciente. Favor intente de nuevo" + "');", true);
                }
            }
        }
        catch (ArgumentNullException ex)
        {
            throw new ArgumentNullException("Por favor contacte al Equipo Informatico. ", ex);
        }

    }

    protected void btnForm_Click(object sender, EventArgs e)
    {
        if (pac.Rut.Equals(" "))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "Favor ingrese un Paciente." + "');", true);
        }
        else
        {
            Session["rutPac"] = pac.Rut;
            Session["nombPac"] = pac.Nombres;
            Response.Redirect("./FormularioMed.aspx");
        }       
    }
}