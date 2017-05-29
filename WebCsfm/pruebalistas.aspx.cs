using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pruebalistas : System.Web.UI.Page
{
    static List<DetalleForm> listaDetalle = new List<DetalleForm>();
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void lbtnAgregar_Click(object sender, EventArgs e)
    {
        DetalleForm detalle = new DetalleForm();

        detalle.IdForm = 1; //Aqui se asigna el id del formulario correspondiente
        detalle.IdMedicamento = txtCodMedicamento.Text;//Codigo del medicamento
        detalle.Prescripcion = txtPrescripcion.Text;//Prescripcion correspondiente
       // detalle.EstadoEntrega = "P";//Todos los medicamentos deben ir con este estado... OJO!!!! revisar si en la clase que tienes en el proyecto, esta bool o string 
                                    //en la base de datos esta varchar2
        int agregar = 0;
        foreach (var item in listaDetalle)
        {
            if(item.IdMedicamento == detalle.IdMedicamento)
            {
                agregar= 1;
            }
        }
        if(agregar == 0)
        {
            listaDetalle.Add(detalle);
        }
        else
        {
            lblMensaje.Text = "Medicamento ya fue agregado al formulario";
        }
       
        gvDetalle.DataSource = listaDetalle;
        gvDetalle.DataBind();

        //Luego cuando se le da el Ok al formulario de medicamentos, se recorre la lista y se mandan los registros al webservice para grabar


    }

    protected void gvDetalleRowCommand(Object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Eliminar")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            listaDetalle.RemoveAt(index);
            gvDetalle.DataSource = listaDetalle;
            gvDetalle.DataBind();
        }

                      
      }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if(listaDetalle.Count == 0)
        {
            lblMensaje.Text = "Debe Ingresar un medicamento al menos";
        }
        else
        {
            //ingresar codigo para grabar
        }
    }
}