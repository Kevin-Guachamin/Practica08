using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;


namespace Practica08
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["seleccion"] = "";
                Session["costo"] = "0";
            }
        }

        protected void Opciones_CheckedChanged(object sender, EventArgs e)
        {
            StringBuilder seleccion = new StringBuilder("Tipo de masa: ");
            float costoTotal = 0;

            if (rbtDelgada.Checked)
            {
                seleccion.Append(rbtDelgada.Text + " ");
                costoTotal += float.Parse((String)Application["Delgada"]);
            }
            else if (rbtPanPizza.Checked)
            {
                seleccion.Append(rbtPanPizza.Text + " ");
                costoTotal += float.Parse((String)Application["Panpizza"]);
            }
            else if (rbtGruesa.Checked)
            {
                seleccion.Append(rbtGruesa.Text + " ");
                costoTotal += float.Parse((String)Application["Gruesa"]);
            }

            seleccion.Append("; Ingredientes: ");

            if (chkHongo.Checked)
            {
                seleccion.Append(chkHongo.Text + " ");
                costoTotal += float.Parse((String)Application["Champiñones"]);
            }
            if (chkPeperoni.Checked)
            {
                seleccion.Append(chkPeperoni.Text + " ");
                costoTotal += float.Parse((String)Application["Peperoni"]);
            }
            if (chkSalchicha.Checked)
            {
                seleccion.Append(chkSalchicha.Text + " ");
                costoTotal += float.Parse((String)Application["Salchicha"]);
            }

            literalSeleccionActual.Text = seleccion.ToString();
            txtTotal.Text = costoTotal.ToString();
        }


        protected void lnkCheckout_Click(object sender, EventArgs e)
        {
            Session["seleccion"] = literalSeleccionActual.Text;
            Session["costo"] = txtTotal.Text;

            Response.Redirect("Checkout.aspx");
        }

        protected void txtTotal_TextChanged(object sender, EventArgs e)
        {

        }

    }
}