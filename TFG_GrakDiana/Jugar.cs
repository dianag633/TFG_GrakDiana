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
    public partial class Jugar : Form
    {
        private int modo;

        public Jugar()
        {
            InitializeComponent();
        }

        #region Eventos
        private void btnUnJugador_Click(object sender, EventArgs e)
        {
            modo = (int)Acceso.Modo.UnJugador;
            verCategorias();
        }

        private void btnCompeticion_Click(object sender, EventArgs e)
        {
            modo = (int)Acceso.Modo.Competicion;
            verCategorias();
        }

        #endregion

        #region metodos
        public void verCategorias()
        {
            Categorias categorias = new Categorias(modo);
            categorias.ShowDialog();            
        }

        #endregion

    }
}
