using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProductSite.Data;

namespace ProductSite.Areas.Admin.Models {
    public class ProductViewModel {
        public int ProductID { get; set; }
        public int BrandID { get; set; }
        public int CollectionID { get; set; }
        public int CaseStyleID { get; set; }
        public int ColourID { get; set; }
        public int BraceletID { get; set; }
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