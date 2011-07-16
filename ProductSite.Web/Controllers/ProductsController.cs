using System.Collections.Generic;
using System.Web.Mvc;

using AutoMapper;

using ProductSite.Data;
using ProductSite.Models;
using ProductSite.Web.Services;

namespace ProductSite.Controllers {
    public class ProductsController : Controller {
        ProductService service;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new ProductService();

            base.Initialize(requestContext);
        }
        public ActionResult Index() {
            return View();
        }

        public ActionResult Brand(string brandSlug) {
            if (brandSlug == "hot-deals") {
                ViewData["BrandName"] = "Hot Deals";
            } else if (brandSlug == "new-arrivals") {
                ViewData["BrandName"] = "New Arrivals";
            } else {
                ViewData["BrandName"] = service.BrandNameFromSlug(brandSlug);
            }

            List<ProductViewModel> model = Mapper.Map<List<Product>, List<ProductViewModel>>(service.ProductByBrandSlug(brandSlug));
            return View(model);
        }


        public ActionResult RenderProductNavigation() {
            List<ProductNavigationViewModel> model = Mapper.Map<List<ProductBrand>, List<ProductNavigationViewModel>>(service.AllProductBrands());
            
            return PartialView("ProductNavigation", model);
        }
    }
}
