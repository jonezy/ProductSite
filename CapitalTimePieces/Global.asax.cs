using System;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ProductSite {
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class App : System.Web.HttpApplication {
        public static string BaseUrl {
            get {
                return HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + VirtualPathUtility.ToAbsolute("~/");
            }
        }

        public static void RegisterRoutes(RouteCollection routes) {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "SellYourWatch",
                "sell",
                new { controller = "home", action = "sell" }
            );

            routes.MapRoute(
                "WatchTrading",
                "trading",
                new { controller = "home", action = "trading" }
            );

            routes.MapRoute(
                "Repairs",
                "repairs",
                new { controller = "home", action = "repairs" }
            );

            routes.MapRoute(
                "About",
                "about",
                new { controller = "home", action = "about" }
            );

            routes.MapRoute(
                "Contact",
                "contact",
                new { controller = "home", action = "contact" }
            );

            routes.MapRoute(
                "ProductsByBrand",
                "products/{brandSlug}",
                new { controller = "products", action = "brand" }
            );

            routes.MapRoute(
                "ProductDetailsByProductName",
                "products/{brandSlug}/{productName}",
                new { controller = "products", action = "details" }
            );
            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );

        }

        protected void Application_Start() {
            AreaRegistration.RegisterAllAreas();

            //try {
            //    AutoMapper.Mapper.CreateMap<Product, ProductViewModel>();
            //    AutoMapper.Mapper.AssertConfigurationIsValid();
            //} catch (Exception ex) {
            //}

            RegisterRoutes(RouteTable.Routes);
        }
    }
}