using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace CapaDatos
{
    public class clsInicioSesion
    {
        public void Main()
        {


        }

        public DataTable Cargar_Administrador(string nombreUsuarioAdmi, string contraseñaAdmi)
        {
            DataTable oDT;

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

             oDT = oC.EjecutarCmd(cT, "select idPersona from Administrador where usernameAdm = '" +nombreUsuarioAdmi+"' and passwordAdm = '"+contraseñaAdmi+"'");

            return oDT;
        }

        public DataTable Cargar_Operador(string nombreUsuOpe, string contrasOpe)
        {
            DataTable oDT;

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT =  oC.EjecutarCmd(cT, "select IdPersona from Operador where usernameOpe = '"+ nombreUsuOpe+"' and passwordOpe = '"+ contrasOpe+"'");

            return oDT;

        }
    }
}


