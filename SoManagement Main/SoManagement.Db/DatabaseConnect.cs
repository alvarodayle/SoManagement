using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace SoManagement.Db
{
    public static class DatabaseConnect
    {
        public static string Connect
        {
            get
            {
                return @"Data Source = DAYLES\SQLEXPRESS; Initial Catalog = SoManagement; Integrated Security = True";
            }
        }
    }
}
