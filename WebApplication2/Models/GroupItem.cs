using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Transactions;

namespace WebApplication2.Models
{
    [Table("GroupItem")]
    public class GroupItem
    {
        [Key]
        public int GroupID { get; set; }
        public string? GroupName { get; set; }

        public int Bobot_D { get; set; }

        public int InfoID { get; set; }


    }
}
