using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using WSCESFM;
using Negocio;
using System.Windows;

public partial class Login : System.Web.UI.Page
{
    Service1Client wsCSFM = new Service1Client();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        string val = wsCSFM.getMedicoRut(user.Text).Replace(@"\", "").Replace(@"[", "").Replace(@"]", "").Replace("}}", "}");
        val = val.Substring(val.IndexOf(':') + 1);

        try
        {
            if (val.Equals("}"))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "Su usuario es Incorrecto, favor intentar nuevamente." + "');", true);
                user.Text = string.Empty;
                password.Text = string.Empty;
            }
            else
            {
                Medico med = JsonConvert.DeserializeObject<Medico>(val);
                string rut = med.RutUser;
                string pass = med.Pass;
                string nomb = med.Nombres + " " + med.ApellidoPat;
                string txUser = user.Text;
                string txPass = password.Text;

                if (rut.Equals(txUser))
                {
                    if (pass.Equals(txPass))
                    {
                        Session["nombMed"] = med.Nombres;
                        Session["apPatMed"] = med.ApellidoPat;
                        Session["rutMed"] = med.RutUser;
                        Server.Transfer("./Busqueda.aspx", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "Su contraseña es Incorrecta, favor intentar nuevamente." + "');", true);
                    }
                }

                user.Text = string.Empty;
                password.Text = string.Empty;
            }
            
        }
        catch (ArgumentNullException ex)
        {
            throw new ArgumentNullException("Por favor contacte al Equipo Informatico. ", ex);
        }
      }
}