namespace prjPresentacion
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtUsername = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.btnIncioSesion = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.chbOperador = new System.Windows.Forms.CheckBox();
            this.chbAdmi = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Ravie", 28F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(59, 20);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(389, 52);
            this.label1.TabIndex = 0;
            this.label1.Text = "Iniciar Sesion";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(92, 91);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "Username:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(92, 139);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 20);
            this.label3.TabIndex = 2;
            this.label3.Text = "Password:";
            // 
            // txtUsername
            // 
            this.txtUsername.Location = new System.Drawing.Point(195, 91);
            this.txtUsername.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(201, 20);
            this.txtUsername.TabIndex = 3;
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(195, 139);
            this.txtPassword.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(201, 20);
            this.txtPassword.TabIndex = 4;
            this.txtPassword.UseSystemPasswordChar = true;
            // 
            // btnIncioSesion
            // 
            this.btnIncioSesion.Location = new System.Drawing.Point(167, 213);
            this.btnIncioSesion.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnIncioSesion.Name = "btnIncioSesion";
            this.btnIncioSesion.Size = new System.Drawing.Size(164, 25);
            this.btnIncioSesion.TabIndex = 5;
            this.btnIncioSesion.Text = "Iniciar";
            this.btnIncioSesion.UseVisualStyleBackColor = true;
            this.btnIncioSesion.Click += new System.EventHandler(this.btnIncioSesion_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(73, 172);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(102, 20);
            this.label4.TabIndex = 7;
            this.label4.Text = "Tipo Usuario:";
            // 
            // chbOperador
            // 
            this.chbOperador.AutoSize = true;
            this.chbOperador.Location = new System.Drawing.Point(195, 175);
            this.chbOperador.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.chbOperador.Name = "chbOperador";
            this.chbOperador.Size = new System.Drawing.Size(70, 17);
            this.chbOperador.TabIndex = 8;
            this.chbOperador.Text = "Operador";
            this.chbOperador.UseVisualStyleBackColor = true;
            this.chbOperador.CheckedChanged += new System.EventHandler(this.chbOperador_CheckedChanged);
            // 
            // chbAdmi
            // 
            this.chbAdmi.AutoSize = true;
            this.chbAdmi.Location = new System.Drawing.Point(306, 175);
            this.chbAdmi.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.chbAdmi.Name = "chbAdmi";
            this.chbAdmi.Size = new System.Drawing.Size(89, 17);
            this.chbAdmi.TabIndex = 9;
            this.chbAdmi.Text = "Administrador";
            this.chbAdmi.UseVisualStyleBackColor = true;
            this.chbAdmi.CheckedChanged += new System.EventHandler(this.chbAdmi_CheckedChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(512, 359);
            this.Controls.Add(this.chbAdmi);
            this.Controls.Add(this.chbOperador);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnIncioSesion);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtUsername);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtUsername;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.Button btnIncioSesion;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox chbOperador;
        private System.Windows.Forms.CheckBox chbAdmi;
    }
}

