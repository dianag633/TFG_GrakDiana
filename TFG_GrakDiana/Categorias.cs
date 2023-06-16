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
    public partial class Categorias : Form
    {
        private int modo;
        private int categoria;

        public Categorias(int modo)
        {
            InitializeComponent();
            this.modo = modo;
        }

        #region Eventos
        private void btnArte_Click(object sender, EventArgs e)
        {
            categoria = (int)Acceso.Categorias.Arte;
            empezarPartida();
        }

        private void btnCine_Click(object sender, EventArgs e)
        {
            categoria = (int)Acceso.Categorias.Cine;
            empezarPartida();
        }

        private void btnJuegos_Click(object sender, EventArgs e)
        {
            categoria = (int)Acceso.Categorias.Videojuegos;
            empezarPartida();
        }

        private void btnIT_Click(object sender, EventArgs e)
        {
            categoria = (int)Acceso.Categorias.Informatica;
            empezarPartida();
        }

        private void btnSofia_Click(object sender, EventArgs e)
        {
            categoria = (int)Acceso.Categorias.Filosofia;
            empezarPartida();
        }

        private void btnLibros_Click(object sender, EventArgs e)
        {
            categoria = (int)Acceso.Categorias.Literatura;
            empezarPartida();
        }

        #endregion

        #region metodos
        public void empezarPartida()
        {
            this.Hide();
            Partida preguntas = new Partida(modo, categoria);
            preguntas.ShowDialog();
            this.Close();
        }


        #endregion
        
    }
}
