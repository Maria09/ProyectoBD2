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
        
        public DataTable Cargar_TipoPersonas(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");


            return oDT;

        }

        public DataTable Cargar_TipoTelefonos(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");
            return oDT;

        }

        public DataTable Cargar_TipoEmail(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");
            return oDT;

        }
        public DataTable Cargar_TipoUsuario(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");
            return oDT;

        }

        public DataTable Cargar_Genero(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");


            return oDT;

        }

        public DataTable Cargar_Provincias(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");


            return oDT;

        }

        public DataTable Cargar_Cantones(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");


            return oDT;

        }

        public DataTable Cargar_Distritos(string nombre)
        {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarCatalogos '" + nombre + "'");


            return oDT;

        }
    }
}
