using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapitalTimePieces.Models {
    public class HomePageViewModel {
        public ProductViewModel NewArrival { get; set; }
        public ProductViewModel HotDeal { get; set; }
        public ProductViewModel FeaturedWatch { get; set; }
    }
}