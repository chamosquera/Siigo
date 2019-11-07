using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica.Clientes;
namespace CuerosColombia.forms.clientes
{
    public partial class _default : System.Web.UI.Page
    {
        Logica.Clientes.Cliente ob = new Logica.Clientes.Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.listar_clientes();
            }
        }

        protected void guardar(object sender, EventArgs e)
        {
            msn.Text = ob.insertar_cliente(txt_id.Text, txt_nombre.Text, txt_apellido.Text);
            alert.Visible = true;
            Response.Redirect("/forms/clientes/");
        }

        protected void test(object sender, EventArgs e)
        {
            Random r = new Random();
            string[] productos = new string[] { "BETUN", "CORREA", "BOLSO", "PUSLSERA", "ZAPATOS" };

            string[] descripciones = new string[] { "Azul", "Negro", "Cafe", "Beige", "Vinotinto" };


            for (int i = 1000; i <= 100000; i++)
            {
                int empresa = r.Next(1, 10);
                int producto = r.Next(0, 4);
                int descripcion = r.Next(0, 4);
                ob.insertar_prod_test(i.ToString(), empresa.ToString(), productos[producto].ToString(), descripciones[descripcion].ToString(), i.ToString());
            }
        }

        protected void act(object sender, EventArgs e)
        {
            Random r = new Random();
            string[] productos = new string[] { "BETUN", "CORREA", "BOLSO", "PUSLSERA", "ZAPATOS" };

            string[] descripciones = new string[] { "Azul", "Negro", "Cafe", "Beige", "Vinotinto" };


            for (int i = 1; i <= 100; i++)
            {
                int id_actualiza = r.Next(1, 500);

                int empresa = r.Next(1, 10);
                int producto = r.Next(0, 4);
                int descripcion = r.Next(0, 4);
                ob.update_producto(empresa.ToString(), productos[producto].ToString(), descripciones[descripcion] + " Actualizado".ToString(), i.ToString(), id_actualiza.ToString());
            }
        }

        protected void actualizar(object sender, EventArgs e)
        {
            msn.Text = ob.insertar_cliente(txt_id.Text, txt_nombre.Text, txt_apellido.Text);
            alert.Visible = true;
            Response.Redirect("/forms/clientes/");
        }
        protected void listar_clientes()
        {
            repeater_clientes.DataSource = ob.listar_clientes();
            repeater_clientes.DataBind();
        }

        protected void ver(Object Sender, RepeaterCommandEventArgs e)
        {
            Label lb_identificacion = (Label)e.Item.FindControl("lb_id");
            Label lb_nombres = (Label)e.Item.FindControl("lb_nombres");
            Label lb_apellidos = (Label)e.Item.FindControl("lb_apellidos");

            chamo.InnerText = "Indentificación/NIT: " + lb_identificacion.Text;
            edit_nombres.Text = lb_nombres.Text;
            edit_apellidos.Text = lb_apellidos.Text;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

    }
}