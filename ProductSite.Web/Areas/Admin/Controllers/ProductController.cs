using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

using AutoMapper;

using ProductSite.Areas.Admin.Models;
using ProductSite.Data;
using ProductSite.Web.Services;

namespace ProductSite.Areas.Admin.Controllers {
    [RequiresAuthentication(ValidUserRole = UserRole.Administrator, AccessDeniedMessage = "You must be logged in as an administrator to view that part of the site")]
    public class ProductController : BaseController {

        ProductService service;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new ProductService();

            base.Initialize(requestContext);
        }

        public ActionResult Index() {
            List<Product> products = service.AllProducts(null);
            List<AdminProductViewModel> model = new List<AdminProductViewModel>();
            foreach (Product item in products) {
                model.Add(new AdminProductViewModel(item));
            }

            return View(model);
        }

        public ActionResult Create() {
            return View(new AdminProductViewModel());
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(AdminProductViewModel model) {
            if (ModelState.IsValid) {
                try {
                    Product product = Mapper.Map<AdminProductViewModel, Product>(model);
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
            AdminProductViewModel model = new AdminProductViewModel(service.GetProductById(id.Value));
            return View("Create", model);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, AdminProductViewModel model) {
            if (ModelState.IsValid) {
                try {
                    Product product = Mapper.Map<AdminProductViewModel, Product>(model);

                    service.Save(product);

                    this.StoreSuccess("The product was updated successfully.");

                    return RedirectToAction("Index");
                } catch (Exception ex) {
                    Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                    this.StoreError("There was a problem saving the product");
                    return View("Create", model);
                }
            }
            return View("Create", model);
        }

        public ActionResult Delete(int? id) {
            try {
                service.Delete(id.Value);
                this.StoreSuccess("The product was deleted successfully");
            } catch (Exception ex) {
                Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                this.StoreError("There was a problem deleting the product");
            }

            return RedirectToAction("Index");
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
