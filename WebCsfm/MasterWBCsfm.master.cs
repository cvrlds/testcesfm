using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSCESFM;
using Negocio;
using Newtonsoft.Json;
using System.Web.Services.Description;

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
            Console.Out.WriteLine("Error: " + ae);
            Session.Abandon();
            Server.Transfer("./Login.aspx", true);
        }

    }

    protected void salir_Click(object sender, EventArgs e)
    {
            Session.Abandon();
            Server.Transfer("./Login.aspx", true);
        
    }

}
