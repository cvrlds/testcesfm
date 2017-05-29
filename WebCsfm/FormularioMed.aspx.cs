using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSCESFM;
using Negocio;
using Newtonsoft.Json;

public partial class Pruebas : System.Web.UI.Page
{
    Service1Client wsCSFM = new Service1Client();
    static List<DetalleForm> listaDetalle = new List<DetalleForm>();
    static List<Medicamento> listaMedica = new List<Medicamento>();
    Medicamento medica = new Medicamento();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Response.AddHeader("Refresh", Convert.ToString((Session.Timeout * 60) - 60));

            if (Session["nombMed"].ToString().Equals(" "))
            {
                Session.RemoveAll();
                Server.Transfer("./Login.aspx", true);
            }
            string ssNomb = Session["nombMed"].ToString() + " " + Session["apPatMed"].ToString();
            lblBienv.Text = "Bienvenido " + ssNomb;
            txtFecha.Text = DateTime.Now.ToString("dd/MM/yyyy");

            string valNomPac = Session["nombPac"].ToString() + " " + Session["apPatPac"].ToString() + " " + Session["apMatPac"].ToString();
            txtPac.Text = valNomPac;
            pnlBloqueo.CssClass = "Bloquea_fondo";
            Pnl_pop_up.CssClass = "Panel_PopUp_Documento";

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



    protected void lbtnBuscar1_Click(object sender, EventArgs e)
    {
        habilitarPopUp();
    }

    private void habilitarPopUp()
    {
        pnlBloqueo.Visible = true;
        Pnl_pop_up.Visible = true;
    }

    protected void lbtnClose_Click(object sender, EventArgs e)
    {
        pnlBloqueo.Visible = false;
        Pnl_pop_up.Visible = false;
    }

    protected void btnBuscarMedicamento_Click(object sender, EventArgs e)
    {
        string val = txtMedicamentoBuscar.Text.ToUpper();
        Service1Client WS = new Service1Client();
        gvMedicamentos.DataSource = WS.getMedicamentosPorNombre(val);
        gvMedicamentos.DataBind();
    }

    int RowIndex;
    
    protected void gvMedicamentos_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = gvMedicamentos.SelectedRow;
        
        medica.Nombre = gvMedicamentos.Rows[gvMedicamentos.SelectedIndex].Cells[1].Text;
        medica.Cantidad = int.Parse(gvMedicamentos.Rows[gvMedicamentos.SelectedIndex].Cells[2].Text);
        medica.UnidadMedida = gvMedicamentos.Rows[gvMedicamentos.SelectedIndex].Cells[3].Text;
        medica.Stock = int.Parse(gvMedicamentos.Rows[gvMedicamentos.SelectedIndex].Cells[4].Text);

        listaMedica.Add(medica);
        GridView1.DataSource = listaMedica;
        GridView1.DataBind();

        gvMedicamentos.DataSource = null;
        gvMedicamentos.DataBind();

        pnlBloqueo.Visible = false;
        Pnl_pop_up.Visible = false;
    }

   protected void GridView1RowCommand(Object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                listaMedica.RemoveAt(index);
                GridView1.DataSource = listaMedica;
                GridView1.DataBind();
            }
        }
        catch (Exception)
        {

            throw;
        }
    }

    protected void lbtOk_Click(object sender, EventArgs e)
    {
        if (listaMedica.Count == 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('" + "Debe Ingresar un al menos un Medicamento." + "');", true);
        }
        else
        {
            //ingresar codigo para grabar en las tablas correspondientes
        }
    }
}