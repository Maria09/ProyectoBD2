using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LogicaDeNegocios {
    public class Info_Reportes {

        public DataTable Cargar_Bitacora() {
            CapaDatos.InfoReportes oBitacora = new CapaDatos.InfoReportes();

            return oBitacora.Cargar_Bitacora();
        }

        public DataTable Cargar_FiltroBitacora(string desscrip) {
            CapaDatos.InfoReportes oBitacora = new CapaDatos.InfoReportes();

            return oBitacora.Cargar_FiltroBitacora(desscrip);
        }

    }
}
