using System.Collections.Generic;
namespace ProductSite.Models {
    public class ProductViewModel {
        public string BrandName { get; set; }
        public string Gender { get; set; }
        public string ProductName { get; set; }
        public string ModelName { get; set; }
        public string MovementType { get; set; }
        public string Bezel { get; set; }
        public decimal RetailPrice { get; set; }
        public string BrandSlug { get; set; }
        public string ProductSlug { get; set; }
        public List<ProductImageViewModel> ProductImages { get; set; }
    }
}