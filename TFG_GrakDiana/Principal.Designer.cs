namespace TFG_GrakDiana
{
    partial class Principal
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
            this.pnlPrincipal = new System.Windows.Forms.Panel();
            this.imgJugar = new System.Windows.Forms.PictureBox();
            this.lblDetalle = new System.Windows.Forms.Label();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.pnlPrincipal.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.imgJugar)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlPrincipal
            // 
            this.pnlPrincipal.BackColor = System.Drawing.Color.LightSlateGray;
            this.pnlPrincipal.Controls.Add(this.imgJugar);
            this.pnlPrincipal.Controls.Add(this.lblDetalle);
            this.pnlPrincipal.Controls.Add(this.lblTitulo);
            this.pnlPrincipal.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlPrincipal.Location = new System.Drawing.Point(0, 0);
            this.pnlPrincipal.Name = "pnlPrincipal";
            this.pnlPrincipal.Size = new System.Drawing.Size(358, 351);
            this.pnlPrincipal.TabIndex = 0;
            // 
            // imgJugar
            // 
            this.imgJugar.BackColor = System.Drawing.Color.LightSlateGray;
            this.imgJugar.Image = global::TFG_GrakDiana.Properties.Resources.libro;
            this.imgJugar.Location = new System.Drawing.Point(12, 76);
            this.imgJugar.Name = "imgJugar";
            this.imgJugar.Size = new System.Drawing.Size(345, 170);
            this.imgJugar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.imgJugar.TabIndex = 5;
            this.imgJugar.TabStop = false;
            // 
            // lblDetalle
            // 
            this.lblDetalle.AutoSize = true;
            this.lblDetalle.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblDetalle.ForeColor = System.Drawing.Color.LightYellow;
            this.lblDetalle.Location = new System.Drawing.Point(45, 270);
            this.lblDetalle.Name = "lblDetalle";
            this.lblDetalle.Size = new System.Drawing.Size(288, 34);
            this.lblDetalle.TabIndex = 3;
            this.lblDetalle.Text = "Cargando conocimiento...\r\n... ¿Te atreves con el reto?\r\n";
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.BackColor = System.Drawing.Color.Transparent;
            this.lblTitulo.Font = new System.Drawing.Font("OCR A Extended", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblTitulo.ForeColor = System.Drawing.Color.LightYellow;
            this.lblTitulo.Location = new System.Drawing.Point(10, 26);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(333, 29);
            this.lblTitulo.TabIndex = 4;
            this.lblTitulo.Text = "¡Bienvenid@ a SABER!";
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(358, 351);
            this.Controls.Add(this.pnlPrincipal);
            this.MaximumSize = new System.Drawing.Size(374, 390);
            this.MinimumSize = new System.Drawing.Size(374, 390);
            this.Name = "Principal";
            this.Text = "Principal";
            this.pnlPrincipal.ResumeLayout(false);
            this.pnlPrincipal.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.imgJugar)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Panel pnlPrincipal;
        private Label lblDetalle;
        private Label lblTitulo;
        private PictureBox imgJugar;
    }
}