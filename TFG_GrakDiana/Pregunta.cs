using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TFG_GrakDiana
{    

    public class Pregunta
    {
        private int id;
        private string descripcion;
        private int idSolucion;
        

        public Pregunta(int id, string descripcion, int idSolucion)
        {
            this.id = id;
            this.descripcion = descripcion;
            this.idSolucion = idSolucion;
        }       

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value;  }
        }

        public int IdSolucion
        {
            get { return idSolucion; }
            set { idSolucion = value; }
        }

    }
}
