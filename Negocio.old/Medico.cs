using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Medico
    {
        public string RutUser { get; set; }
        public string Nombres { get; set; }
        public string ApellidoPat { get; set; }
        public string ApellidoMat { get; set; }
        public string Pass { get; set; }

        public Medico()
        {
            this.Init();
        }

        private void Init()
        {
            this.RutUser = string.Empty;
            this.Nombres = string.Empty;
            this.ApellidoPat = string.Empty;
            this.ApellidoMat = string.Empty;
            this.Pass = string.Empty;
        }      
    }
}
