using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Transactions;

namespace WebApplication2.Models
{
    [Table("Registrasi")]
    public class Registrasi
    {
        [Key]
        public int InfoID { get; set; }
        public string? NoAplikasi { get; set; }
        public string? Nama { get; set; }
        public string? TempatLahir { get; set; }
        public string? TglLahir { get; set; }
        public string? Jenkel { get; set; }
        public string? KodePos { get; set; }
        public string? Almt { get; set; }

 
        
    }
}
