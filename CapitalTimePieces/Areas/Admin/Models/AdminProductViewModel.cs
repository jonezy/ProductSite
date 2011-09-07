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
                return db.ProductBrands.OrderBy(pb => pb.BrandName).Select(pb => new SelectListItem { Text = pb.BrandName, Value = pb.ProductBrandID.ToString() });
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

        [DisplayName("Condition")]
        public int Condition { get; set; }
        public IEnumerable<SelectListItem> Conditions {
            get {
                ProductsDB db = new ProductsDB();
                return db.ProductConditions.OrderBy(pc => pc.ConditionDescription).Select(pc => new SelectListItem { Text = pc.ConditionDescription, Value = pc.ProductConditionID.ToString() });
            }
        }

        [DisplayName("Product Name")]
        public string ProductName { get; set; }

        [DisplayName("Model Name")]
        public string ModelName { get; set; }
        
        [DisplayName("Model Number")]
        public string ModelNumber { get; set; }
        
        [DisplayName("Serial Number")]
        public string SerialNumber { get; set; }

        [DisplayName("Case Size")]
        public string CaseSize { get; set; }

        [DisplayName("Case Material")]
        public string CaseMaterial { get; set; }

        [DisplayName("Crystal")]
        public string Crystal { get; set; }

        [DisplayName("Dial Colour")]
        public string DialColour { get; set; }

        [Required(ErrorMessage="Please enter a movement type")]
        public string Movement { get; set; }

        public string Functions { get; set; }

        public string Strap { get; set; }
        public string WaterResistant { get; set; }
        
        [DisplayName("Box/Papers")]
        public string BoxPapers { get; set; }
        
        public string Warranty { get; set; }

        public string Bezel { get; set; }
    
        [DisplayName("Retail Price")]
        public decimal RetailPrice { get; set; }
        
        public bool NewArrival { get; set; }
        public bool HotDeal { get; set; }
        
        [DisplayName("Active")]
        public bool IsActive { get { return true; } set {} }

        public List<AdminProductImageViewModel> ProductImages { get; set; }

        public AdminProductViewModel() {

        }

        public AdminProductViewModel(Product product) {
            ProductID = product.ProductID;
            BrandID = product.BrandID;
            Condition = product.ProductConditions.FirstOrDefault().ProductConditionID;
            Gender = product.Gender;
            ProductName = product.ProductName;
            ModelName = product.ModelName;
            ModelNumber = product.ModelNumber;
            SerialNumber = product.SerialNumber;
            CaseSize = product.CaseSize;
            CaseMaterial = product.CaseMaterial;
            Bezel = product.Bezel;
            Crystal = product.Crystal;
            DialColour = product.DialColour;
            Movement = product.Movement;
            Functions = product.Functions;
            Strap = product.Strap;
            WaterResistant = product.WaterResistant;
            RetailPrice = product.RetailPrice;
            BoxPapers = product.BoxPapers;
            Warranty = product.Warranty;
            ProductImages = new List<AdminProductImageViewModel>();
            foreach (ProductImage image in product.ProductImages) {
                ProductImages.Add(new AdminProductImageViewModel(image));
            }   
        
        }
    }
}