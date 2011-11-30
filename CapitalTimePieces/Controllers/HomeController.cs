using System.Collections.Generic;
using System.Web.Mvc;

using CapitalTimePieces.Models;

using ProductSite.Data;
using ProductSite.Web.Services;
using ProductSite.Web.Email;
using CapitalTimePieces.Views.Email;
using System.Configuration;

namespace ProductSite.Controllers {
    public class HomeController : Controller {
        ProductService service;

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new ProductService();

            base.Initialize(requestContext);
        }

        public ActionResult Index() {
            // grab 3 random products
            List<Product> products = service.RandomProducts(3);

            HomePageViewModel model = new HomePageViewModel() {
                FeaturedWatch = new ProductViewModel(products[0]),
                HotDeal = new ProductViewModel(products[1]),
                NewArrival = new ProductViewModel(products[2])
            };

            return View(model);
        }

        public ActionResult Sell() {
            ContactUsViewModel model = new ContactUsViewModel();
            return View(model);
        }

        public ActionResult Trading() {
            return View();
        }

        public ActionResult About() {
            return View();
        }

        public ActionResult Contact() {
            ContactUsViewModel model = new ContactUsViewModel();
            return View(model);
        }   

        [HttpPost]
        public ActionResult Contact(ContactUsViewModel model) {
            if (ModelState.IsValid) {
                TemplateParser parser = new TemplateParser();
                Dictionary<string, string> replacements = new Dictionary<string, string>();
                replacements.Add("[NAME]", model.Name);
                replacements.Add("[EMAIL]", model.EmailAddress);
                replacements.Add("[PHONE]", model.PhoneNumber);
                replacements.Add("[BRAND]", model.Brand);
                replacements.Add("[MODEL]", model.WatchModel);
                replacements.Add("[DIALDESCRIPTION]", model.DialDescription);
                replacements.Add("[ESTIMATEDVALUE]", model.EstimatedValue);
                replacements.Add("[COMMENTS]", model.Comments);

                string message = parser.Replace(Templates.SellWatchTemplate, replacements);

                try {
                    EmailSender sender = new EmailSender();
                    sender.Send(App.MailConfiguration, ConfigurationManager.AppSettings["SiteSettings.Mail.DefaultToAddress"].ToString(), "", "Sell your watch submission from the website", message);

                    this.StoreSuccess("Thank you for submitting your watch to us, we will be in touch soon");
                    return Redirect(Request.UrlReferrer.ToString());
                } catch {
                    this.StoreError("There was a problem submitting the form, please reload the page and try again");
                    return View(model);
                }
                
            }

            return View(model);
        }
        
        public ActionResult Repairs() {
            return View();
        }
    }
}
