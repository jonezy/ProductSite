using System.Collections.Generic;
using System.Web.Mvc;

using ProductSite.Data;
using ProductSite.Web.Services;
using CapitalTimePieces.Models;

namespace ProductSite.Controllers {
  public class ProductsController : BaseController {
    ProductService service;

    protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
      if (service == null) service = new ProductService();

      base.Initialize(requestContext);
    }


    public ActionResult Index() {
      return View();
    }

    public ActionResult Brand(string brandSlug) {
      string currentType = "";
      if (brandSlug == "hot-deals") {
        ViewData["BrandName"] = "Hot Deals";
        currentType = "HotDeals";
      } else if (brandSlug == "new-arrivals") {
        ViewData["BrandName"] = "New Arrivals";
        currentType = "NewArrivals";
      } else if (brandSlug == "sold") {
        ViewData["BrandName"] = "Sold";
        currentType = "Sold";
      } else {
        ViewData["BrandName"] = service.BrandNameFromSlug(brandSlug);
      }


      List<Product> products = null;
      if (!string.IsNullOrEmpty(currentType)) {
        products = service.GetProductByType(currentType);
      } else {
        products = service.ProductByBrandSlug(brandSlug);
      }

      List<ProductViewModel> model = new List<ProductViewModel>();
      foreach (var item in products) {
        model.Add(new ProductViewModel(item));
      }

      return View(model);
    }

    public ActionResult Details(string productName) {
      ProductViewModel model = new ProductViewModel(service.GetProductBySlug(productName));
      return View(model);
    }

    public ActionResult RenderProductNavigation() {
      List<ProductBrand> brands = service.AllProductBrands();
      List<ProductNavigationViewModel> model = new List<ProductNavigationViewModel>();
      foreach (var item in brands) {
        model.Add(new ProductNavigationViewModel(item));
      }

      return PartialView("ProductNavigation", model);
    }
  }
}
