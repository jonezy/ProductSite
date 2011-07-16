using System.Web.Mvc;

namespace ProductSite.Areas.Admin.Controllers {
    [RequiresAuthentication(ValidUserRole=UserRole.Administrator, AccessDeniedMessage="You must be logged in as an administrator to view that part of the site")]
    public class WelcomeController : BaseController {
        public ActionResult Index() {
            return View();
        }
    }
}
