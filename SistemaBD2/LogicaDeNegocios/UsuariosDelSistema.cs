using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Identidades;
using System.Data;

namespace LogicaDeNegocios
{
    public class UsuariosDelSistema
    {
        #region Constructor
        public void Main()
        {

        }
        #endregion

        public void Insertar_Usuario(Usuarios oUsuario)
        {
            CapaDatos.Usuarios_Sistema objUsuario = new CapaDatos.Usuarios_Sistema();

            objUsuario.Insertar_Usuario(oUsuario);
        }

        public DataTable Cargar_InfoUsuario(int IdU) {
            CapaDatos.Usuarios_Sistema oInfo = new CapaDatos.Usuarios_Sistema();

            return oInfo.Cargar_InfoUsuario(IdU);
        }

        //obtener ifo usuario
    }
}
