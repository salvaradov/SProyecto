using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SApi.Models;

namespace SApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        [HttpPost]
        [Route("CrearCuenta")]
        public IActionResult CrearCuenta(Usuario model)
        {
            
            return Ok();
        }

    }
}
