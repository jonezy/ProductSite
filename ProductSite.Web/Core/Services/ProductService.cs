using System.Collections.Generic;
using System.Linq;

using ProductSite.Data;

using SubSonic.Repository;

namespace ProductSite.Web.Services {
    public class ProductService : ServiceBase {
        public object Save(Product p) {
            SubSonicRepository<Product> repository = base.GetRepository<Product>();

            return p.ProductID > 0 ? repository.Update(p) : 
                                     repository.Add(p);
        }

        public int Delete(int productId) {
            return base.GetRepository<Product>().Delete(productId);
        }

        public Product GetProductById(int productId) {
            return base.db.Products.Where(model => model.ProductID == productId).FirstOrDefault();
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
                return base.db.Products.Where(p => p.IsActive == active).ToList();

            return base.db.Products.ToList();
        }

        public List<ProductCollection> ProductBrandCollections(int productBrandId) {
            return base.db.ProductCollections.Where(c => c.ProductBrandID == productBrandId).ToList();
        }

        public List<ProductBrand> AllProductBrands() {
            return base.db.ProductBrands.ToList();
        }
    }
}