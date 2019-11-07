using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuerosColombia.forms.productos
{
    public partial class _default : System.Web.UI.Page
    {
        Logica.Clientes.Cliente ob = new Logica.Clientes.Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            repeater_productos.DataSource = ob.listar_productos();
            repeater_productos.DataBind();
        }
    }
}