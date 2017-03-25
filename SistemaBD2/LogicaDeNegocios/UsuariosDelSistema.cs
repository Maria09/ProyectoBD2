using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Identidades;

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

        //obtener ifo usuario
    }
}
