namespace prjPresentacion
{
    partial class Reportes
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbTitulo = new System.Windows.Forms.Label();
            this.dtReportes = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cmbTipoTransac = new System.Windows.Forms.ComboBox();
            this.chbSi = new System.Windows.Forms.CheckBox();
            this.chbNo = new System.Windows.Forms.CheckBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIdUsuEsp = new System.Windows.Forms.TextBox();
            this.btnRevisar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dtReportes)).BeginInit();
            this.SuspendLayout();
            // 
            // lbTitulo
            // 
            this.lbTitulo.AutoSize = true;
            this.lbTitulo.Font = new System.Drawing.Font("Ravie", 28F, System.Drawing.FontStyle.Bold);
            this.lbTitulo.Location = new System.Drawing.Point(226, 27);
            this.lbTitulo.Name = "lbTitulo";
            this.lbTitulo.Size = new System.Drawing.Size(391, 76);
            this.lbTitulo.TabIndex = 2;
            this.lbTitulo.Text = "Reportes";
            // 
            // dtReportes
            // 
            this.dtReportes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtReportes.Location = new System.Drawing.Point(1, 288);
            this.dtReportes.Name = "dtReportes";
            this.dtReportes.RowTemplate.Height = 28;
            this.dtReportes.Size = new System.Drawing.Size(847, 361);
            this.dtReportes.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(224, 136);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(155, 20);
            this.label1.TabIndex = 4;
            this.label1.Text = "Tipo de Transacción:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 175);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(367, 20);
            this.label2.TabIndex = 5;
            this.label2.Text = "Desea ver la transacción de un usuario especifico?";
            // 
            // cmbTipoTransac
            // 
            this.cmbTipoTransac.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbTipoTransac.FormattingEnabled = true;
            this.cmbTipoTransac.Location = new System.Drawing.Point(385, 128);
            this.cmbTipoTransac.Name = "cmbTipoTransac";
            this.cmbTipoTransac.Size = new System.Drawing.Size(283, 28);
            this.cmbTipoTransac.TabIndex = 6;
            this.cmbTipoTransac.SelectedIndexChanged += new System.EventHandler(this.cmbTipoTransac_SelectedIndexChanged);
            this.cmbTipoTransac.Click += new System.EventHandler(this.cmbTipoTransac_Click);
            // 
            // chbSi
            // 
            this.chbSi.AutoSize = true;
            this.chbSi.Location = new System.Drawing.Point(385, 171);
            this.chbSi.Name = "chbSi";
            this.chbSi.Size = new System.Drawing.Size(49, 24);
            this.chbSi.TabIndex = 7;
            this.chbSi.Text = "Si";
            this.chbSi.UseVisualStyleBackColor = true;
            // 
            // chbNo
            // 
            this.chbNo.AutoSize = true;
            this.chbNo.Location = new System.Drawing.Point(440, 171);
            this.chbNo.Name = "chbNo";
            this.chbNo.Size = new System.Drawing.Size(55, 24);
            this.chbNo.TabIndex = 8;
            this.chbNo.Text = "No";
            this.chbNo.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(211, 219);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(168, 20);
            this.label3.TabIndex = 9;
            this.label3.Text = "Digite la Identificación:";
            // 
            // txtIdUsuEsp
            // 
            this.txtIdUsuEsp.Location = new System.Drawing.Point(385, 213);
            this.txtIdUsuEsp.Name = "txtIdUsuEsp";
            this.txtIdUsuEsp.Size = new System.Drawing.Size(198, 26);
            this.txtIdUsuEsp.TabIndex = 10;
            // 
            // btnRevisar
            // 
            this.btnRevisar.Location = new System.Drawing.Point(589, 210);
            this.btnRevisar.Name = "btnRevisar";
            this.btnRevisar.Size = new System.Drawing.Size(79, 32);
            this.btnRevisar.TabIndex = 11;
            this.btnRevisar.Text = "Revisar";
            this.btnRevisar.UseVisualStyleBackColor = true;
            // 
            // Reportes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(850, 650);
            this.Controls.Add(this.btnRevisar);
            this.Controls.Add(this.txtIdUsuEsp);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.chbNo);
            this.Controls.Add(this.chbSi);
            this.Controls.Add(this.cmbTipoTransac);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dtReportes);
            this.Controls.Add(this.lbTitulo);
            this.Name = "Reportes";
            this.Text = "Reportes";
            this.Load += new System.EventHandler(this.Reportes_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtReportes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbTitulo;
        private System.Windows.Forms.DataGridView dtReportes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cmbTipoTransac;
        private System.Windows.Forms.CheckBox chbSi;
        private System.Windows.Forms.CheckBox chbNo;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtIdUsuEsp;
        private System.Windows.Forms.Button btnRevisar;
    }
}