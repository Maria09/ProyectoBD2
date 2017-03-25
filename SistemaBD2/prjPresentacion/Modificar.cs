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

namespace prjPresentacion
{
    public partial class Modificar : Form
    {
        public Modificar()
        {
            InitializeComponent();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {

        }

        private void Modificar_Load(object sender, EventArgs e)
        {
            
        }

        private void cmbIdentificacion_SelectedIndexChanged(object sender, EventArgs e)
        {
            //llenar los controles
        }

        private void cmbProvincia_Click(object sender, EventArgs e)
        {
            string nombre = "Provincias";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oProvincia = new clsCatalogos();
            oDT = oProvincia.Cargar_Provincias(nombre);
            cmbProvincia.DataSource = oDT;
            cmbProvincia.DisplayMember = "DescripcionProvincia";
        }

        private void cmbDistrito_Click(object sender, EventArgs e)
        {
            string nombre = "Distritos";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oDistrito = new clsCatalogos();
            oDT = oDistrito.Cargar_Distritos(nombre);
            cmbDistrito.DataSource = oDT;
            cmbDistrito.DisplayMember = "DescripcionDistrito";
        }

        private void cmbGenero_Click(object sender, EventArgs e)
        {
            //cargar s al combobox
            string nombre = "Genero";
            DataTable oDT = new DataTable();
            clsCatalogos oGenero = new clsCatalogos();
            oDT = oGenero.Cargar_Genero(nombre);
            cmbGenero.DataSource = oDT;
            cmbGenero.DisplayMember = "DescripcionGenero";
        }

        private void cmbTipoTel_Click(object sender, EventArgs e)
        {
            //cargar tipo de telefono al combobox
            string nombre = "TipoTelfonos";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoTelefonos = new clsCatalogos();
            oDT = oTipoTelefonos.Cargar_TipoTelefono(nombre);
            cmbTipoTel.DataSource = oDT;
            cmbTipoTel.DisplayMember = "DescripcionTipoTel";
        }

        private void cmbTipoEmail_Click(object sender, EventArgs e)
        {
            string nombre = "TipoEmail";
            DataTable oDT = new DataTable();
            clsCatalogos oTipoEmail = new clsCatalogos();
            oDT = oTipoEmail.Cargar_TipoEmail(nombre);
            cmbTipoEmail.DataSource = oDT;
            cmbTipoEmail.DisplayMember = "DescripcionTipoEmail";
        }

        private void cmbCanton_Click(object sender, EventArgs e)
        {
            string nombre = "Cantones";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oCanton = new clsCatalogos();
            oDT = oCanton.Cargar_Cantonces(nombre);
            cmbCanton.DataSource = oDT;
            cmbCanton.DisplayMember = "DescripcionCanton";
        }
    }
}
