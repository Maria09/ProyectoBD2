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
    public partial class Principal : Form
    {
        private int childFormNumber = 0;
        public static DataTable oDT;

        public Principal()
        {
            InitializeComponent();
        }

        private void ShowNewForm(object sender, EventArgs e)
        {
            Form childForm = new Form();
            childForm.MdiParent = this;
            childForm.Text = "Ventana " + childFormNumber++;
            childForm.Show();
        }

        private void OpenFile(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            openFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (openFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = openFileDialog.FileName;
            }
        }

        private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            saveFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = saveFileDialog.FileName;
            }
        }

        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CutToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void CopyToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void PasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

       

        private void CascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void TileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void TileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }

        private void ArrangeIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.ArrangeIcons);
        }

        private void CloseAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            mantenimientosToolStripMenuItem.Enabled = false;//poner en false
            consultasToolStripMenuItem.Enabled = false;//poner en false
            reportesToolStripMenuItem.Enabled = false;//poner en false
            lbConexion.Text = "No Conectado";
        }

        private void iniciarSesionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem[] oMenus = { mantenimientosToolStripMenuItem, consultasToolStripMenuItem, reportesToolStripMenuItem };
            Form1 child = new Form1(oMenus);
            child.MdiParent = this;
            child.Show();
        }

        private void insertarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Insertar child = new Insertar();

            child.MdiParent = this;
            child.Show();
        }

        private void modificarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Modificar child = new Modificar();

            child.MdiParent = this;
            child.Show();
        }

        private void eliminarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Eliminar child = new Eliminar();

            child.MdiParent = this;
            child.Show();
        }

        private void consultasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Perfilacion child = new Perfilacion();

            child.MdiParent = this;
            child.Show();
        }

        private void reportesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Reportes child = new Reportes();

            child.MdiParent = this;
            child.Show();
        }
    }
}
