using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductSite.Areas.Admin.Models {
    public class ProductViewModel {
        public string Brand { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }
        public DateTime CreatedOn { get; set; }

        public ProductViewModel() {}
        public ProductViewModel(string brand, string name) {
            Brand = brand;
            Name = name;
        }
    }
}