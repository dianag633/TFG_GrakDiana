namespace TFG_GrakDiana
{
    partial class Jugar
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
            this.imgJugar = new System.Windows.Forms.PictureBox();
            this.btnUnJugador = new System.Windows.Forms.Button();
            this.btnCompeticion = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.imgJugar)).BeginInit();
            this.SuspendLayout();
            // 
            // imgJugar
            // 
            this.imgJugar.BackColor = System.Drawing.Color.LightSlateGray;
            this.imgJugar.Image = global::TFG_GrakDiana.Properties.Resources.escritorio;
            this.imgJugar.Location = new System.Drawing.Point(13, 25);
            this.imgJugar.Name = "imgJugar";
            this.imgJugar.Size = new System.Drawing.Size(342, 170);
            this.imgJugar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.imgJugar.TabIndex = 0;
            this.imgJugar.TabStop = false;
            // 
            // btnUnJugador
            // 
            this.btnUnJugador.BackColor = System.Drawing.Color.LightYellow;
            this.btnUnJugador.FlatAppearance.BorderSize = 2;
            this.btnUnJugador.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnUnJugador.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnUnJugador.Image = global::TFG_GrakDiana.Properties.Resources.unJugador;
            this.btnUnJugador.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnUnJugador.Location = new System.Drawing.Point(60, 201);
            this.btnUnJugador.Name = "btnUnJugador";
            this.btnUnJugador.Padding = new System.Windows.Forms.Padding(6, 0, 0, 0);
            this.btnUnJugador.Size = new System.Drawing.Size(250, 50);
            this.btnUnJugador.TabIndex = 1;
            this.btnUnJugador.Text = "Un jugador";
            this.btnUnJugador.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnUnJugador.UseVisualStyleBackColor = false;
            this.btnUnJugador.Click += new System.EventHandler(this.btnUnJugador_Click);
            // 
            // btnCompeticion
            // 
            this.btnCompeticion.BackColor = System.Drawing.Color.LightYellow;
            this.btnCompeticion.FlatAppearance.BorderSize = 2;
            this.btnCompeticion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCompeticion.Font = new System.Drawing.Font("OCR A Extended", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.btnCompeticion.Image = global::TFG_GrakDiana.Properties.Resources.competicion;
            this.btnCompeticion.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCompeticion.Location = new System.Drawing.Point(60, 259);
            this.btnCompeticion.Name = "btnCompeticion";
            this.btnCompeticion.Padding = new System.Windows.Forms.Padding(6, 0, 0, 0);
            this.btnCompeticion.Size = new System.Drawing.Size(250, 50);
            this.btnCompeticion.TabIndex = 2;
            this.btnCompeticion.Text = "Modo competición";
            this.btnCompeticion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCompeticion.UseVisualStyleBackColor = false;
            this.btnCompeticion.Click += new System.EventHandler(this.btnCompeticion_Click);
            // 
            // Jugar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightSlateGray;
            this.ClientSize = new System.Drawing.Size(358, 351);
            this.Controls.Add(this.btnCompeticion);
            this.Controls.Add(this.btnUnJugador);
            this.Controls.Add(this.imgJugar);
            this.MinimumSize = new System.Drawing.Size(374, 390);
            this.Name = "Jugar";
            this.Padding = new System.Windows.Forms.Padding(5, 0, 0, 0);
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.imgJugar)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private PictureBox imgJugar;
        private Button btnUnJugador;
        private Button btnCompeticion;
    }
}