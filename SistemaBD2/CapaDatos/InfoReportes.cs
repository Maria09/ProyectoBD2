using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace CapaDatos {
    public class InfoReportes {
        public DataTable Cargar_Bitacora() {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarBitacora");

            return oDT;

        }

        public DataTable Cargar_FiltroBitacora(string desscrip) {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_CargarBitacora");

            return oDT;

        }
    }
}
