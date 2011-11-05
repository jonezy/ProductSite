using System;
using System.Web.Mvc;
using System.Web.Routing;

using ProductSite.Data;
using ProductSite.Web.Services;

namespace ProductSite.Controllers {
    public class BaseController : Controller {
        ProductService service;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new ProductService();

            base.Initialize(requestContext);
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext) {
            try {
                // figure out the brandSlug and get the brand id
                string brandSlug = filterContext.RouteData.Values["brandSlug"].ToString();
                ProductBrand brand = service.BrandFromSlug(brandSlug);
                ViewData["BrandID"] = brand.ProductBrandID.ToString();
            } catch { }

            base.OnActionExecuting(filterContext);
        }
    }
}
