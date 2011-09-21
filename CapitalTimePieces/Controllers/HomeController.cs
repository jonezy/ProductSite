using System.Collections.Generic;
using System.Web.Mvc;

using CapitalTimePieces.Models;

using ProductSite.Data;
using ProductSite.Web.Services;

namespace ProductSite.Controllers {
    public class HomeController : Controller {
        ProductService service;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new ProductService();

            base.Initialize(requestContext);
        }

        public ActionResult Index() {
            // grab 3 random products
            List<Product> products = service.RandomProducts(3);

            HomePageViewModel model = new HomePageViewModel() {
                FeaturedWatch = new ProductViewModel(products[0]),
                HotDeal = new ProductViewModel(products[1]),
                NewArrival = new ProductViewModel(products[2])
            };

            return View(model);
        }

        public ActionResult Sell() {
            return View();
        }

        public ActionResult Trading() {
            return View();
        }

        public ActionResult Testimonials() {
            return View();
        }

        public ActionResult Contact() {
            return View();
        }

        public ActionResult Repairs() {
            return View();
        }
    }
}
