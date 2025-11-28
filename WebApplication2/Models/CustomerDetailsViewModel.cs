namespace WebApplication2.Models
{
    public class CustomerDetailsViewModel
    {
        public GroupItem GroupItems { get; set; }
        public IEnumerable<Info> info { get; set; }
        public List<Item> item { get; set; }
        public List<Registrasi> registrasi { get; set; }
    }
}
