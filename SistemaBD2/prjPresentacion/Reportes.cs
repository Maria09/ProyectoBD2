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

namespace prjPresentacion
{
    public partial class Reportes : Form
    {
        public Reportes()
        {
            InitializeComponent();
        }

        private void Reportes_Load(object sender, EventArgs e) {
            
            DataTable oDT = new DataTable();
            Info_Reportes oProvincia = new Info_Reportes();
            oDT = oProvincia.Cargar_Bitacora();
            dtReportes.DataSource = oDT;
            
            //Enable false txt
            txtIdUsuEsp.Enabled = false;
            btnRevisar.Enabled = false;
            chbSi.Enabled = false;
            chbNo.Enabled = false;
        }

        private void cmbTipoTransac_Click(object sender, EventArgs e) {
            string nombre = "Trasacciones";
            DataTable oDT = new DataTable();
            clsCatalogos oPersona = new clsCatalogos();
            oDT = oPersona.Cargar_Catalogos(nombre);
            cmbTipoTransac.DataSource = oDT;
            cmbTipoTransac.DisplayMember = "DescripcionTipoTransaccion";
        }
    }
}
