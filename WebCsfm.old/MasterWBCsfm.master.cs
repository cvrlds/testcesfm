using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSCESFM;
using Negocio;
using Newtonsoft.Json;


public partial class MasterWBCsfm : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["nombMed"].ToString().Equals(" "))
            {
                Session.Abandon();
                Response.Redirect("./Login.aspx");
            }
            else
            {
                string ssNomb = Session["nombMed"].ToString() + " " + Session["apPatMed"].ToString();
                lblBienv.Text = "Bienvenido " + ssNomb;
            }
        }
        catch (NullReferenceException ae)
        {
            throw new NullReferenceException("Error: ", ae);
        }

    }

    protected void salir_Click(object sender, EventArgs e)
    {
        try
        {
            Session.RemoveAll();
            Server.Transfer("./Login.aspx", true);
        }
        catch (NullReferenceException nre)
        {

            throw new NullReferenceException("Favor contactar al Aministrador del Sistema!", nre);
        }
    }

}
