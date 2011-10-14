using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

using ProductSite.Data;

using SubSonic.Repository;
using System.Data.Linq.Mapping;
using System;
using SubSonic.Query;

namespace ProductSite.Web.Services {
    public class ProductService : ServiceBase {
        public object Save(Product p) {
            SubSonicRepository<Product> repository = base.GetRepository<Product>();

            return p.ProductID > 0 ? repository.Update(p) : 
                                     repository.Add(p);
        }

        public object SaveImage(ProductImage p) {
            SubSonicRepository<ProductImage> repository = base.GetRepository<ProductImage>();

            return p.ProductImageID > 0 ? repository.Update(p) :
                                          repository.Add(p);
        }
        public int Delete(int productId) {
            return base.GetRepository<Product>().Delete(productId);
        }
        public int DeleteImage(int productImageId) {
            return base.GetRepository<ProductImage>().Delete(productImageId);
        }
        public void DeleteProductImages(int productId) {
            GetRepository<ProductImage>().DeleteMany(i => i.ProductID == productId);
        }
        public Product GetProductById(int productId) {
            return base.db.Products.Where(model => model.ProductID == productId).FirstOrDefault();
        }

        public Product GetProductBySlug(string productSlug) {
            foreach (Product item in base.db.Products) {
                if (item.ProductName.CreateUrlSlug() == productSlug)
                    return item;
            }

            return null;
        }

        public ProductImage GetProductImageById(int id) {
            return base.db.ProductImages.Where(pi => pi.ProductImageID == id).FirstOrDefault();
        }

        public List<Product> ProductByBrandSlug(string slug) {
            int brandId = 0;
            foreach (var  brand in base.db.ProductBrands) {
                if (brand.BrandName.CreateUrlSlug() == slug) {
                    brandId = brand.ProductBrandID;
                    break;
                }
            }

            var results = from product in base.db.Products
                          where product.BrandID == brandId
                          select product;

            return results.ToList();
        }

        public string BrandNameFromSlug(string brandSlug) {
            if (brandSlug == "")
                return "";

            foreach (var brand in base.db.ProductBrands) {
                if (brand.BrandName.CreateUrlSlug() == brandSlug)
                    return brand.BrandName;
            }

            return "";
        }
        public List<Product> AllProducts(bool? active) {
            if(active.HasValue) 
                return base.db.Products.Where(p => p.IsActive == active).OrderBy(p => p.ProductName).ToList();

            return base.db.Products.OrderBy(p => p.ProductName).ToList();
        }

        public List<ProductCollection> ProductBrandCollections(int productBrandId) {
            return base.db.ProductCollections.Where(c => c.ProductBrandID == productBrandId).OrderBy(c => c.CollectionName).ToList();
        }

        public List<ProductBrand> AllProductBrands() {
            return base.db.ProductBrands.OrderBy(pb => pb.BrandName).ToList();
        }

        public List<Product> RandomProducts(int count) {

            return new CodingHorror(base.db.DataProvider, "SELECT TOP 3 *, newid() as sortorder FROM product ORDER by sortorder").ExecuteTypedList<Product>();
        }
    }
}