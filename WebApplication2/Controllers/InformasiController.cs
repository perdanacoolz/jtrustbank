using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Build.Tasks.Deployment.Bootstrapper;
using Microsoft.EntityFrameworkCore;
using System;
using WebApplication2.Data;
using WebApplication2.Models;
namespace WebApplication2.Controllers
{
    public class InformasiController : Controller
        
    {
        private readonly DbInfo _context;

        public InformasiController(DbInfo context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        { 
            return View();
        }

      
        public IActionResult Post([FromBody] Registrasi registrasi)
        {
            //add staff to the context
            _context.registrasi.Add(registrasi);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }






    }
}
