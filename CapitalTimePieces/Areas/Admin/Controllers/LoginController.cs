using System.Web.Mvc;
using ProductSite.Web.Services;
using CapitalTimePieces.Areas.Admin.Models;

namespace ProductSite.Areas.Admin.Controllers {
    public class LoginController : Controller {
        UserService service;

        protected override void OnActionExecuting(ActionExecutingContext filterContext) {
            //base.CheckSession = false;
            base.OnActionExecuting(filterContext);
        }

        protected override void Initialize(System.Web.Routing.RequestContext requestContext) {
            if (service == null) service = new UserService();

            base.Initialize(requestContext);
        }

        [HttpGet]
        public ActionResult Index() {
            // store this here so that we can redirect the user back later.
            if (Request.QueryString["returnUrl"] != null)
                TempData["returnUrl"] = Request.QueryString["returnUrl"];

            //if (base.CurrentUserID > 0)
            //    return RedirectToAction("index", "pages");

            return View();
        }

        [HttpPost]
        public ActionResult Index(LoginViewModel model) {
            if (ModelState.IsValid) {
                string encryptedPassword = EncryptionUtility.Encrypt(model.Password);
                Data.User user = service.ValidateUser(model.Username, model.Password);

                if (user == null) {
                    this.StoreWarning("The username/password was not found, please try again");
                    return View(model);
                }

                if (!user.IsActive) {
                    this.StoreWarning("Your account is not active, please email support@richmondday.com");
                    return View(model);
                }

                // set the user and site cookies.
                CookieHelpers.WriteAuthenticationCookie(user.UserID, model.RememberMe);

                if (TempData["returnUrl"] != null)
                    return Redirect(TempData["returnUrl"].ToString());

                return RedirectToAction("index", "product");
            }

            return View();
        }

        [HttpGet]
        public ActionResult Logout() {
            CookieHelpers.DestroyAuthenticationCookie();

            return RedirectToAction("index", "login");
        }

    }
}
