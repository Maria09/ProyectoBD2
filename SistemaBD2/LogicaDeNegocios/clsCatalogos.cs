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


        public DataTable Cargar_TipoPersonas(string nombre)
        {

            CapaDatos.clsCatalogos oTipoPersona = new CapaDatos.clsCatalogos();

            return oTipoPersona.Cargar_TipoPersonas(nombre);
        }

        public DataTable Cargar_TipoTelefono(string nombre)
        {

            CapaDatos.clsCatalogos oTipoTelefono = new CapaDatos.clsCatalogos();

            return oTipoTelefono.Cargar_TipoTelefonos(nombre);
        }

        public DataTable Cargar_TipoEmail(string nombre)
        {

            CapaDatos.clsCatalogos oTipoEmail = new CapaDatos.clsCatalogos();

            return oTipoEmail.Cargar_TipoEmail(nombre);
        }

        public DataTable Cargar_TipoUsuario(string nombre)
        {

            CapaDatos.clsCatalogos oTipoUsuario = new CapaDatos.clsCatalogos();

            return oTipoUsuario.Cargar_TipoUsuario(nombre);
        }

        public DataTable Cargar_Genero(string nombre)
        {
            CapaDatos.clsCatalogos oGenero = new CapaDatos.clsCatalogos();

            return oGenero.Cargar_Genero(nombre);
        }

        public DataTable Cargar_Provincias(string nombre)
        {
            CapaDatos.clsCatalogos oProvincia = new CapaDatos.clsCatalogos();

            return oProvincia.Cargar_Provincias(nombre);
        }

        public DataTable Cargar_Cantonces(string nombre)
        {
            CapaDatos.clsCatalogos oCanton = new CapaDatos.clsCatalogos();

            return oCanton.Cargar_Cantones(nombre);
        }

        public DataTable Cargar_Distritos(string nombre)
        {
            CapaDatos.clsCatalogos oDistrito = new CapaDatos.clsCatalogos();

            return oDistrito.Cargar_Distritos(nombre);
        }
    }
}
