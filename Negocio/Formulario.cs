using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Formulario
    {
        public int IdForm { get; set; }
        public DateTime FechaEmison { get; set; }
        public string TipoTratamiento { get; set; }
        public string RutPaciente { get; set; }
        public string MedicoRutUser { get; set; }
       

        public Formulario()
        {
            this.Init();
        }

        private void Init()
        {
            this.IdForm = 0;
            this.FechaEmison = DateTime.Today;
            this.TipoTratamiento = string.Empty;
            this.RutPaciente = string.Empty;
            this.MedicoRutUser = string.Empty;
            
        }
    }
}
