using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace LogicaDeNegocios
{
    public class clsInicioSesion
    {
        #region Atributos

        private string atrUsername;
        private string atrPassword;


        #endregion

        #region Constructor

        public void Main() { }

        #endregion

        #region Metodos
        public DataTable Cargar_Administrador(string nombreUsuAdmi, string contrasAdmi)
        {

            CapaDatos.clsInicioSesion oAdmi = new CapaDatos.clsInicioSesion();

            return oAdmi.Cargar_Administrador(nombreUsuAdmi, contrasAdmi);
        }

        public DataTable Cargar_Operador(string nombreUsuOpe, string contrasOpe)
        {

            CapaDatos.clsInicioSesion oAdmi = new CapaDatos.clsInicioSesion();

            return oAdmi.Cargar_Operador(nombreUsuOpe, contrasOpe);
        }

        public void InsertarEnBitacora(int creador, int transac) {

            CapaDatos.clsInicioSesion oAdmi = new CapaDatos.clsInicioSesion();

            oAdmi.InsertarEnBitacora(creador, transac);
        }
        #endregion





        #region Propiedades
        public int AtrUsername { get; set; }
        public int AtrPassword { get; set; }
        #endregion  
    }
}
