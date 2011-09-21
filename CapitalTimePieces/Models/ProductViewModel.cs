using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

using ProductSite.Data;

namespace CapitalTimePieces.Models {
    public class ProductViewModel {
        public string BrandName { get; set; }
        public string Gender { get; set; }
        public string ProductName { get; set; }
        public string ModelName { get; set; }
        public string ModelNumber { get; set; }
        public string SerialNumber { get; set; }
        public string CaseSize { get; set; }
        public string CaseMaterial { get; set; }
        public string Bezel { get; set; }
        public string Crystal { get; set; }
        public string DialColour { get; set; }
        public string Movement { get; set; }
        public string Functions { get; set; }
        public string Strap { get; set; }
        public string WaterResistant { get; set; }
        public string Condition { get; set; }
        public decimal RetailPrice { get; set; }
        public string BoxPapers { get; set; }
        public string Warranty { get; set; }
        public string BrandSlug { get; set; }
        public string ProductSlug { get; set; }
        public List<ProductImageViewModel> ProductImages { get; set; }
        public string ListShortName { get; set; }

        public ProductViewModel(Product product) {
            BrandName = product.ProductBrands.FirstOrDefault().BrandName;
            BrandSlug = product.ProductBrands.FirstOrDefault().BrandName.CreateUrlSlug();
            Condition = product.ProductConditions.FirstOrDefault().ConditionDescription;
            ListShortName = string.Format("{0} {1}", BrandName, product.ModelName);
            ProductSlug = product.ProductName.CreateUrlSlug();
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
            ProductImages = new List<ProductImageViewModel>();
            foreach (ProductImage image in product.ProductImages) {
                ProductImages.Add(new ProductImageViewModel(image));
	        }   
        }
    }
}
