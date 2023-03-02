using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoManagement.Models
{
    public sealed class ServiceOrder: MainModel
    {
        public int? Os { get; set; }
        public int? IdProduto { get; set; }
        public string? Modelo { get; set; }
        public string? Serial { get; set; }
        public string? Imei { get; set; }
        public string? DescricaoAparelho { get; set; }
        public string? DescricaoDefeito { get; set; }

    }
}
