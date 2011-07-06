using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProductSite.Data;
using System.Web.Mvc;
using System.ComponentModel;

namespace ProductSite.Areas.Admin.Models {
    public class ProductViewModel {
        public int ProductID { get; set; }
        
        [DisplayName("Brand")]
        public int BrandID { get; set; }
        public IEnumerable<SelectListItem> ProductBrands {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductBrands.Select(pb => new SelectListItem { Text = pb.BrandName, Value = pb.ProductBrandID.ToString() });
            }
        }

        [DisplayName("Collection")]
        public int CollectionID { get; set; }
        public IEnumerable<SelectListItem> ProductCollections {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductCollections.Select(pc => new SelectListItem { Text = pc.CollectionName, Value = pc.ProductCollectionID.ToString() });
            }
        }

        [DisplayName("Case")]
        public int CaseStyleID { get; set; }
        public IEnumerable<SelectListItem> ProductCases {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductCaseStyles.Select(pc => new SelectListItem { Text = pc.CaseStyleName, Value = pc.ProductCaseStyleID.ToString() });
            }
        }

        [DisplayName("Dial")]
        public int ColourID { get; set; }
        public IEnumerable<SelectListItem> ProductColours {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductColours.Select(pc => new SelectListItem { Text = pc.ColourName, Value = pc.ProductColourID.ToString() });
            }
        }

        [DisplayName("Bracelet")]
        public int BraceletID { get; set; }
        public IEnumerable<SelectListItem> BraceletStyles {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductBracelets.Select(pb => new SelectListItem { Text = pb.BraceletName, Value = pb.ProductBraceletID.ToString() });
            }
        }
        
        [DisplayName("Gender")]
        public string Gender { get; set; }
        public IEnumerable<SelectListItem> Genders {
            get {
                List<string> genders = new List<string> { "Male", "Female" };
                return genders.Select(g => new SelectListItem { Text = g, Value = g });
            }
        }
        
        [DisplayName("Retail Price")]
        public decimal RetailPrice { get; set; }
        
        [DisplayName("Wholesale Price")]
        public decimal WholeSalePrice { get; set; }
        
        [DisplayName("Sale Price")]
        public decimal SalePrice { get; set; }

        public string Model { get; set; }
        public string RefNo { get; set; }
        
        [DisplayName("Name")]
        public string ProductName { get; set; }

        [DisplayName("Description")]
        public string Description { get; set; }
        
        public short? Diameter { get; set; }
        public string Movement { get; set; }
        public bool IncludesWarranty { get; set; }
        public DateTime Created { get; set; }
        
        [DisplayName("Active")]
        public bool IsActive { get { return true; } set {} }

        public ProductViewModel() {}
        public ProductViewModel(Product product) {
            ProductID = product.ProductID;
            ProductName = product.ProductName;
            Description = product.Description;
            BrandID = product.BrandID;
            CollectionID = product.CollectionID;
            Gender = product.Gender;
            ColourID = product.ColourID;
            Diameter = product.Diameter;
            CaseStyleID = product.CaseStyleID;
            BraceletID = product.BraceletID;
            Movement = product.Movement;
            IncludesWarranty = product.IncludesWarranty;
            IsActive = product.IsActive;
            Model = product.Model;
            RefNo = product.RefNo;
            RetailPrice = product.RetailPrice;
            WholeSalePrice = product.WholesalePrice;
            SalePrice = product.SalePrice;
        }
    }
}