using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TFG_GrakDiana
{
    public partial class Informar : Form
    {
        public Informar()
        {
            InitializeComponent();
        }

        #region Eventos
        private void btnEnviar_Click(object sender, EventArgs e)
        {
            if(txtIncidencia.Text.Trim().Equals(""))
            {
                lblMensaje.Text = "La incidencia no puede estar vacía.";
            } 
            else
            {
                lblMensaje.Text = "Se ha notificado la incidencia. Estamos trabajando en ello. Gracias por su aportación y paciencia.";
                btnEnviar.Enabled = false;
                txtIncidencia.Enabled = false;
            }
        }
        #endregion
    }
}
