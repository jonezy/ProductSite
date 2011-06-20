using System.Web.Mvc;
using System;

namespace ProductSite.Web {
    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class, AllowMultiple=true)]
    public class LogErrors : FilterAttribute, IExceptionFilter {
        public string FriendlyErrorMessage { get; set; }
        public void OnException(ExceptionContext filterContext) {
            Elmah.ErrorSignal.FromCurrentContext().Raise(filterContext.Exception);
            if (!string.IsNullOrEmpty(FriendlyErrorMessage)) {
                Controller controller = (Controller)filterContext.Controller;
                controller.StoreError(FriendlyErrorMessage);
            }
        }
    }
}
