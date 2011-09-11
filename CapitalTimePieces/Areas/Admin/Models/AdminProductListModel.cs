using System.Collections.Generic;
using System.Web.Mvc;

using RichmondDay.Helpers;

namespace CapitalTimePieces.Areas.Admin.Models {
    public class AdminProductListModel {
        public int PageSize { get { return 12; } }
        public int CurrentPageIndex { get; set; }
        public int TotalRecords { get; set; }

        public IPagedList<AdminProductViewModel> Products { get; set; }

        public AdminProductListModel(IList<AdminProductViewModel> products, int currentPageIndex) {
            CurrentPageIndex = currentPageIndex;
            TotalRecords = products.Count;

            Products = products.ToPagedList(CurrentPageIndex, PageSize, TotalRecords);
        }
    }
}