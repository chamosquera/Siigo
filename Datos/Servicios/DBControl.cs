using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Oracle.DataAccess.Client;
using System.Configuration;
using System.Data;

namespace Datos.Servicios
{
    public class DBControl
    {
        private OracleConnection conexion;

        public OracleConnection Conexion
        {
            get { return conexion; }
        }

        public DBControl(string conexionString)
        {
            conexion = new OracleConnection(ConfigurationManager.ConnectionStrings[conexionString].ConnectionString);
        }

        public void AbrirConexion()
        {
            if (conexion.State != ConnectionState.Open)
                conexion.Open();
        }

        public void CerrarConexion()
        {
            if (conexion.State == ConnectionState.Open)
                conexion.Close();
        }

        public int EjecutarComando(string SQL)
        {
            AbrirConexion();
            OracleCommand Comando = new OracleCommand(SQL, conexion);
            return Comando.ExecuteNonQuery();
        }

        public DataSet Consultar(String SQL, String table)
        {
            AbrirConexion();
            OracleDataAdapter da = new OracleDataAdapter(SQL, conexion);
            DataSet ds = new DataSet();
            da.Fill(ds);
            CerrarConexion();
            return ds;

        }
    }
}
