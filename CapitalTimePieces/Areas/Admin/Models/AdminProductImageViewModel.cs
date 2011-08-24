
using ProductSite.Data;
namespace ProductSite.Areas.Admin.Models {
    public class AdminProductImageViewModel {
        public int ProductImageID { get; set; }
        public int ProductID { get; set; }
        public string Path { get; set; }

        public AdminProductImageViewModel(ProductImage productImage) {
            ProductImageID = productImage.ProductImageID;
            ProductID = productImage.ProductID;
            Path = productImage.Path;
        }
    }
}