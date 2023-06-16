namespace TFG_GrakDiana
{
    partial class Inicio
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Inicio));
            this.pnlMenu = new System.Windows.Forms.Panel();
            this.pnlAyuda = new System.Windows.Forms.Panel();
            this.btnInformar = new System.Windows.Forms.Button();
            this.btnManual = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnAyuda = new System.Windows.Forms.Button();
            this.btnJugar = new System.Windows.Forms.Button();
            this.btnPrincipal = new System.Windows.Forms.Button();
            this.pnlLogo = new System.Windows.Forms.Panel();
            this.lblSaber = new System.Windows.Forms.Label();
            this.pnlVistaOpcion = new System.Windows.Forms.Panel();
            this.pnlMenu.SuspendLayout();
            this.pnlAyuda.SuspendLayout();
            this.pnlLogo.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlMenu
            // 
            this.pnlMenu.BackColor = System.Drawing.Color.LightYellow;
            this.pnlMenu.Controls.Add(this.pnlAyuda);
            this.pnlMenu.Controls.Add(this.btnSalir);
            this.pnlMenu.Controls.Add(this.btnAyuda);
            this.pnlMenu.Controls.Add(this.btnJugar);
            this.pnlMenu.Controls.Add(this.btnPrincipal);
            this.pnlMenu.Controls.Add(this.pnlLogo);
            this.pnlMenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlMenu.Location = new System.Drawing.Point(0, 0);
            this.pnlMenu.Name = "pnlMenu";
            this.pnlMenu.Size = new System.Drawing.Size(210, 351);
            this.pnlMenu.TabIndex = 0;
            // 
            // pnlAyuda
            // 
            this.pnlAyuda.Controls.Add(this.btnInformar);
            this.pnlAyuda.Controls.Add(this.btnManual);
            this.pnlAyuda.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlAyuda.Location = new System.Drawing.Point(0, 215);
            this.pnlAyuda.Name = "pnlAyuda";
            this.pnlAyuda.Size = new System.Drawing.Size(210, 50);
            this.pnlAyuda.TabIndex = 5;
            // 
            // btnInformar
            // 
            this.btnInformar.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnInformar.FlatAppearance.BorderColor = System.Drawing.Color.LightYellow;
            this.btnInformar.FlatAppearance.BorderSize = 0;
            this.btnInformar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnInformar.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnInformar.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnInformar.Location = new System.Drawing.Point(0, 25);
            this.btnInformar.Name = "btnInformar";
            this.btnInformar.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnInformar.Size = new System.Drawing.Size(210, 25);
            this.btnInformar.TabIndex = 1;
            this.btnInformar.Text = "Informar";
            this.btnInformar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnInformar.UseVisualStyleBackColor = true;
            this.btnInformar.Click += new System.EventHandler(this.btnInformar_Click);
            // 
            // btnManual
            // 
            this.btnManual.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnManual.FlatAppearance.BorderColor = System.Drawing.Color.LightYellow;
            this.btnManual.FlatAppearance.BorderSize = 0;
            this.btnManual.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnManual.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnManual.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnManual.Location = new System.Drawing.Point(0, 0);
            this.btnManual.Name = "btnManual";
            this.btnManual.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnManual.Size = new System.Drawing.Size(210, 25);
            this.btnManual.TabIndex = 0;
            this.btnManual.Text = "Manual";
            this.btnManual.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnManual.UseVisualStyleBackColor = true;
            this.btnManual.Click += new System.EventHandler(this.btnManual_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnSalir.FlatAppearance.BorderColor = System.Drawing.Color.LightYellow;
            this.btnSalir.FlatAppearance.BorderSize = 0;
            this.btnSalir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSalir.Font = new System.Drawing.Font("OCR A Extended", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnSalir.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnSalir.Image = global::TFG_GrakDiana.Properties.Resources.salir;
            this.btnSalir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSalir.Location = new System.Drawing.Point(0, 306);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnSalir.Size = new System.Drawing.Size(210, 45);
            this.btnSalir.TabIndex = 4;
            this.btnSalir.Text = "Salir     ";
            this.btnSalir.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnAyuda
            // 
            this.btnAyuda.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnAyuda.FlatAppearance.BorderColor = System.Drawing.Color.LightYellow;
            this.btnAyuda.FlatAppearance.BorderSize = 0;
            this.btnAyuda.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAyuda.Font = new System.Drawing.Font("OCR A Extended", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnAyuda.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnAyuda.Image = global::TFG_GrakDiana.Properties.Resources.ayuda;
            this.btnAyuda.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnAyuda.Location = new System.Drawing.Point(0, 170);
            this.btnAyuda.Name = "btnAyuda";
            this.btnAyuda.Padding = new System.Windows.Forms.Padding(10, 0, 5, 0);
            this.btnAyuda.Size = new System.Drawing.Size(210, 45);
            this.btnAyuda.TabIndex = 3;
            this.btnAyuda.Text = "Ayuda";
            this.btnAyuda.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAyuda.UseVisualStyleBackColor = true;
            this.btnAyuda.Click += new System.EventHandler(this.btnAyuda_Click);
            // 
            // btnJugar
            // 
            this.btnJugar.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnJugar.FlatAppearance.BorderColor = System.Drawing.Color.LightYellow;
            this.btnJugar.FlatAppearance.BorderSize = 0;
            this.btnJugar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnJugar.Font = new System.Drawing.Font("OCR A Extended", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnJugar.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnJugar.Image = global::TFG_GrakDiana.Properties.Resources.jugar;
            this.btnJugar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnJugar.Location = new System.Drawing.Point(0, 125);
            this.btnJugar.Name = "btnJugar";
            this.btnJugar.Padding = new System.Windows.Forms.Padding(10, 0, 5, 0);
            this.btnJugar.Size = new System.Drawing.Size(210, 45);
            this.btnJugar.TabIndex = 2;
            this.btnJugar.Text = "Jugar";
            this.btnJugar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnJugar.UseVisualStyleBackColor = true;
            this.btnJugar.Click += new System.EventHandler(this.btnJugar_Click);
            // 
            // btnPrincipal
            // 
            this.btnPrincipal.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnPrincipal.FlatAppearance.BorderColor = System.Drawing.Color.LightYellow;
            this.btnPrincipal.FlatAppearance.BorderSize = 0;
            this.btnPrincipal.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPrincipal.Font = new System.Drawing.Font("OCR A Extended", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnPrincipal.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnPrincipal.Image = global::TFG_GrakDiana.Properties.Resources.principal;
            this.btnPrincipal.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnPrincipal.Location = new System.Drawing.Point(0, 80);
            this.btnPrincipal.Name = "btnPrincipal";
            this.btnPrincipal.Padding = new System.Windows.Forms.Padding(10, 0, 5, 0);
            this.btnPrincipal.Size = new System.Drawing.Size(210, 45);
            this.btnPrincipal.TabIndex = 1;
            this.btnPrincipal.Text = "Principal";
            this.btnPrincipal.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPrincipal.UseVisualStyleBackColor = true;
            this.btnPrincipal.Click += new System.EventHandler(this.btnPrincipal_Click);
            // 
            // pnlLogo
            // 
            this.pnlLogo.BackColor = System.Drawing.Color.LightYellow;
            this.pnlLogo.Controls.Add(this.lblSaber);
            this.pnlLogo.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLogo.Location = new System.Drawing.Point(0, 0);
            this.pnlLogo.Name = "pnlLogo";
            this.pnlLogo.Size = new System.Drawing.Size(210, 80);
            this.pnlLogo.TabIndex = 0;
            // 
            // lblSaber
            // 
            this.lblSaber.AutoSize = true;
            this.lblSaber.Font = new System.Drawing.Font("OCR A Extended", 44F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblSaber.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblSaber.Location = new System.Drawing.Point(3, 9);
            this.lblSaber.Name = "lblSaber";
            this.lblSaber.Size = new System.Drawing.Size(205, 60);
            this.lblSaber.TabIndex = 0;
            this.lblSaber.Text = "SABER";
            // 
            // pnlVistaOpcion
            // 
            this.pnlVistaOpcion.BackColor = System.Drawing.Color.LightSlateGray;
            this.pnlVistaOpcion.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlVistaOpcion.Location = new System.Drawing.Point(210, 0);
            this.pnlVistaOpcion.Name = "pnlVistaOpcion";
            this.pnlVistaOpcion.Size = new System.Drawing.Size(374, 351);
            this.pnlVistaOpcion.TabIndex = 1;
            // 
            // Inicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 351);
            this.Controls.Add(this.pnlVistaOpcion);
            this.Controls.Add(this.pnlMenu);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(600, 390);
            this.MinimumSize = new System.Drawing.Size(600, 390);
            this.Name = "Inicio";
            this.Text = "Saber";
            this.pnlMenu.ResumeLayout(false);
            this.pnlAyuda.ResumeLayout(false);
            this.pnlLogo.ResumeLayout(false);
            this.pnlLogo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Panel pnlMenu;
        private Button btnPrincipal;
        private Panel pnlLogo;
        private Panel pnlAyuda;
        private Button btnInformar;
        private Button btnManual;
        private Button btnSalir;
        private Button btnAyuda;
        private Button btnJugar;
        private Panel pnlVistaOpcion;
        private Label lblSaber;
    }
}