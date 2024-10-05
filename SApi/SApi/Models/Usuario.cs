namespace SApi.Models
{
    public class Usuario
    {
        public string? Identificacion { get; set; }
        public string? Name { get; set; }
        public string Correo { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;

    }
}
