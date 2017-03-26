using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;



namespace CapaDatos
{
    public class clsCatalogos
    {
        public void Main()
        {


        }
        
        public DataTable Cargar_Catalogos(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");


            return oDT;

        }
        
    }
}
