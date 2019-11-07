using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuerosColombia.forms.productos
{
    public partial class buscador : System.Web.UI.Page
    {
        Logica.Clientes.Cliente ob = new Logica.Clientes.Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chamo(object sender, EventArgs e)
        {
            datos.DataSource = ob.buscador(empresas.SelectedValue,TextBox1.Text);
            datos.DataBind();
        }
    }
}