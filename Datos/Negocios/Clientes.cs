using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Datos.Servicios;
using System.Data;
using Oracle.DataAccess.Client;

namespace Datos.Negocios
{
    public class Clientes
    {
        #region variables
        private DBControl db;
        #endregion

        # region get-set
        public Clientes()
        {
            db = new DBControl("CuerosCol");
        }


        #endregion

        public DataSet listar_clientes()
        {
            DataSet ds = new DataSet();
            db.AbrirConexion();

            OracleCommand cmd = new OracleCommand("PAQ_CUEROSCOL.PRO_LIST_CLIENTES", db.Conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            OracleParameter cursor = new OracleParameter("P_CURSOR", OracleDbType.RefCursor);
            cursor.Direction = ParameterDirection.Output;


            cmd.Parameters.Add(cursor);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            db.CerrarConexion();

            return ds;
        }

        public DataSet listar_productos()
        {
            DataSet ds = new DataSet();
            db.AbrirConexion();

            OracleCommand cmd = new OracleCommand("PAQ_CUEROSCOL.PRO_LISTA_PRODUCTOS", db.Conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            OracleParameter cursor = new OracleParameter("P_CURSOR", OracleDbType.RefCursor);
            cursor.Direction = ParameterDirection.Output;


            cmd.Parameters.Add(cursor);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            db.CerrarConexion();

            return ds;
        }

        public DataSet buscador(string empresa, string cadena)
        {
            DataSet ds = new DataSet();
            db.AbrirConexion();

            OracleCommand cmd = new OracleCommand("PAQ_CUEROSCOL.BUSCADOR", db.Conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            OracleParameter EMPRESA = new OracleParameter("EMPRESA", OracleDbType.Varchar2);
            EMPRESA.Direction = ParameterDirection.Input;
            EMPRESA.Value = empresa;

            OracleParameter PARAMETRO = new OracleParameter("P_BUSCAR", OracleDbType.Varchar2);
            PARAMETRO.Direction = ParameterDirection.Input;
            PARAMETRO.Value = cadena;


            OracleParameter cursor = new OracleParameter("P_CURSOR", OracleDbType.RefCursor);
            cursor.Direction = ParameterDirection.Output;

            cmd.Parameters.Add(EMPRESA);
            cmd.Parameters.Add(PARAMETRO);
            cmd.Parameters.Add(cursor);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            db.CerrarConexion();

            return ds;
        }

        public int insertar_cliente(string ididentificacion, string nombre, string apellido)
        {
            DataSet ds = new DataSet();
            db.AbrirConexion();

            OracleCommand cmd = new OracleCommand("PAQ_CUEROSCOL.PRO_INSERT_CLIENTE", db.Conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            OracleParameter id = new OracleParameter("P_ID_CLIENTE", OracleDbType.Int64);
            id.Direction = ParameterDirection.Input;
            id.Value = ididentificacion;

            OracleParameter nombres = new OracleParameter("P_NOMBRES", OracleDbType.Varchar2);
            nombres.Direction = ParameterDirection.Input;
            nombres.Value = nombre;

            OracleParameter apellidos = new OracleParameter("P_APELLIDOS", OracleDbType.Varchar2);
            apellidos.Direction = ParameterDirection.Input;
            apellidos.Value = apellido;

            OracleParameter ejecuto = new OracleParameter("EJECUTO", OracleDbType.Int64);
            ejecuto.Direction = ParameterDirection.Output;

            cmd.Parameters.Add(id);
            cmd.Parameters.Add(nombres);
            cmd.Parameters.Add(apellidos);
            cmd.Parameters.Add(ejecuto);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            db.CerrarConexion();

            return int.Parse(da.GetFillParameters()[3].Value.ToString());
        }

        public int update_producto(string empresa, string nombre,string descripcion, string precio, string producto)
        {
            DataSet ds = new DataSet();
            db.AbrirConexion();

            OracleCommand cmd = new OracleCommand("PAQ_CUEROSCOL.PRO_UPDATE_PRODUCTOS", db.Conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            OracleParameter P_EMPRESA = new OracleParameter("P_EMPRESA", OracleDbType.Int64);
            P_EMPRESA.Direction = ParameterDirection.Input;
            P_EMPRESA.Value = empresa;

            OracleParameter P_NOMBRE_PRODUCTO = new OracleParameter("P_NOMBRE_PRODUCTO", OracleDbType.Varchar2);
            P_NOMBRE_PRODUCTO.Direction = ParameterDirection.Input;
            P_NOMBRE_PRODUCTO.Value = nombre;

            OracleParameter P_DESCRIPCION = new OracleParameter("P_DESCRIPCION", OracleDbType.Varchar2);
            P_DESCRIPCION.Direction = ParameterDirection.Input;
            P_DESCRIPCION.Value = descripcion;

            OracleParameter P_LISTAR_PRECIO = new OracleParameter("P_LISTAR_PRECIO", OracleDbType.Int64);
            P_LISTAR_PRECIO.Direction = ParameterDirection.Input;
            P_LISTAR_PRECIO.Value = precio;

            OracleParameter P_ID_PRODUCTO = new OracleParameter("P_ID_PRODUCTO", OracleDbType.Int64);
            P_ID_PRODUCTO.Direction = ParameterDirection.Input;
            P_ID_PRODUCTO.Value = producto;

            OracleParameter ejecuto = new OracleParameter("P_EJECUTO", OracleDbType.Int64);
            ejecuto.Direction = ParameterDirection.Output;

            cmd.Parameters.Add(empresa);
            cmd.Parameters.Add(nombre);
            cmd.Parameters.Add(descripcion);
            cmd.Parameters.Add(precio);
            cmd.Parameters.Add(producto);
            cmd.Parameters.Add(ejecuto);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            db.CerrarConexion();

            return int.Parse(da.GetFillParameters()[5].Value.ToString());
        }

        public int insertar_prod_test(string producto, string empresa, string nombre, string descripcion, string precio)
        {
            DataSet ds = new DataSet();
            db.AbrirConexion();

            OracleCommand cmd = new OracleCommand("PAQ_CUEROSCOL.PRO_INSERT_PRODUCTOS", db.Conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            OracleParameter P_ID_PRODUCTOS = new OracleParameter("P_ID_PRODUCTOS", OracleDbType.Int64);
            P_ID_PRODUCTOS.Direction = ParameterDirection.Input;
            P_ID_PRODUCTOS.Value = producto;

            OracleParameter P_EMPRESA = new OracleParameter("P_EMPRESA", OracleDbType.Int64);
            P_EMPRESA.Direction = ParameterDirection.Input;
            P_EMPRESA.Value = empresa;

            OracleParameter P_NOMBRE = new OracleParameter("P_NOMBRE", OracleDbType.Varchar2);
            P_NOMBRE.Direction = ParameterDirection.Input;
            P_NOMBRE.Value = nombre;

            OracleParameter P_DESCRIPCION = new OracleParameter("P_DESCRIPCION", OracleDbType.Varchar2);
            P_DESCRIPCION.Direction = ParameterDirection.Input;
            P_DESCRIPCION.Value = descripcion;

            OracleParameter P_LIST_PRECIO = new OracleParameter("P_LIST_PRECIO", OracleDbType.Varchar2);
            P_LIST_PRECIO.Direction = ParameterDirection.Input;
            P_LIST_PRECIO.Value = precio;

            OracleParameter ejecuto = new OracleParameter("p_EJECUTO", OracleDbType.Int64);
            ejecuto.Direction = ParameterDirection.Output;

            cmd.Parameters.Add(P_ID_PRODUCTOS);
            cmd.Parameters.Add(P_EMPRESA);
            cmd.Parameters.Add(P_NOMBRE);
            cmd.Parameters.Add(P_DESCRIPCION);
            cmd.Parameters.Add(P_LIST_PRECIO);
            cmd.Parameters.Add(ejecuto);

            OracleDataAdapter da = new OracleDataAdapter(cmd);
            da.Fill(ds);

            db.CerrarConexion();

            return int.Parse(da.GetFillParameters()[5].Value.ToString());
        }

        //OracleParameter v_cod = new OracleParameter("COD_PAIS", OracleDbType.Varchar2);
        //v_cod.Direction = ParameterDirection.Input;
        //v_cod.Value = cod_pais;
    }
}