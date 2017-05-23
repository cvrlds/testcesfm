using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Paciente
    {
        public string Rut { get; set; }
        public string Nombres { get; set; }
        public string ApellidoPat { get; set; }
        public string ApellidoMat { get; set; }
        public string Sector { get; set; }
        public string Direccion { get; set; }
        public int Celular { get; set; }
        public int RedFija { get; set; }
        public string RutTutor { get; set; }
        
        public Paciente()
        {
            this.Init();
        }

        private void Init()
        {
            this.Rut = string.Empty;
            this.Nombres = string.Empty;
            this.ApellidoPat = string.Empty;
            this.ApellidoMat = string.Empty;
            this.Sector = string.Empty;
            this.Direccion = string.Empty;
            this.Celular = 0; ;
            this.RedFija = 0;
            this.RutTutor = string.Empty;
        }
    }
}
