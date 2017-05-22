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

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void buscar_Click(object sender, EventArgs e)
    {
        string val = wsCSFM.getPacienteRut(buscar.Text).Replace(@"\", "").Replace(@"[", "").Replace(@"]", "").Replace("}}", "}");
        val = val.Substring(val.IndexOf(':') + 1);
        try
        {
            if(val.Equals("}"))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "No se encuentra el Paciente. Favor intente de nuevo" + "');", true);
                buscar.Text = string.Empty;
                txtNombre.Text = string.Empty;
                txtRut.Text = string.Empty;
                txtEdad.Text = string.Empty;
            }
            else
            {
                Paciente pac = JsonConvert.DeserializeObject<Paciente>(val);
                string rut = pac.Rut_Paciente;

                if (rut.Equals(txtRut.Text))
                {
                    txtNombre.Text = pac.Nombres + " " + pac.ApellidoPat + " " + pac.ApellidoMat;
                    txtRut.Text = pac.Rut_Paciente.ToString();
                    txtEdad.Text = pac.Celular.ToString();
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "No se encuentra el Paciente. Favor intente de nuevo" + "');", true);
                    txtNombre.Text = string.Empty;
                    txtRut.Text = string.Empty;
                    txtEdad.Text = string.Empty;
                }
            }
        }
        catch (ArgumentNullException ex)
        {
            throw new ArgumentNullException("Por favor contacte al Equipo Informatico. ", ex);
        }

    }
}