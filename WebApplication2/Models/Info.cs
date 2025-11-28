using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Transactions;

namespace WebApplication2.Models
{
    [Table("Info")]
    public class Info
    {
        [Key]
        public int ItemID { get; set; }
        public string? ItemName { get; set; }

        public int Bobot_F { get; set; }

        public int GroupID { get; set; }


    }
}
