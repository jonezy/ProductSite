﻿using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

using AutoMapper;

using ProductSite.Areas.Admin.Models;
using ProductSite.Data;
using ProductSite.Models;

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

            Mapper.CreateMap<Product, AdminProductViewModel>();
            Mapper.CreateMap<AdminProductViewModel, Product>()
                .ForMember(dest => dest.WholesalePrice, opt => opt.Ignore())
                .ForMember(dest => dest.SalePrice, opt => opt.Ignore())
                .ForMember(dest => dest.CollectionID, opt => opt.Ignore())
                .ForMember(dest => dest.Created, config => config.MapFrom(source => DateTime.Now));

            Mapper.CreateMap<ProductImage, AdminProductImageViewModel>();

            Mapper.CreateMap<ProductBrand, ProductNavigationViewModel>()
                .ForMember(dest => dest.Text, opt => opt.MapFrom(src => src.BrandName))
                .ForMember(dest => dest.CategorySlug, opt => opt.MapFrom(src => src.BrandName.CreateUrlSlug()));

            Mapper.CreateMap<Product, ProductViewModel>()
                .ForMember(dest => dest.BrandName, opt => opt.MapFrom(src => src.ProductBrands.FirstOrDefault().BrandName))
                .ForMember(dest => dest.BrandSlug, opt => opt.MapFrom(src => src.ProductBrands.FirstOrDefault().BrandName.CreateUrlSlug()))
                .ForMember(dest => dest.ProductSlug, opt => opt.MapFrom(src => src.ProductName.CreateUrlSlug()));

            Mapper.CreateMap<ProductImage, ProductImageViewModel>();

            Mapper.AssertConfigurationIsValid();
            RegisterRoutes(RouteTable.Routes);
        }
    }
}