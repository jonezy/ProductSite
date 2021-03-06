﻿
using ProductSite.Data;
namespace CapitalTimePieces.Models {
    public class ProductImageViewModel {
        public int ProductImageID { get; set; }
        public int ProductID { get; set; }
        public string Path { get; set; }

        public ProductImageViewModel(ProductImage productImage) {
            ProductImageID = productImage.ProductImageID;
            ProductID = productImage.ProductID;
            Path = productImage.Path;
        }
    }
}