using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoManagement.Models
{
    public abstract class MainModel
    {
        public int IdFuncionario { get; set; }
        public int? IdLocalidade { get; set; }
        public string Nome { get; set; }
        public string? Cpf { get; set; }
        public string? Telefone { get; set; }
        public string? Email { get; set; }
        public string? Endereco { get; set; }
        public string? Cep { get; set; }
    }
}
