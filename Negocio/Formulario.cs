using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Formulario
    {
        public int Codigo { get; set; }
        public DateTime FechaIngreso { get; set; }
        public Medico medico { get; set; }
        public Paciente paciente { get; set; }
        public Medicamento medicam { get; set; }
        public Prescripcion presc { get; set; }
        public bool Control { get; set; }

        public Formulario()
        {
            this.Init();
        }

        private void Init()
        {
            this.Codigo = 0;
            this.FechaIngreso = DateTime.Today;
            this.medico = medico;
            this.paciente = paciente;
            this.medicam = medicam;
            this.presc = presc;
            this.Control = false;
        }
    }
}
