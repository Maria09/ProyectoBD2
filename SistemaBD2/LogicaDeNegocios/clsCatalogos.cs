using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaDatos;

namespace LogicaDeNegocios
{
    public class clsCatalogos
    {
        #region Contructor

        public void Main()
        {
            
        }
        #endregion


        public DataTable Cargar_Catalogos(string nombre)
        {

            CapaDatos.clsCatalogos oCatalogo = new CapaDatos.clsCatalogos();

            return oCatalogo.Cargar_Catalogos(nombre);
        }


    }
}
