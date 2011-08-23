using System.Collections.Generic;
namespace ProductSite.Models {
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
    }
}
