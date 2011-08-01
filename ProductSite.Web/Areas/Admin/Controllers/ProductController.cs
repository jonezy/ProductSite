using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using AutoMapper;

using ProductSite.Areas.Admin.Models;
using ProductSite.Data;
using ProductSite.Web.Services;
using System.Collections.Specialized;

namespace ProductSite.Areas.Admin.Controllers {
    [RequiresAuthentication(ValidUserRole = UserRole.Administrator, AccessDeniedMessage = "You must be logged in as an administrator to view that part of the site")]
    public class ProductController : BaseController {
        string imagesDirectory = "~/Uploads/Products/{0}";
        ProductService service;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new ProductService();

            base.Initialize(requestContext);
        }

        public ActionResult Index() {
            List<Product> products = service.AllProducts(null);
            List<AdminProductViewModel> model = Mapper.Map<List<Product>, List<AdminProductViewModel>>(products);

            return View(model);
        }

        [HttpGet]
        public ActionResult Create() {
            return View(new AdminProductViewModel());
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(AdminProductViewModel model, IEnumerable<HttpPostedFileBase> files) {
            if (ModelState.IsValid) {
                try {
                    Product product = Mapper.Map<AdminProductViewModel, Product>(model);
                    service.Save(product);

                    SaveImages(Request.Form, files, product.ProductID);

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

        [HttpGet]
        public ActionResult Edit(int? id) {
            AdminProductViewModel model = Mapper.Map<Product,AdminProductViewModel>(service.GetProductById(id.Value));
            
            return View("Create", model);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, AdminProductViewModel model, IEnumerable<HttpPostedFileBase> files) {
            if (ModelState.IsValid) {
                try {
                    Product product = Mapper.Map<AdminProductViewModel, Product>(model);
                    service.Save(product);
                   
                    SaveImages(Request.Form,files, product.ProductID);

                    this.StoreSuccess("The product was updated successfully.");

                    return RedirectToAction("Index");
                } catch (Exception ex) {
                    Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                    this.StoreError("There was a problem saving the product");
                }
            }

            return View("Create", model);
        }

        private void SaveImages(NameValueCollection form, IEnumerable<HttpPostedFileBase> files, int productId) {
            if (files != null) {
                foreach (var file in files) {
                    if (file != null) {
                        string productImageDirectory = string.Format(imagesDirectory, productId);
                        string rootProductImageDirectory = Server.MapPath(productImageDirectory);
                        string fileName = Path.GetFileName(file.FileName);
                        string path = Path.Combine(rootProductImageDirectory, fileName);
                        string savePath = string.Format("{0}/{1}", productImageDirectory, fileName);
                        int productImageID = 0;

                        if (!Directory.Exists(rootProductImageDirectory))
                            Directory.CreateDirectory(rootProductImageDirectory);

                        foreach (string key in form) {
                            if (form[key].Contains(fileName)) {
                                productImageID = int.Parse(form[key].Substring(0, form[key].IndexOf("_")));
                            }

                        }

                        try {
                            file.SaveAs(path);
                            
                            ProductImage image = new ProductImage { ProductID = productId, Path = savePath };
                            service.SaveImage(image);
                        } catch (Exception ex) {
                            Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
                        }
                    }
                }
            }
        }

        [HttpGet]
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
