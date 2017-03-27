using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Identidades;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
   public class Usuarios_Sistema
    {
        #region Constructor
        public void Main()
        {

        }
        #endregion

        public void Insertar_Usuario(Usuarios oUsuario)
        {
            SqlCommand oSqlC = new SqlCommand();
            oSqlC.CommandType = CommandType.StoredProcedure;
            oSqlC.CommandText = "proc_InsertarUsuarios";
            oSqlC.Parameters.Add("@TipoPersona",SqlDbType.Int).Value = oUsuario.prop_tipoPersona;
            oSqlC.Parameters.Add("@id",SqlDbType.VarChar,20).Value = oUsuario.prop_id;
            oSqlC.Parameters.Add("@nombre",SqlDbType.VarChar,20).Value = oUsuario.prop_nombre;
            oSqlC.Parameters.Add("@apellido1", SqlDbType.VarChar, 20).Value = oUsuario.prop_apellido1;
            oSqlC.Parameters.Add("@apellido2", SqlDbType.VarChar, 20).Value = oUsuario.prop_apellido2;
            oSqlC.Parameters.Add("@idGenero",SqlDbType.Int).Value = oUsuario.prop_idGenero;
            oSqlC.Parameters.Add("@fechaNacimiento",SqlDbType.Date).Value = oUsuario.prop_fechaNacimientoa;
            oSqlC.Parameters.Add("@tipoTel", SqlDbType.Int).Value = oUsuario.prop_tipoTelefono;
            oSqlC.Parameters.Add("@telefono", SqlDbType.Int).Value = oUsuario.prop_telefono;
            oSqlC.Parameters.Add("@tipoEmail", SqlDbType.Int).Value = oUsuario.prop_tipoEmail;
            oSqlC.Parameters.Add("@email",SqlDbType.VarChar,30).Value = oUsuario.prop_email;
            oSqlC.Parameters.Add("@tipoTel2", SqlDbType.Int).Value = oUsuario.prop_tipoTelefono2;
            oSqlC.Parameters.Add("@tel2", SqlDbType.Int).Value = oUsuario.prop_telefono2;
            oSqlC.Parameters.Add("@tipoEmail2", SqlDbType.Int).Value = oUsuario.prop_tipoEmail2;
            oSqlC.Parameters.Add("@email2", SqlDbType.VarChar, 30).Value = oUsuario.prop_email2;
            oSqlC.Parameters.Add("@tipoUsuario", SqlDbType.Int).Value = oUsuario.prop_tipoUsuario;
            oSqlC.Parameters.Add("@nombreUsu", SqlDbType.VarChar, 20).Value = oUsuario.prop_nombreUsuario;
            oSqlC.Parameters.Add("@contrasenya", SqlDbType.VarChar, 20).Value = oUsuario.prop_contraseña;
            oSqlC.Parameters.Add("@Provincia", SqlDbType.Int).Value = oUsuario.prop_Provincia;
            oSqlC.Parameters.Add("@Canton", SqlDbType.Int).Value = oUsuario.prop_Canton;
            oSqlC.Parameters.Add("@Distrito", SqlDbType.Int).Value = oUsuario.prop_Distrito;
            oSqlC.Parameters.Add("@exacta", SqlDbType.VarChar, 50).Value = oUsuario.prop_direccionExacta;

            oSqlC.Parameters.Add("@idTipoTransac", SqlDbType.Int).Value = oUsuario.prop_idTipoTransac;
            oSqlC.Parameters.Add("@idPersonaCreadora", SqlDbType.Int).Value = oUsuario.prop_idPersonaCreadora;


            clsConexion oConec = new clsConexion();
            oConec.EjecutarInsertar(oSqlC);

            
        }

        public DataTable Cargar_InfoUsuario(int IdU) {
            DataTable oDT = new DataTable();

            clsConexion oC = new clsConexion();

            CommandType cT = CommandType.Text;

            oDT = oC.EjecutarCmd(cT, "Exec proc_ObtenerUsuarios '"+ IdU + "'");
            
            return oDT;

        }

        

    }
}
