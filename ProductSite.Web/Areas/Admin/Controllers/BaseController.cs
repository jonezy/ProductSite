using System;
using System.Web.Mvc;
using System.Web.Routing;
using ProductSite.Web.Services;
using ProductSite.Data;
using System.Data;

namespace ProductSite.Areas.Admin.Controllers {
    public class BaseController : Controller {
        UserService userService;

        public int CurrentUserID {
            get {
                return CookieHelpers.GetUserId();
            }
        }
       
        public User CurrentUser { 
            get {

                return userService.GetUserById(this.CurrentUserID);
            } 
        }
        
        public int AdminUserRoleID {
            get {
                return (int)Enum.Parse(typeof(UserRoleType), UserRoleType.Administrator.ToString());
            }
        }

        public BaseController() {}

        protected override void Initialize(RequestContext requestContext) {
            if (userService == null) userService = new UserService();

            base.Initialize(requestContext);
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext) {
            base.OnActionExecuting(filterContext);
        }

        //protected void LogError(Exception e, string friendlyMessage) {
        //    Elmah.ErrorSignal.FromCurrentContext().Raise(e);
            
        //    if(!string.IsNullOrEmpty(friendlyMessage))
        //        this.StoreError(friendlyMessage);
        //}

    }
}
