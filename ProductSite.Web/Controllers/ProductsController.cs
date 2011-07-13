using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProductSite.Controllers {
    public class ProductsController : Controller {
        //
        // GET: /Products/

        public ActionResult Index() {
            return View();
        }

        public ActionResult Category(string categorySlug) {
            return View();
        }


        public ActionResult RenderProductNavigation() {
            return PartialView("ProductNavigation");
        }
    }
}
