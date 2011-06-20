using System.Web.Mvc;

namespace ProductSite.Areas.Admin.Controllers {
    public class WelcomeController : Controller {
        public ActionResult Index() {
            return View();
        }
    }
}
