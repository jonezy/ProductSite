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

        public Product GetProductById(int productId) {
            return base.db.Products.Where(model => model.ProductID == productId).FirstOrDefault();
        }

        public List<Product> AllProducts(bool? active) {
            if(active.HasValue) 
                return base.db.Products.Where(p => p.IsActive == active).ToList();

            return base.db.Products.ToList();
        }

        public List<ProductCollection> ProductBrandCollections(int productBrandId) {
            return base.db.ProductCollections.Where(c => c.ProductBrandID == productBrandId).ToList();
        }
    }
}