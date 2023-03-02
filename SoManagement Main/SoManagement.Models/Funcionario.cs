using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoManagement.Models
{
    public sealed class Funcionario: MainModel
    {
        public int IdDepartamento { get; set; }
        public int IdCargo { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
    }
}
