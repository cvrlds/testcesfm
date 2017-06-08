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
        try
        {
            if (Session["nombMed"].ToString().Equals(" "))
            {
                Session.Abandon();
                Server.Transfer("./Login.aspx", true);
            }
        }
        catch (NullReferenceException ae)
        {
            Console.Out.WriteLine("Error: " + ae);
            Session.Abandon();
            Server.Transfer("./Login.aspx", true);
        }
    }

    protected void buscar_Click(object sender, EventArgs e)
    {
        try
        {
            string val = wsCSFM.getPacienteRut(txBusq.Text).Replace(@"\", "").Replace(@"[", "").Replace(@"]", "").Replace("}}", "}");
            val = val.Substring(val.IndexOf(':') + 1);

       
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
                    Session["rutPac"] = pac.Rut;
                    Session["nombPac"] = pac.Nombres;
                    Session["apPatPac"] = pac.ApellidoPat;
                    Session["apMatPac"] = pac.ApellidoMat;

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
            Console.Out.WriteLine("Error: " + ex);
            Session.Abandon();
            Server.Transfer("./Login.aspx", true);
        }

    }

    protected void btnForm_Click(object sender, EventArgs e)
    {
        string val = txtNombre.Text;
        try
        {
            if (string.IsNullOrEmpty(val))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "Favor ingrese un Paciente." + "');", true);
            }
            else
            {
                //test.Text = Session["rutPac"].ToString();
                Response.Redirect("./FormularioMed.aspx");
            }
        }
        catch (NullReferenceException ex)
        {
            Server.Transfer("./Busqueda.aspx", true);
        }
    }
}