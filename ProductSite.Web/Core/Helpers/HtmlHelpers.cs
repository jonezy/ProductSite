using System.IO;


namespace System.Web.Mvc {
    public static class HtmlHelpers {

        static string BaseUrl { get { return HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + VirtualPathUtility.ToAbsolute("~/"); } }

        static string publicDirectory = VirtualPathUtility.ToAbsolute("~/") + "public";
        static string scriptDirectory = "js";
        static string cssDirectory = "css";
        static string imageDirectory = "images";

        public static string Script(this HtmlHelper helper, string fileName) {

            if (!fileName.EndsWith(".js"))
                fileName += ".js";
            var jsPath = string.Format("<script src='{0}/{1}/{2}' ></script>\n", publicDirectory, scriptDirectory, helper.AttributeEncode(fileName));
            return jsPath;
        }
        
        public static string Script(this HtmlHelper helper, string fileName, bool async) {

            if (!fileName.EndsWith(".js"))
                fileName += ".js";
            var jsPath = string.Format("<script src='{0}/{1}/{2}' {3}></script>\n", publicDirectory, scriptDirectory, helper.AttributeEncode(fileName), async ? "async" : "");
            return jsPath;
        }

        public static string Css(this HtmlHelper helper, string fileName) {
            return Css(helper, fileName, "screen");
        }

        public static string Css(this HtmlHelper helper, string fileName, string media) {
            if (!fileName.EndsWith(".css"))
                fileName += ".css";
            var jsPath = string.Format("<link rel='stylesheet' type='text/css' href='{0}/{1}/{2}'  media='" + media + "'/>\n", publicDirectory, cssDirectory, helper.AttributeEncode(fileName));
            return jsPath;
        }

        public static string Image(this HtmlHelper helper, string fileName) {
            return Image(helper, fileName, "");
        }

        public static string Image(this HtmlHelper helper, string fileName, string attributes) {
            fileName = string.Format("{0}/{1}/{2}", publicDirectory, imageDirectory, fileName);
            return string.Format("<img src='{0}' {1} />", helper.AttributeEncode(fileName), helper.AttributeEncode(attributes));
        }

        public static string ImageLink(this HtmlHelper helper, string fileName, string imageAttributes) {
            return ImageLink(helper, fileName, imageAttributes, false);
        }

        public static string ImageLink(this HtmlHelper helper, string fileName, string imageAttributes, bool openInNewWindow) {
            fileName = string.Format("{0}/{1}/{2}", publicDirectory, imageDirectory, fileName);

            return string.Format("<a href='{0}' target='{2}'><img src='{0}' {1} /></a>", helper.AttributeEncode(fileName), helper.AttributeEncode(imageAttributes), openInNewWindow ? "_blank" : "_self");
        }

    }
}