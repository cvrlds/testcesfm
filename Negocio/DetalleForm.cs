using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class DetalleForm
    {
        public int IdForm { get; set; }
        public string IdMedicamento { get; set; }
        public int IdDetalle { get; set; }
        public string Prescripcion { get; set; }
        public int CantidadEntregada { get; set; }
        public DateTime FechaEntrega { get; set; }
        public DateTime FechaProximaEntrega { get; set; }
        public string EstadoEntrega { get; set; }
        public string EntregadoPor { get; set; }


        public DetalleForm()
        {
            this.Init();
        }

        private void Init()
        {
            IdForm= 0;
            IdMedicamento = string.Empty;
            IdDetalle = 0;
            Prescripcion = string.Empty;
            CantidadEntregada = 0;
            FechaEntrega = DateTime.Today;
            FechaProximaEntrega = DateTime.Today;
            EstadoEntrega = string.Empty;
            EntregadoPor = string.Empty;
        }
    }
}
