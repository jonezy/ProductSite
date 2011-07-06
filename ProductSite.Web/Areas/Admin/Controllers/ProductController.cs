using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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
        public ActionResult Create(ProductViewModel model) {
            if (ModelState.IsValid) {
                try {
                    ProductService service = new ProductService();
                    Product product = new Product();
                    product.BraceletID = model.BraceletID;
                    product.BrandID = model.BrandID;
                    product.CaseStyleID = model.CaseStyleID;
                    product.CollectionID = model.CollectionID;
                    product.ColourID = model.ColourID;
                    product.Created = DateTime.Now;
                    product.Description = model.Description;
                    product.Diameter = model.Diameter;
                    product.Gender = model.Gender;
                    product.IncludesWarranty = model.IncludesWarranty;
                    product.IsActive = model.IsActive;
                    product.Model = model.Model;
                    product.Movement = model.Movement;
                    product.ProductName = model.ProductName;
                    product.RefNo = model.RefNo;
                    product.RetailPrice = model.RetailPrice;
                    product.SalePrice = model.SalePrice;
                    product.WholesalePrice = model.WholeSalePrice;

                    service.Save(p: product);

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
        public ActionResult Edit(int id, ProductViewModel model) {
            try {
                if (ModelState.IsValid) {
                    try {
                        Product product = service.GetProductById(id);
                        if (product == null)
                            throw new Exception("That product does not exist");

                        product.BraceletID = model.BraceletID;
                        product.BrandID = model.BrandID;
                        product.CaseStyleID = model.CaseStyleID;
                        product.CollectionID = model.CollectionID;
                        product.ColourID = model.ColourID;
                        product.Created = DateTime.Now;
                        product.Description = model.Description;
                        product.Diameter = model.Diameter;
                        product.Gender = model.Gender;
                        product.IncludesWarranty = model.IncludesWarranty;
                        product.IsActive = model.IsActive;
                        product.Model = model.Model;
                        product.Movement = model.Movement;
                        product.ProductName = model.ProductName;
                        product.RefNo = model.RefNo;
                        product.RetailPrice = model.RetailPrice;
                        product.SalePrice = model.SalePrice;
                        product.WholesalePrice = model.WholeSalePrice;

                        service.Save(p: product);
                        this.StoreSuccess("The product was updated successfully.");

                        return RedirectToAction("Index");
                    } catch (Exception ex) {
                        Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                        this.StoreError("There was a problem saving the product");
                        return View(model);
                    }
                } else {
                    return View(model);
                }
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
