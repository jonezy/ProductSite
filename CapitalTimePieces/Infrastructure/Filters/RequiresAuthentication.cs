﻿using System;
using System.Web.Mvc;
using System.Web.Routing;

using ProductSite.Areas.Admin.Controllers;
using ProductSite.Data;

namespace ProductSite {
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class, AllowMultiple = true)]
    public class RequiresAuthentication : ActionFilterAttribute {
        public UserRole ValidUserRole { get; set; }
        public bool IsAdmin { get; set; }
        public string AccessDeniedMessage { get; set; }

        private RouteValueDictionary HomepageRouteDictionary {
            get {
                RouteValueDictionary homepageRouteDictionary = new RouteValueDictionary();
                homepageRouteDictionary.Add("action", "Index");
                homepageRouteDictionary.Add("controller", "Home");

                return homepageRouteDictionary;
            }
        }

        public override void OnActionExecuting(ActionExecutingContext filterContext) {
            BaseController controller = (BaseController)filterContext.Controller;
            User user = controller.CurrentUser;

            if (user == null) {
                controller.StoreWarning("You must be logged in");
                filterContext.Result = new RedirectToRouteResult(HomepageRouteDictionary);
            }

            if (!string.IsNullOrEmpty(ValidUserRole.ToString())) {
                int currentRole = (int)Enum.Parse(typeof(UserRole), ValidUserRole.ToString());
                if (user == null || user.UserRoleID > currentRole) {
                    if (!string.IsNullOrEmpty(AccessDeniedMessage)) {
                        controller.StoreWarning(AccessDeniedMessage);
                    }

                    filterContext.Result = new RedirectToRouteResult(BuildLoginRouteDictionary(filterContext.HttpContext.Request.Url.AbsoluteUri));
                }
            }

            base.OnActionExecuting(filterContext);
        }

        private RouteValueDictionary BuildLoginRouteDictionary(string returnUrl) {
            RouteValueDictionary loginpageRouteDictionary = new RouteValueDictionary();
            loginpageRouteDictionary.Add("action", "index");
            loginpageRouteDictionary.Add("controller", "login");
            
            if(!string.IsNullOrEmpty(returnUrl))
                loginpageRouteDictionary.Add("returnUrl", returnUrl);

            return loginpageRouteDictionary;
        }
    }
}
