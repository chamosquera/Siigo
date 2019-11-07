using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Datos.Negocios;

namespace Logica.Clientes
{
    public class Cliente
    {
        Datos.Negocios.Clientes ob = new Datos.Negocios.Clientes();

        public DataSet listar_clientes()
        {
            return ob.listar_clientes();
        }

        public DataSet listar_productos()
        {
            return ob.listar_productos();
        }

        public DataSet buscador(string empresa, string cadena)
        {
            return ob.buscador(empresa, cadena);
        }

        public string insertar_cliente(string identificacion, string nombre, string apelldio)
        {
            if (ob.insertar_cliente(identificacion, nombre, apelldio) == 1)
            {
                return nombre.ToUpper() + " " + apelldio.ToUpper() + " ha sido insertado correctamente";
            }
            else
            {
                return "Error al insertar";
            }
        }
        public void insertar_prod_test(string producto, string empresa, string nombre, string descripcion, string precio)
        {
            ob.insertar_prod_test(producto, empresa, nombre, descripcion, precio);
        }

        public int update_producto(string empresa, string nombre, string descripcion, string precio, string producto)
        {
            return update_producto(empresa, nombre, descripcion, precio, producto);
        }

    }
}
