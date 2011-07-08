using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

using AutoMapper;

using ProductSite.Areas.Admin.Models;
using ProductSite.Data;
using ProductSite.Web.Services;

namespace ProductSite.Areas.Admin.Controllers {
    public class ProductController : Controller {

        ProductService service;
        
        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if(service == null) service = new ProductService();

            base.Initialize(requestContext);
        }

        public ActionResult Index() {
            List<Product> products = service.AllProducts(null);
            List<ProductViewModel> model = new List<ProductViewModel>();
            foreach (Product item in products) {
                model.Add(new ProductViewModel(item));
            }

            return View(model);
        }

        public ActionResult Create() {
            return View(new ProductViewModel());
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(ProductViewModel model) {
            if (ModelState.IsValid) {
                try {
                    Product product = Mapper.Map<ProductViewModel, Product>(model);
                    service.Save(product);

                    this.StoreSuccess("The product was added successfully.");

                    return RedirectToAction("Index");
                } catch (Exception ex) {
                    Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                    this.StoreError("There was a problem saving the product");
                    return View(model);
                }
            } else {
                return View(model);
            }
        }

        public ActionResult Edit(int? id) {
            ProductViewModel model = new ProductViewModel(service.GetProductById(id.Value));
            return View("Create", model);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, ProductViewModel model) {
            if (ModelState.IsValid) {
                try {
                    Product product = Mapper.Map<ProductViewModel, Product>(model);

                    service.Save(product);
                        
                    this.StoreSuccess("The product was updated successfully.");

                    return RedirectToAction("Index");
                } catch (Exception ex) {
                    Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                    this.StoreError("There was a problem saving the product");
                    return View(model);
                }
            }
            return View(model);
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


        [HttpGet]
        public JsonResult UpdateCollections(int? id) {
            ProductService service = new ProductService();
            List<ProductCollection> collections = service.ProductBrandCollections(id.Value);

            // convert to a selectlist item since that's what were binding the results too.
            JsonResult result = Json(collections.Select(c => new SelectListItem { Text = c.CollectionName, Value = c.ProductCollectionID.ToString() }), JsonRequestBehavior.AllowGet);

            return result;
        }
    }
}
