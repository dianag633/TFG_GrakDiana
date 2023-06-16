using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TFG_GrakDiana
{
    public class Acceso
    {        
        private static string Host = "localhost";
        private static string User = "postgres";
        private static string DBname = "tfg";
        private static string Password = "superusuario";
        private static string Port = "5432";

        private static string connString =
                                    String.Format(
                                        "Server={0}; User Id={1}; Database={2}; Port={3}; Password={4};SSLMode=Prefer",
                                        Host,
                                        User,
                                        DBname,
                                        Port,
                                        Password);
        

        #region Enum
        //id_categoria
        public enum Categorias
        {
            Filosofia = 1,
            Videojuegos = 2,
            Informatica = 3,
            Arte = 4,
            Cine = 5,
            Literatura = 6
        }

        //Modo de juego, tipo de partida
        public enum Modo
        {
            UnJugador = 1,
            Competicion = 2
        }

        public enum Turno
        {
            Jugador1 = 1,
            Jugador2 = 2
        }

        public enum Resultado
        {
            Jugador1 = 1,
            Jugador2 = 2,
            Empate = 3
        }

        #endregion


        #region metodos
        
        public static List<Pregunta> obtenerPreguntasPorCategoria(int categoria, int cantidad)
        {
            List<Pregunta> preguntas = new List<Pregunta>();
            Pregunta pregunta;
            int id, idSolucion;
            string descripcion;

            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection(connString))
                {
                    string query = "SELECT * FROM PREGUNTAS WHERE CATEGORIA_ID = " + categoria + " ORDER BY RANDOM();";
                    connection.Open();
                    
                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection))
                    {
                        using (NpgsqlDataReader reader = command.ExecuteReader())
                        {
                            while (preguntas.Count < cantidad && reader.Read())
                            {
                                id = reader.GetInt32(0);
                                descripcion = reader.GetString(1);
                                idSolucion = reader.GetInt32(3);
                                pregunta = new Pregunta(id, descripcion, idSolucion);

                                if(!preguntas.Contains(pregunta))
                                {
                                    preguntas.Add(pregunta);
                                }
                            }                            
                        }
                    }
                }
            }
            catch (NpgsqlException ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            return preguntas;
        }


        public static string obtenerSolucion(int idSolucion)
        {
            string solucion = null;

            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection(connString))
                {
                    string query = "SELECT * FROM SOLUCIONES WHERE ID_SOLUCION = " + idSolucion;
                    connection.Open();

                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection))
                    {
                        using (NpgsqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                solucion = reader.GetString(1);
                            }
                        }
                    }
                }
            }
            catch (NpgsqlException ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            return solucion;
        }


        public static List<string> obtenerContestaciones(int idPregunta)
        {
            List<string> contestaciones = new List<string>();            

            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection(connString))
                {
                    string query = "SELECT * FROM CONTESTACIONES WHERE PREGUNTA_ID = " + idPregunta;
                    connection.Open();

                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection))
                    {
                        using (NpgsqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                contestaciones.Add(reader.GetString(1));                                
                            }
                        }
                    }
                }
            }
            catch (NpgsqlException ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            return contestaciones;
        }


        public static string obtenerDatoCurioso(int categoria)
        {
            string datoCurioso = null;

            try
            {
                using (NpgsqlConnection connection = new NpgsqlConnection(connString))
                {
                    string query = "SELECT * FROM DATOS WHERE CATEGORIA_ID = " + categoria + " ORDER BY RANDOM() LIMIT 1";
                    connection.Open();

                    using (NpgsqlCommand command = new NpgsqlCommand(query, connection))
                    {
                        using (NpgsqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                datoCurioso = reader.GetString(1);
                            }
                        }
                    }
                }
            }
            catch (NpgsqlException ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Se ha producido una incidencia. Motivo: base de datos. Contacte a través de Informar. \n" + ex.Message,
                    "Indicencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

            return datoCurioso;
        }

        #endregion
    }
}
