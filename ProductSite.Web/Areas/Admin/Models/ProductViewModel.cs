using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProductSite.Data;
using System.Web.Mvc;

namespace ProductSite.Areas.Admin.Models {
    public class ProductViewModel {
        public int ProductID { get; set; }
        
        public int BrandID { get; set; }
        public IEnumerable<SelectListItem> ProductBrands {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductBrands.Select(pb => new SelectListItem { Text = pb.BrandName, Value = pb.ProductBrandID.ToString() });
            }
        }

        public int CollectionID { get; set; }
        public IEnumerable<SelectListItem> ProductCollections {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductCollections.Select(pc => new SelectListItem { Text = pc.CollectionName, Value = pc.ProductCollectionID.ToString() });
            }
        }

        public int CaseStyleID { get; set; }
        public IEnumerable<SelectListItem> ProductCases {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductCaseStyles.Select(pc => new SelectListItem { Text = pc.CaseStyleName, Value = pc.ProductCaseStyleID.ToString() });
            }
        }

        public int ColourID { get; set; }
        public IEnumerable<SelectListItem> ProductColours {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductColours.Select(pc => new SelectListItem { Text = pc.ColourName, Value = pc.ProductColourID.ToString() });
            }
        }

        public int BraceletID { get; set; }
        public IEnumerable<SelectListItem> BraceletStyles {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductBracelets.Select(pb => new SelectListItem { Text = pb.BraceletName, Value = pb.ProductBraceletID.ToString() });
            }
        }

        public decimal RetailPrice { get; set; }
        public decimal WholeSalePrice { get; set; }
        public decimal SalePrice { get; set; }
        public string Gender { get; set; }
        public string Model { get; set; }
        public string RefNo { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public int Diameter { get; set; }
        public string Movement { get; set; }
        public bool IncludesWarranty { get; set; }
        public DateTime Created { get; set; }
        public bool IsActive { get; set; }

        public ProductViewModel() {}
        public ProductViewModel(Product product) {
            ProductID = product.ProductID;
            ProductName = product.ProductName;
            Description = product.Description;

        }
    }
}