using System.Web.Mvc;

using ProductSite.Data;

namespace ProductSite.Models {
    public class ProductNavigationViewModel {
        public string Text { get; set; }
        public string CategorySlug { get; set; }

        public ProductNavigationViewModel(ProductBrand productBrand) {
            Text = productBrand.BrandName;
            CategorySlug = Text.CreateUrlSlug();
        }
    }
}