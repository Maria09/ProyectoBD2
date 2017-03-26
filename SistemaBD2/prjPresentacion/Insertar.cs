using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LogicaDeNegocios;
using Identidades;

namespace prjPresentacion
{
    public partial class Insertar : Form
    {

        private LogicaDeNegocios.clsCatalogos oCT = new LogicaDeNegocios.clsCatalogos();

        
        
        public Insertar()
        {
            InitializeComponent();
        }
        
        private void Insertar_Load(object sender, EventArgs e)
        {
            
        }
        private void cmbProvincia_Click(object sender, EventArgs e)
        {
            string nombre = "Provincias";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oProvincia = new clsCatalogos();
            oDT = oProvincia.Cargar_Catalogos(nombre);
            cmbProvincia.DataSource = oDT;
            cmbProvincia.DisplayMember = "DescripcionProvincia";
        }

        private void cmbDistrito_Click(object sender, EventArgs e)
        {
            string nombre = "Distritos";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oDistrito = new clsCatalogos();
            oDT = oDistrito.Cargar_Catalogos(nombre);
            cmbDistrito.DataSource = oDT;
            cmbDistrito.DisplayMember = "DescripcionDistrito";
        }

        private void cmbTipoPersona_Click_1(object sender, EventArgs e)
        {
            //cargar tipo de personas al combobox
            string nombre = "Tipo_Personas";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoPersona = new clsCatalogos();
            oDT = oTipoPersona.Cargar_Catalogos(nombre);
            cmbTipoPersona.DataSource = oDT;
            cmbTipoPersona.DisplayMember = "DescripcionTipoPersona";
        }

        private void cmbGenero_Click(object sender, EventArgs e)
        {
            //cargar s al combobox
            string nombre = "Genero";
            DataTable oDT = new DataTable();
            clsCatalogos oGenero = new clsCatalogos();
            oDT = oGenero.Cargar_Catalogos(nombre);
            cmbGenero.DataSource = oDT;
            cmbGenero.DisplayMember = "DescripcionGenero";
        }

        private void cmbTipoEmail_Click_1(object sender, EventArgs e)
        {
            string nombre = "TipoEmail";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoEmail = new clsCatalogos();
            oDT = oTipoEmail.Cargar_Catalogos(nombre);
            cmbTipoEmail.DataSource = oDT;
            cmbTipoEmail.DisplayMember = "DescripcionTipoEmail";
        }

        private void cmbTipoTelefono_Click_1(object sender, EventArgs e)
        {
            //cargar tipo de telefono al combobox
            string nombre = "TipoTelfonos";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoTelefonos = new clsCatalogos();
            oDT = oTipoTelefonos.Cargar_Catalogos(nombre);
            cmbTipoTelefono.DataSource = oDT;
            cmbTipoTelefono.DisplayMember = "DescripcionTipoTel";
        }

        private void cmbTipoUsuario_Click_1(object sender, EventArgs e)
        {
            string nombre = "Tipo_Usuario";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oTipoUsuario = new clsCatalogos();
            oDT = oTipoUsuario.Cargar_Catalogos(nombre);
            cmbTipoUsuario.DataSource = oDT;
            cmbTipoUsuario.DisplayMember = "DescripcionTipoUsuario";
        }

        private void cmbCanton_Click_1(object sender, EventArgs e)
        {
            string nombre = "Cantones";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oCanton = new clsCatalogos();
            oDT = oCanton.Cargar_Catalogos(nombre);
            cmbCanton.DataSource = oDT;
            cmbCanton.DisplayMember = "DescripcionCanton";
        }

        private void cmbTel2_Click(object sender, EventArgs e)
        {
            //cargar tipo de telefono al combobox
            string nombre = "TipoTelfonos";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoTelefonos = new clsCatalogos();
            oDT = oTipoTelefonos.Cargar_Catalogos(nombre);
            cmbTel2.DataSource = oDT;
            cmbTel2.DisplayMember = "DescripcionTipoTel";
        }

        private void cmbEmail2_Click(object sender, EventArgs e)
        {
            string nombre = "TipoEmail";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoEmail = new clsCatalogos();
            oDT = oTipoEmail.Cargar_Catalogos(nombre);
            cmbEmail2.DataSource = oDT;
            cmbEmail2.DisplayMember = "DescripcionTipoEmail";
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            DataTable oDT;
            oDT = Principal.oDT;

            Usuarios oUsuario = new Usuarios();
            oUsuario.prop_apellido1 = txtApellido1.Text;
            oUsuario.prop_apellido2 = txtApellido2.Text;
            oUsuario.prop_Canton = (cmbCanton.SelectedIndex) + 1;
            if (txtPassword.Text == txtConfirmarPass.Text)
            {
                oUsuario.prop_contraseña = txtConfirmarPass.Text;
            }
            oUsuario.prop_direccionExacta = rtExacta.Text;
            oUsuario.prop_Distrito = (cmbDistrito.SelectedIndex) + 1;
            oUsuario.prop_email = txtEmail.Text;
            oUsuario.prop_tipoEmail = (cmbTipoEmail.SelectedIndex) + 1;
            if (txtEmail2.Text != null)
            {
                oUsuario.prop_tipoEmail2 = (cmbEmail2.SelectedIndex) + 1;
                oUsuario.prop_email2 = txtEmail2.Text;
            }
            oUsuario.prop_fechaNacimientoa = dtpFechaNacimiento.Text;
            oUsuario.prop_id = txtIdentificacion.Text;
            oUsuario.prop_idGenero = (cmbGenero.SelectedIndex) + 1;
            oUsuario.prop_nombre = txtNombre.Text;
            oUsuario.prop_nombreUsuario = txtUser.Text;
            oUsuario.prop_Provincia = (cmbProvincia.SelectedIndex) + 1;
            oUsuario.prop_telefono = Convert.ToInt32(txtTelefono.Text);
            oUsuario.prop_telefono2 = Convert.ToInt32(txtTel2.Text);
            oUsuario.prop_tipoPersona = (cmbTipoPersona.SelectedIndex) + 1;
            oUsuario.prop_tipoTelefono = (cmbTipoTelefono.SelectedIndex) + 1;
            oUsuario.prop_tipoTelefono2 = (cmbTel2.SelectedIndex) + 1;
            oUsuario.prop_tipoUsuario = (cmbTipoUsuario.SelectedIndex) + 1;

            oUsuario.prop_idPersonaCreadora = Convert.ToInt32(oDT.Rows[0]["idPersona"]);
            oUsuario.prop_idTipoTransac = 2;

            UsuariosDelSistema objUsuSist = new UsuariosDelSistema();
            objUsuSist.Insertar_Usuario(oUsuario);

        }
        
    }
}
