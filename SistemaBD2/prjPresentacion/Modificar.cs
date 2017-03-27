using LogicaDeNegocios;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prjPresentacion {
    public partial class Modificar : Form {
        public Modificar() {
            InitializeComponent();
        }

        private void btnRegistrar_Click(object sender, EventArgs e) {
            //Cuando cargue todo en los controles
            //se cambia la info
            //al dar clic en este boton, see hagan los cambio en la BD
            //string palabra_clave = 'Modificar ususarios'
        }

        private void Modificar_Load(object sender, EventArgs e) {
            string nombre = "Personas";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oPersona = new clsCatalogos();
            oDT = oPersona.Cargar_Catalogos(nombre);
            cmbIdentificacion.DataSource = oDT;
            cmbIdentificacion.DisplayMember = "IdPersona";
            cmbIdentificacion.ValueMember = "IdPersona";
        }

        private void cmbIdentificacion_SelectedIndexChanged(object sender, EventArgs e) {
            try {
                int IdU = Convert.ToInt32(cmbIdentificacion.SelectedItem);//esto sirva !! dato selecciona pasar a int
                                                                          //llenar los controles
                DataTable oDT = new DataTable();
                UsuariosDelSistema oInfo = new UsuariosDelSistema();
                oDT = oInfo.Cargar_InfoUsuario(IdU);

                //validar al arreglar lo anterior que se llene el txt con el nombre traido de la BD
            } catch(Exception) { }


        }

        private void cmbProvincia_Click(object sender, EventArgs e) {
            string nombre = "Provincias";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oProvincia = new clsCatalogos();
            oDT = oProvincia.Cargar_Catalogos(nombre);
            cmbProvincia.DataSource = oDT;
            cmbProvincia.DisplayMember = "DescripcionProvincia";
            cmbProvincia.ValueMember = "DescripcionProvincia";
        }

        private void cmbDistrito_Click(object sender, EventArgs e) {
            string nombre = "Distritos";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oDistrito = new clsCatalogos();
            oDT = oDistrito.Cargar_Catalogos(nombre);
            cmbDistrito.DataSource = oDT;
            cmbDistrito.DisplayMember = "DescripcionDistrito";
            cmbDistrito.ValueMember = "DescripcionDistrito";
        }

        private void cmbGenero_Click(object sender, EventArgs e) {
            //cargar s al combobox
            string nombre = "Genero";
            DataTable oDT = new DataTable();
            clsCatalogos oGenero = new clsCatalogos();
            oDT = oGenero.Cargar_Catalogos(nombre);
            cmbGenero.DataSource = oDT;
            cmbGenero.DisplayMember = "DescripcionGenero";
            cmbGenero.ValueMember = "DescripcionGenero";
        }

        private void cmbTipoTel_Click(object sender, EventArgs e) {
            //cargar tipo de telefono al combobox
            string nombre = "TipoTelfonos";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoTelefonos = new clsCatalogos();
            oDT = oTipoTelefonos.Cargar_Catalogos(nombre);
            cmbTipoTel.DataSource = oDT;
            cmbTipoTel.DisplayMember = "DescripcionTipoTel";
            cmbTipoTel.ValueMember = "DescripcionTipoTel";
        }

        private void cmbTipoEmail_Click(object sender, EventArgs e) {
            string nombre = "TipoEmail";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoEmail = new clsCatalogos();
            oDT = oTipoEmail.Cargar_Catalogos(nombre);
            cmbTipoEmail.DataSource = oDT;
            cmbTipoEmail.DisplayMember = "DescripcionTipoEmail";
            cmbTipoEmail.ValueMember = "DescripcionTipoEmail";
        }

        private void cmbCanton_Click(object sender, EventArgs e) {
            string nombre = "Cantones";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oCanton = new clsCatalogos();
            oDT = oCanton.Cargar_Catalogos(nombre);
            cmbCanton.DataSource = oDT;
            cmbCanton.DisplayMember = "DescripcionCanton";
            cmbCanton.ValueMember = "DescripcionCanton";
        }

        private void cmbIdentificacion_Click(object sender, EventArgs e) {

        }

        private void tabPage1_Click(object sender, EventArgs e) {

        }

        private void cmbIdentificacion_Leave(object sender, EventArgs e) {
            if(cmbIdentificacion.SelectedValue != null) {
                DataTable oDT = new LogicaDeNegocios.UsuariosDelSistema().Cargar_InfoUsuario(Convert.ToInt32(cmbIdentificacion.SelectedValue));
                txtApellido1.Text = Convert.ToString(oDT.Rows[0][0]);
            } else {
                MessageBox.Show("Seleccione una cedula valida");
            }
        }
    }
}
