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
using static TFG_GrakDiana.Acceso;

namespace TFG_GrakDiana
{
    public partial class Partida : Form
    {                
        private List<Pregunta> preguntas;        
        private int categoria, cantidad = 10, cantidadRespuestas = 4;
        private int posicionPreguntaEnLista = 0;

        private Random random = new Random();
        private string solucion;        
        private List<string> respuestas;
        
        private int puntosJugadorUno = 0;
        private int puntosJugadorDos = 0;

        private int modo;
        private int turno;
        
        SoundPlayer efectoSonidoRespuesta = new SoundPlayer();

        public Partida(int modo, int categoria)
        {
            InitializeComponent();
            this.categoria = categoria;
            this.modo = modo;
            turno = (int)Acceso.Turno.Jugador1;            
        }

       
        private void Partida_Shown(object sender, EventArgs e)
        {
            if(obtenerListaPreguntas())
            {
                visualizarTest();
            }
            else
            {
                cerrarFormFaltanDatos();                
            }                        
        }

        private void Partida_Load(object sender, EventArgs e)
        {
            cargarImagen();
        }

       
        #region metodos
       
        //Genera lista con 10 preguntas de categoría X
        //Si no existen preguntas de categoría X o no se ha cargado la cantidad correcta devuelve false
        public bool obtenerListaPreguntas()
        {
            preguntas = Acceso.obtenerPreguntasPorCategoria(categoria, cantidad);
            if(preguntas.Count < cantidad)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        //Forma ventana test antes de respuesta
        public void visualizarTest()
        {
            lblPregunta.Text = preguntas[posicionPreguntaEnLista].Descripcion;
            solucion = Acceso.obtenerSolucion(preguntas[posicionPreguntaEnLista].IdSolucion);
            respuestas = Acceso.obtenerContestaciones(preguntas[posicionPreguntaEnLista].Id);            
            respuestas.Add(solucion);
            asignarRespuesta();
            
        }

        //Asigna los valores de la lista respuestas a los botones de forma aleatoria
        public void asignarRespuesta()
        {
            if(respuestas.Count == cantidadRespuestas)
            {
                List<string> botones = new List<string>();
                int numeroAleatorio;

                while (botones.Count < 4)
                {
                    numeroAleatorio = random.Next(0, 4);

                    if (!botones.Contains(respuestas[numeroAleatorio]))
                    {
                        botones.Add(respuestas[numeroAleatorio]);
                    }
                }

                btn0.Text = botones[0].ToString();
                btn1.Text = botones[1].ToString();
                btn2.Text = botones[2].ToString();
                btn3.Text = botones[3].ToString();
            } 
            else
            {
                cerrarFormFaltanDatos();
            }            
        }
                
        //Comprueba la respuesta del usuario
        public void comprobarRespuesta(string respuesta)
        {
            if(respuesta.Equals(solucion))
            {
                lblCorrecto.Visible = true;                
                if(turno == (int)Acceso.Turno.Jugador1)
                {
                    puntosJugadorUno++;
                    lblPuntos.Text = "Puntos : " + puntosJugadorUno;                    
                } 
                else
                {
                    puntosJugadorDos++;
                    lblPuntos.Text = "Puntos : " + puntosJugadorDos;
                }
                reproducirSonido(lblCorrecto.Visible);                                
            } 
            else
            {
                lblIncorrecto.Visible = true;
                btnVerSolucion.Visible = true;
                reproducirSonido(lblCorrecto.Visible);
            }

            deshabilitarBotones();
            btnSiguiente.Visible = true;
        }

        //Deshabilita los botones cuando el jugador ya ha respondido
        public void deshabilitarBotones()
        {
            btn0.Enabled = false;
            btn1.Enabled = false;
            btn2.Enabled = false;
            btn3.Enabled = false;
        }

        public void limpiarVentana()
        {
            btnSiguiente.Visible = false;
            btn0.Enabled = true;
            btn1.Enabled = true;
            btn2.Enabled = true;
            btn3.Enabled = true;

            btn0.BackColor = Color.LightYellow;
            btn1.BackColor = Color.LightYellow;
            btn2.BackColor = Color.LightYellow;
            btn3.BackColor = Color.LightYellow;

            btn0.FlatAppearance.BorderSize = 3;
            btn1.FlatAppearance.BorderSize = 3;
            btn2.FlatAppearance.BorderSize = 3;
            btn3.FlatAppearance.BorderSize = 3;

            if (lblCorrecto.Visible)
            {
                lblCorrecto.Visible = false;
            } 
            else
            {
                lblIncorrecto.Visible = false;
                btnVerSolucion.Visible=false;
            }
        }

        //Comprueba si es modo competicion, cambia la variable turno si lo es
        public void cambiarTurno()
        {
            if (modo == (int)Acceso.Modo.Competicion)
            {
                if (turno == (int)Acceso.Turno.Jugador1)
                {
                    turno = (int)Acceso.Turno.Jugador2;
                    lblPuntos.Text = "Puntos : " + puntosJugadorDos;
                    lblTurno.Text = "Turno  : " + Acceso.Turno.Jugador2.ToString();
                }
                else if (turno == (int)Acceso.Turno.Jugador2)
                {
                    turno = (int)Acceso.Turno.Jugador1;
                    lblPuntos.Text = "Puntos : " + puntosJugadorUno;
                    lblTurno.Text = "Turno  : " + Acceso.Turno.Jugador1.ToString();
                }
            }
        }

        //Devuelve el resultado de la partida
        public KeyValuePair<int, int> comparaPuntos()
        {
            KeyValuePair<int, int> resultado;

            if(puntosJugadorUno > puntosJugadorDos)
            {                
                resultado = new KeyValuePair<int, int>((int)Acceso.Resultado.Jugador1, puntosJugadorUno);

            } 
            else if(puntosJugadorDos > puntosJugadorUno)
            {
                resultado = new KeyValuePair<int, int>((int)Acceso.Resultado.Jugador2, puntosJugadorDos);
            } 
            else if(puntosJugadorDos == puntosJugadorUno && modo == (int)Acceso.Modo.Competicion)
            {
                resultado = new KeyValuePair<int, int>((int)Acceso.Resultado.Empate, puntosJugadorUno);
            } 
            else
            {
                resultado = new KeyValuePair<int, int>((int)Acceso.Resultado.Jugador1, puntosJugadorUno);
            }

            return resultado;
        }

        //Reproduce un efecto de sonido cuando el usuario responde a una pregunta
        public void reproducirSonido(bool correcta)
        {
            try
            {
                if (correcta)
                {
                    efectoSonidoRespuesta = new SoundPlayer(Properties.Resources.respuestaCorrecta);
                }
                else
                {
                    efectoSonidoRespuesta = new SoundPlayer(Properties.Resources.respuestaIncorrecta);
                }                
                efectoSonidoRespuesta.Play();
            }
            catch
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: reproducción de sonido. Por favor informe al administrador a través del Menú Principal: Informar. Gracias", 
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        //Carga el pictureBox según categoria
        public void cargarImagen()
        {
            try
            {
                switch (categoria)
                {
                    case ((int)Acceso.Categorias.Cine):
                        imgCategoria.Image = Properties.Resources.cinePartida;
                        break;
                    case ((int)Acceso.Categorias.Videojuegos):
                        imgCategoria.Image = Properties.Resources.videojuegosPartida;
                        break;
                    case ((int)Acceso.Categorias.Informatica):
                        imgCategoria.Image = Properties.Resources.itPartida;
                        break;
                    case ((int)Acceso.Categorias.Arte):
                        imgCategoria.Image = Properties.Resources.artePartida;
                        break;
                    case ((int)Acceso.Categorias.Filosofia):
                        imgCategoria.Image = Properties.Resources.filosofiaPartida;
                        break;
                    case ((int)Acceso.Categorias.Literatura):
                        imgCategoria.Image = Properties.Resources.literaturaPartida;
                        break;
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: carga de imagen. Por favor informe al administrador a través del Menú Principal: Informar. Gracias",
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }

        public void cerrarFormFaltanDatos()
        {
            DialogResult result = MessageBox.Show("Se ha producido una incidencia. Motivo: faltan datos en la base de datos. Por favor informe al administrador a través del Menú Principal: Informar. Gracias",
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            if (result == DialogResult.OK)
            {
                this.Close();
            }            
        }

        #endregion

        #region Eventos

        private void btn0_Click(object sender, EventArgs e)
        {
            comprobarRespuesta(btn0.Text);
            btn0.FlatAppearance.BorderSize = 6;
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            comprobarRespuesta(btn1.Text);
            btn1.FlatAppearance.BorderSize = 6;
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            comprobarRespuesta(btn2.Text);
            btn2.FlatAppearance.BorderSize = 6;
        }
        
        private void btn3_Click(object sender, EventArgs e)
        {
            comprobarRespuesta(btn3.Text);
            btn3.FlatAppearance.BorderSize = 6;
        }

        
        //Comprueba y cambia el backColor del botón que contiene la respuesta correcta
        private void btnVerSolucion_Click(object sender, EventArgs e)
        {
            if (btn0.Text.Equals(solucion))
            {
                btn0.BackColor = Color.DarkSeaGreen;
            }
            else if (btn1.Text.Equals(solucion))
            {
                btn1.BackColor = Color.DarkSeaGreen;
            } 
            else if (btn2.Text.Equals(solucion))
            {
                btn2.BackColor = Color.DarkSeaGreen;
            } 
            else
            {
                btn3.BackColor = Color.DarkSeaGreen;
            }
        }
        
        private void btnSiguiente_Click(object sender, EventArgs e)
        {            
            posicionPreguntaEnLista++;
            if (posicionPreguntaEnLista < preguntas.Count)
            {
                cambiarTurno();
                limpiarVentana();
                visualizarTest();                
            } 
            else
            {
                this.Hide();
                Final final = new Final(categoria, comparaPuntos(), (int)preguntas.Count);
                final.ShowDialog();
                this.Close();
            }
        }
        
        //Advertencia de perdida de progreso en partida si se cierra el form
        private void Partida_FormClosing(object sender, FormClosingEventArgs e)
        {
            if(posicionPreguntaEnLista < preguntas.Count && preguntas.Count == cantidad && respuestas.Count == cantidadRespuestas)
            {
                DialogResult result = MessageBox.Show("Si cierra ahora perderá el progreso de la partida ¿Está seguro?", "Advertencia", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (result == DialogResult.No)
                {
                    e.Cancel = true;
                }
            }                        
        }

        #endregion
    }
}
