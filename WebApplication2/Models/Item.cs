using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Transactions;

namespace WebApplication2.Models
{
    [Table("Item")]
    public class Item
    {
        [Key]
        public int InfoID { get; set; }
        public string? InfoName { get; set; }

        public int Bobot_B { get; set; }
      
        
    }
}
