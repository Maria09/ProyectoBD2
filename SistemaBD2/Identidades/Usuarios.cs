using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Identidades
{
    public class Usuarios
    {
        #region Atributos
        private int tipoPersona;
        private string id;
        private string nombre;
        private string apellido1;
        private string apellido2;
        private int idGenero;
        private string fechaNacimiento;
        private int tipoTelefono;
        private int telefono;
        private int tipoTelefono2;
        private int telefono2;
        private int tipoEmail;
        private int tipoEmail2;
        private string email;
        private string email2;
        private int tipoUsuario;
        private string nombreUsuario;
        private string contraseña;

        private int Provincia;
        private int Canton;
        private int Distrito;
        private string direccionExacta;


        //CREADO POR
        private int idPersonaCreadora;

        //tipo transaccion con la que se creo
        private int idTipoTransac;
        #endregion

        #region Constructor
        public void Main()
        {


        }
        #endregion

        #region Propiedades
        public int prop_tipoPersona { get { return this.tipoPersona; } set { this.tipoPersona = value; } }
        public string prop_id { get { return this.id; } set { this.id = value; } }
        public string prop_nombre { get { return this.nombre; } set { this.nombre = value; } }
        public string prop_apellido1 { get { return this.apellido1; } set { this.apellido1 = value; } }
        public string prop_apellido2 { get { return this.apellido2; } set { this.apellido2 = value; } }
        public int prop_idGenero { get { return this.idGenero; } set { this.idGenero = value; } }
        public string prop_fechaNacimientoa { get { return this.fechaNacimiento; } set { this.fechaNacimiento = value; } }
        public int prop_tipoTelefono { get { return this.tipoTelefono; } set { this.tipoTelefono = value; } }
        public int prop_telefono { get { return this.telefono; } set { this.telefono = value; } }
        public int prop_tipoEmail { get { return this.tipoEmail; } set { this.tipoEmail = value; } }
        public string prop_email { get { return this.email; } set { this.email = value; } }
        public int prop_tipoUsuario { get { return this.tipoUsuario; } set { this.tipoUsuario = value; } }
        public string prop_nombreUsuario { get { return this.nombreUsuario; } set { this.nombreUsuario = value; } }
        public string prop_contraseña { get { return this.contraseña; } set { this.contraseña = value; } }
        public int prop_Provincia { get { return this.Provincia; } set { this.Provincia = value; } }
        public int prop_Canton { get { return this.Canton; } set { this.Canton = value; } }
        public int prop_Distrito { get { return this.Distrito; } set { this.Distrito = value; } }
        public string prop_direccionExacta { get { return this.direccionExacta; } set { this.direccionExacta = value; } }
        public int prop_tipoTelefono2 { get { return this.tipoTelefono2; } set { this.tipoTelefono2 = value; } }
        public int prop_telefono2 { get { return this.telefono2; } set { this.telefono2 = value; } }
        public int prop_tipoEmail2 { get { return this.tipoEmail2; } set { this.tipoEmail2 = value; } }
        public string prop_email2 { get { return this.email2; } set { this.email2 = value; } }

        public int prop_idPersonaCreadora { get { return this.idPersonaCreadora; } set { this.idPersonaCreadora = value; } }
        public int prop_idTipoTransac { get { return this.idTipoTransac; } set { this.idTipoTransac = value; } }

        #endregion

    }
}
