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
    public partial class Form1 : Form
    {
        int tipoAdmi = 0;

        ToolStripMenuItem[] oMenus;
        public Form1(ToolStripMenuItem[] oMenus)
        {
            InitializeComponent();
            this.oMenus = oMenus;
        }

        private void btnIncioSesion_Click(object sender, EventArgs e)
        {
            DataTable oDT = new DataTable();

            clsInicioSesion oAdmi = new clsInicioSesion();

            if (tipoAdmi == 2)
            {
                oDT = oAdmi.Cargar_Administrador(txtUsername.Text, txtPassword.Text);
                if (oDT != null)
                {
                    MessageBox.Show("Bienvenido Administrador");
                    Principal.oDT = oDT;
                    foreach (ToolStripMenuItem item in oMenus)
                    {
                        item.Enabled = true;
                    }
                    this.Dispose();
                }
            }
            else
            {
                if (tipoAdmi == 1)
                {
                    oDT = oAdmi.Cargar_Operador(txtUsername.Text, txtPassword.Text);
                    if (oDT != null)
                    {
                        MessageBox.Show("Bienvenido Operador");
                        Principal.oDT = oDT;
                        oMenus[1].Enabled = true;
                        oMenus[2].Enabled = true;
                        this.Dispose();
                    }
                }
            }

            

            //if(oDT.)

            //cmbGenero.DataSource = oDT;
            //cmbGenero.DisplayMember = "Descripcion";

        }
        private void chbAdmi_CheckedChanged(object sender, EventArgs e)
        {
            tipoAdmi = 2;
        }

        private void chbOperador_CheckedChanged(object sender, EventArgs e)
        {
            tipoAdmi = 1;
        }
    }
}
