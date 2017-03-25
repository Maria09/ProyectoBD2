using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace CapaDatos
{
    class clsConexion
    {
        private SqlConnection oCN = new SqlConnection("Data Source=DESKTOP-SJSQEQO\\SQL2016;Initial Catalog=ProyectoBD2;Integrated Security=True");


        public bool Abrir_Conexion()
        {
            try
            {
                oCN.Open();
                return true;
            }
            catch (Exception)
            {
                throw;
            }
            return false;
        }//fin abrir conexion


        public bool Cerrar_Conexion()
        {
            try
            {
                if (oCN.State == ConnectionState.Closed)
                {

                    return true;
                }

                oCN.Close();
                return false;
            }
            catch (Exception)
            {

                throw;
            }

        }//fin cerrar conexion

        public DataTable EjecutarCmd(CommandType pCmd, string consulta)
        {
            SqlCommand oCMd = new SqlCommand();
            DataTable oDT = new DataTable();
            SqlDataAdapter oSQLA = new SqlDataAdapter(oCMd);

            try
            {
                Abrir_Conexion();

                oCMd.CommandText = consulta;
                oCMd.CommandType = pCmd;
                oCMd.Connection = oCN;

                oSQLA.Fill(oDT);
            }
            catch (Exception)
            {
                throw;
            }

            Cerrar_Conexion();
            return oDT;

        }//fin del data table

        public void EjecutarInsertar(SqlCommand oSqlC)
        {
            try
            {
                oSqlC.Connection = oCN;
                if (Abrir_Conexion())
                {
                    oSqlC.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                throw;
            }

            Cerrar_Conexion();

        }//fin del data table
    }
}
