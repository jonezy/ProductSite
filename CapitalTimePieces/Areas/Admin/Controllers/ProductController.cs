using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using CapitalTimePieces.Areas.Admin.Models;

using ProductSite.Data;
using ProductSite.Web.Services;

namespace ProductSite.Areas.Admin.Controllers {
  [RequiresAuthentication(ValidUserRole = UserRole.Administrator, AccessDeniedMessage = "You must be logged in as an administrator to view that part of the site")]
  public class ProductController : BaseController {
    string imagesDirectory = "~/Uploads/Products/{0}";
    ProductService service;

    protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
      if (service == null) service = new ProductService();

      base.Initialize(requestContext);
    }

    public ActionResult Index(int? page) {
      int currentPage = page.HasValue ? page.Value - 1 : 0;
      List<Product> products = service.AllProducts(null);

      List<AdminProductViewModel> productModel = new List<AdminProductViewModel>();
      foreach (var item in products) {
        productModel.Add(new AdminProductViewModel(item));
      }

      AdminProductListModel model = new AdminProductListModel(productModel, currentPage);

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
          Product product = CreateProduct(model);

          service.Save(product);

          SaveImages(Request.Form, files, product.ProductID);

          this.StoreSuccess("The product was added successfully.");

          return RedirectToAction("edit", new { id = product.ProductID });
        } catch (Exception ex) {
          Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
          this.StoreError("There was a problem saving the product");
          return View(model);
        }
      } else {
        return View(model);
      }
    }

    private Product CreateProduct(AdminProductViewModel model) {
      Product product = model.ProductID > 0 ?
          service.GetProductById(model.ProductID) :
          new Product();

      product.Bezel = model.Bezel;
      product.BoxPapers = model.BoxPapers;
      product.BrandID = model.BrandID;
      product.CaseMaterial = model.CaseMaterial;
      product.CaseSize = model.CaseSize;
      product.Condition = model.Condition;
      product.Created = DateTime.Now;
      product.Crystal = model.Crystal;
      product.DialColour = model.DialColour;
      product.Functions = model.Functions;
      product.Gender = model.Gender;
      product.IsActive = model.IsActive;
      product.ModelName = model.ModelName;
      product.ModelNumber = model.ModelNumber;
      product.Movement = model.Movement;
      product.ProductName = model.ProductName;
      product.RetailPrice = model.RetailPrice;
      product.SerialNumber = model.SerialNumber;
      product.Strap = model.Strap;
      product.Warranty = model.Warranty;
      product.WaterResistant = model.WaterResistant;
      product.NewArrival = model.NewArrival;
      product.HotDeal = model.HotDeal;
      product.Sold = model.Sold ? model.Sold : false;

      return product;
    }

    [HttpGet]
    public ActionResult Edit(int? id) {
      AdminProductViewModel model = new AdminProductViewModel(service.GetProductById(id.Value));

      return View("Create", model);
    }

    [HttpPost]
    [ValidateInput(false)]
    public ActionResult Edit(int id, AdminProductViewModel model, IEnumerable<HttpPostedFileBase> files) {
      if (ModelState.IsValid) {
        try {
          Product product = CreateProduct(model);
          service.Save(product);

          SaveImages(Request.Form, files, product.ProductID);

          this.StoreSuccess("The product was updated successfully.");

          return RedirectToAction("Edit", new { id = id });
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

            try {
              if (!Directory.Exists(rootProductImageDirectory))
                Directory.CreateDirectory(rootProductImageDirectory);
            } catch (IOException ioex) {
              Elmah.ErrorSignal.FromCurrentContext().Raise(ioex);
            } catch (UnauthorizedAccessException uex) {
              Elmah.ErrorSignal.FromCurrentContext().Raise(uex);
            } catch (Exception ex) {
              Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
            }

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
        // delete product images
        string productImageDirectory = string.Format(imagesDirectory, id.Value);

        if (Directory.Exists(productImageDirectory))
          Directory.Delete(Server.MapPath(productImageDirectory), true);

        service.DeleteProductImages(id.Value);
        service.Delete(id.Value);
        this.StoreSuccess("The product was deleted successfully");
      } catch (Exception ex) {
        Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
        this.StoreError("There was a problem deleting the product");
      }

      return RedirectToAction("Index");
    }

    [HttpGet]
    public ActionResult DeleteImage(int? id) {
      ProductImage productImage = service.GetProductImageById(id.Value);
      try {
        System.IO.File.Delete(Server.MapPath(productImage.Path));

        service.DeleteImage(productImage.ProductImageID);

        this.StoreSuccess("The product was deleted successfully");
      } catch (Exception ex) {
        Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
        this.StoreError("There was a problem deleting the product");
      }

      return RedirectToAction("Edit", new { id = productImage.ProductID });
    }

    [HttpGet]
    public JsonResult UpdateCollections(int? id) {
      ProductService service = new ProductService();
      List<ProductCollection> collections = service.ProductBrandCollections(id.Value);

      // convert to a selectlist item since that's what were binding the results too.
      JsonResult result = Json(collections.Select(c => new SelectListItem { Text = c.CollectionName, Value = c.ProductCollectionID.ToString() }), JsonRequestBehavior.AllowGet);

      return result;
    }

    public ActionResult Sold(int id) {
      service.ToggleProductSold(id, true);
      return RedirectToAction("index");
    }

    public ActionResult NotSold(int id) {
      service.ToggleProductSold(id, false);
      return RedirectToAction("index");
    }
  }
}
