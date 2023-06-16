using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TFG_GrakDiana
{
    public partial class Final : Form
    {
        private int categoria, resultado, puntuacion, totalPreguntas;
        private string datoCurioso;
        SoundPlayer efectoSonido = new SoundPlayer();


        public Final(int categoria, KeyValuePair<int, int> resultado, int totalPreguntas)
        {
            InitializeComponent();
            this.categoria = categoria;
            this.resultado = resultado.Key;
            this.puntuacion = resultado.Value;
            this.totalPreguntas = totalPreguntas;
        }

        #region Eventos
        private void Final_Load(object sender, EventArgs e)
        {
            visualizarDato();
            visualizarResultado();
            reproducirSonido();
        }
        #endregion

        #region metodos

        public void visualizarResultado()
        {
            if(resultado == (int)Acceso.Resultado.Empate)
            {
                lblJugador.Text = "... Resultado: " + ((Acceso.Resultado)resultado).ToString();
                lblPuntuacion.Text = "... Habéis obtenido " + puntuacion + " puntos de " + totalPreguntas + " cada uno";
            } 
            else
            {
                lblJugador.Text = "... Enhorabuena " + ((Acceso.Resultado)resultado).ToString();
                lblPuntuacion.Text = "... Has obtenido " + puntuacion + " puntos de " + totalPreguntas;
            }
        }

        public void reproducirSonido()
        {
            try
            {
                efectoSonido = new SoundPlayer(Properties.Resources.win);
                efectoSonido.Play();
            }
            catch
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: reproducción de sonido. Por favor informe al administrador a través del Menú Principal: Informar. Gracias",
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        public void visualizarDato()
        {
            datoCurioso = Acceso.obtenerDatoCurioso(categoria);
            if (datoCurioso != null)
            {
                lblDato.Text = datoCurioso;
            } 
            else
            {
                lblDato.Text = "Faltan datos curiosos en la base de datos. Por favor informe a través del Menú Principal: Informar. Gracias";
            }
        }

        #endregion
    }
}
