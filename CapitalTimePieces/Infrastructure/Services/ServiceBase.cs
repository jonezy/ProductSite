using ProductSite.Data;

using SubSonic.Repository;

namespace ProductSite.Web.Services {
    public class ServiceBase {
        protected ProductsDB db;

        public ServiceBase() {
            db = new ProductsDB();
        }

        protected SubSonicRepository<T> GetRepository<T>() where T: class, new() {
            return new SubSonicRepository<T>(db);
        }

    }
}
