using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Prescripcion
    {
        public int Cantidad { get; set; }
        public int Horas { get; set; }
        public int Dias { get; set; }

        public Prescripcion()
        {
            this.Init();
        }

        private void Init()
        {
            this.Cantidad = 0;
            this.Horas = 0;
            this.Dias = 0;
        }
    }
}
