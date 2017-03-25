using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace prjConexion
{
    class clsInicioSesion
    {
        public void Main()
        {


        }
        
        public DataTable Cargar_Genero()
        {
            DataTable oDT = new DataTable();

            clsConexionBD oC = new clsConexionBD();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "select * from Administrador");


            return oDT;

        }
    }
}
