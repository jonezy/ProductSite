using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace CapitalTimePieces.Areas.Admin.Models {
    public class LoginViewModel {
        [Required(ErrorMessage="Please enter your username")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Please enter your password")]
        public string Password { get; set; }

        [DisplayName("Remember me")]
        public bool RememberMe { get; set; }

        public LoginViewModel() {}
    }
}