using Microsoft.EntityFrameworkCore;
using WebApplication2.Models;

namespace WebApplication2.Data
{
    public class DbInfo: DbContext
    {
        public DbInfo(DbContextOptions<DbInfo> options) : base(options)
        {

        }

        public DbSet<Info> info { get; set; }

        public DbSet<Item> items { get; set; }
        public DbSet<GroupItem> groupItem { get; set; }

        public DbSet<Registrasi> registrasi { get; set; }



    }
}
