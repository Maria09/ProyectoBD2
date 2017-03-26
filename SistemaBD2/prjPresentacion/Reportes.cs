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
            Info_Reportes oReportesCompletos = new Info_Reportes();
            oDT = oReportesCompletos.Cargar_Bitacora();
            dtReportes.DataSource = oDT;
            
            //Enable false txt
            txtIdUsuEsp.Enabled = false;
            btnRevisar.Enabled = false;
            chbSi.Enabled = false;
            chbNo.Enabled = false;
        }

        private void cmbTipoTransac_Click(object sender, EventArgs e) {
            string nombre = "Trasacciones";
            //cargar tipo de telefono al combobox
            DataTable oDT = new DataTable();
            clsCatalogos oTransac = new clsCatalogos();
            oDT = oTransac.Cargar_Catalogos(nombre);
            cmbTipoTransac.DataSource = oDT;
            cmbTipoTransac.DisplayMember = "DescripcionTipoTransaccion";
        }

        private void cmbTipoTransac_SelectedIndexChanged(object sender, EventArgs e) {
            chbSi.Enabled = true;
            chbNo.Enabled = true;
        }

        private void chbSi_CheckedChanged(object sender, EventArgs e) {
            txtIdUsuEsp.Enabled = true;
            btnRevisar.Enabled = true;
        }

        private void chbNo_CheckedChanged(object sender, EventArgs e) {
            txtIdUsuEsp.Enabled = true;
            btnRevisar.Enabled = true;
        }

        private void btnRevisar_Click(object sender, EventArgs e) {
            
            string descrip = cmbTipoTransac.SelectedItem.ToString();

            DataTable oDT = new DataTable();
            Info_Reportes oProvincia = new Info_Reportes();
            oDT = oProvincia.Cargar_FiltroBitacora(descrip);
            dtReportes.DataSource = oDT;
        }
    }
}
