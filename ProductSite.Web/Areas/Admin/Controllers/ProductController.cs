using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProductSite.Areas.Admin.Models;
using ProductSite.Data;

namespace ProductSite.Areas.Admin.Controllers {
    public class ProductController : Controller {
        //
        // GET: /Product/
        private List<ProductViewModel> productViewModels;
        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if(productViewModels == null) InitializeProducts();
            base.Initialize(requestContext);
        }

        private void InitializeProducts() {
            productViewModels = new List<ProductViewModel>();
            for (int i = 0; i < 10; i++) {
                productViewModels.Add(new ProductViewModel(new Product()));
            }
        }

        public ActionResult Index() {
            List<ProductViewModel> model = productViewModels;
            return View(model);
        }

        //
        // GET: /Product/Details/5

        public ActionResult Details(int id) {
            return View();
        }

        //
        // GET: /Product/Create

        public ActionResult Create() {
            return View();
        }

        //
        // POST: /Product/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection) {
            try {
                // TODO: Add insert logic here
                this.StoreSuccess("Would have saved a product hurr");
                return RedirectToAction("Index");
            } catch {
                return View();
            }
        }

        //
        // GET: /Product/Edit/5

        public ActionResult Edit(int? id) {
            return View("Create");
        }

        //
        // POST: /Product/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection) {
            try {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            } catch {
                return View();
            }
        }

        //
        // GET: /Product/Delete/5

        public ActionResult Delete(int? id) {
            this.StoreInfo("Deleted fool!");

            return RedirectToAction("Index");
        }

        //
        // POST: /Product/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection) {
            try {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            } catch {
                return View();
            }
        }
    }
}
