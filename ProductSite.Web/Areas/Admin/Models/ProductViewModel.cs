using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using ProductSite.Data;

namespace ProductSite.Areas.Admin.Models {
    public class AdminProductViewModel {
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

        [DisplayName("Gender")]
        public string Gender { get; set; }
        public IEnumerable<SelectListItem> Genders {
            get {
                List<string> genders = new List<string> { "Male", "Female" };
                return genders.Select(g => new SelectListItem { Text = g, Value = g });
            }
        }
        
        [DisplayName("Product Name")]
        public string ProductName { get; set; }

        [DisplayName("Model Name")]
        public string ModelName { get; set; }

        [DisplayName("Movement Type")]
        [Required(ErrorMessage="Please enter a movement type")]
        public string MovementType { get; set; }

        public string Features { get; set; }

        [DisplayName("Movement Details")]
        public string MovementDetails { get; set; }

        [DisplayName("Dial Description")]
        public string DialDescription { get; set; }

        public string Bezel { get; set; }

        [DisplayName("Case Details")]
        public string CaseDetails { get; set; }

        [DisplayName("Retail Price")]
        public decimal RetailPrice { get; set; }
        
        public DateTime Created { get; set; }
        
        [DisplayName("Active")]
        public bool IsActive { get { return true; } set {} }

        public AdminProductViewModel() {}
        public AdminProductViewModel(Product product) {
            ProductID = product.ProductID;
            BrandID = product.BrandID;
            CollectionID = product.CollectionID;
            Gender = product.Gender;
            ProductName = product.ProductName;
            ModelName = product.ModelName;
            MovementType = product.MovementType;
            Features = product.Features;
            MovementDetails = product.MovementDetails;
            DialDescription = product.DialDescription;
            Bezel = product.Bezel;
            CaseDetails = product.CaseDetails;
            RetailPrice = product.RetailPrice;
            IsActive = product.IsActive;
            Created = product.Created;
            
        }
    }
}