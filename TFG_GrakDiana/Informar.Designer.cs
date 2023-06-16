namespace TFG_GrakDiana
{
    partial class Informar
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
            this.lblMensaje = new System.Windows.Forms.Label();
            this.txtIncidencia = new System.Windows.Forms.TextBox();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblMensaje
            // 
            this.lblMensaje.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblMensaje.ForeColor = System.Drawing.Color.LightYellow;
            this.lblMensaje.Location = new System.Drawing.Point(5, 19);
            this.lblMensaje.Name = "lblMensaje";
            this.lblMensaje.Padding = new System.Windows.Forms.Padding(1, 0, 0, 0);
            this.lblMensaje.Size = new System.Drawing.Size(359, 68);
            this.lblMensaje.TabIndex = 3;
            this.lblMensaje.Text = "Indique cualquier incidencia aquí :";
            this.lblMensaje.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // txtIncidencia
            // 
            this.txtIncidencia.BackColor = System.Drawing.Color.Ivory;
            this.txtIncidencia.Font = new System.Drawing.Font("OCR A Extended", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtIncidencia.Location = new System.Drawing.Point(17, 90);
            this.txtIncidencia.Multiline = true;
            this.txtIncidencia.Name = "txtIncidencia";
            this.txtIncidencia.PlaceholderText = "Aquí su incidencia";
            this.txtIncidencia.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtIncidencia.Size = new System.Drawing.Size(334, 159);
            this.txtIncidencia.TabIndex = 4;
            // 
            // btnEnviar
            // 
            this.btnEnviar.BackColor = System.Drawing.Color.LightYellow;
            this.btnEnviar.FlatAppearance.BorderSize = 2;
            this.btnEnviar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEnviar.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnEnviar.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnEnviar.Image = global::TFG_GrakDiana.Properties.Resources.mensaje;
            this.btnEnviar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnEnviar.Location = new System.Drawing.Point(17, 255);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Padding = new System.Windows.Forms.Padding(6, 0, 0, 0);
            this.btnEnviar.Size = new System.Drawing.Size(334, 50);
            this.btnEnviar.TabIndex = 5;
            this.btnEnviar.Text = "Enviar";
            this.btnEnviar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEnviar.UseVisualStyleBackColor = false;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // Informar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightSlateGray;
            this.ClientSize = new System.Drawing.Size(358, 351);
            this.Controls.Add(this.btnEnviar);
            this.Controls.Add(this.txtIncidencia);
            this.Controls.Add(this.lblMensaje);
            this.MinimumSize = new System.Drawing.Size(374, 390);
            this.Name = "Informar";
            this.Text = "Informar";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private Label lblMensaje;
        private TextBox txtIncidencia;
        private Button btnEnviar;
    }
}