using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Medicamento
    {
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        public string UnidadMedida { get; set; }
        public int Stock { get; set; }
        public int StockCritico { get; set; }

        public Medicamento()
        {
            this.Init();
        }

        private void Init()
        {
            this.Nombre = string.Empty;
            this.Cantidad = 0;
            this.UnidadMedida = string.Empty;
            this.Stock = 0;
            this.StockCritico = 0;
        }
    }
}
