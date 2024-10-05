using Microsoft.AspNetCore.Mvc;

using System.Diagnostics;

namespace SWeb.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
