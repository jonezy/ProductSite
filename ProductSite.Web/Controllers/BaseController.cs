using System;
using System.Web.Mvc;
using System.Web.Routing;

using ProductSite.Data;

namespace ProductSite.Web.Controllers {
    public class BaseController : Controller {
        public int CurrentUserID {
            get {
                return CookieHelpers.GetUserId();
            }
        }

        public User CurrentUser { 
            get {
                return null;
                //return userService.GetUserById(this.CurrentUserID);
            } 
        }

        public int AdminUserRoleID {
            get {
                return (int)Enum.Parse(typeof(UserRole), UserRole.Administrator.ToString());
            }
        }

        public BaseController() {}

        protected override void Initialize(RequestContext requestContext) {
            base.Initialize(requestContext);
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext) {
            base.OnActionExecuting(filterContext);
        }

        protected void LogError(Exception e, string friendlyMessage) {
            Elmah.ErrorSignal.FromCurrentContext().Raise(e);
            
            if(!string.IsNullOrEmpty(friendlyMessage))
                this.StoreError(friendlyMessage);
        }
    }
}
