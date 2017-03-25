using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace prjConexion
{
    public class clsConexionBD
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
                oCMd.CommandText = consulta;
                oCMd.CommandType = pCmd;
                oCMd.Connection = oCN;
            }
            catch (Exception)
            {
                throw;
            }

            if (Abrir_Conexion())
            {
                oSQLA.Fill(oDT);
            }

            Cerrar_Conexion();
            return oDT;

        }//fin del data table
    }//fin de la clsConexion
}//fin del proyecto
