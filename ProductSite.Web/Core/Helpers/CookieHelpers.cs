using System;
using System.Web;

public static class CookieHelpers {
    public static void WriteAuthenticationCookie(int userId, bool rememberMe) {
        HttpCookie myCookie = new HttpCookie(CookieIdentifiers.Login_Cookie);
        HttpContext.Current.Response.Cookies.Remove(CookieIdentifiers.Login_Cookie);
        HttpContext.Current.Response.Cookies.Add(myCookie);
        myCookie.Values.Add(CookieIdentifiers.Login_Cookie_Key, userId.ToString());
        if (rememberMe) {
            HttpContext.Current.Response.Cookies[CookieIdentifiers.Login_Cookie].Expires = DateTime.Now.AddDays(15);
        }
    }
    
    public static void DestroyAuthenticationCookie() {
        HttpCookie myCookie = new HttpCookie(CookieIdentifiers.Login_Cookie);
        HttpContext.Current.Response.Cookies.Remove(CookieIdentifiers.Login_Cookie);
        HttpContext.Current.Response.Cookies.Add(myCookie);
        HttpContext.Current.Response.Cookies[CookieIdentifiers.Login_Cookie].Expires = DateTime.Now.AddDays(-15);
    }

    public static void WriteRegionCookie(int regionId) {
        HttpCookie myCookie = new HttpCookie(CookieIdentifiers.Region_Cookie);
        HttpContext.Current.Response.Cookies.Remove(CookieIdentifiers.Region_Cookie);
        HttpContext.Current.Response.Cookies.Add(myCookie);
        myCookie.Values.Add(CookieIdentifiers.Region_Cookie_Key, regionId.ToString());
        HttpContext.Current.Response.Cookies[CookieIdentifiers.Region_Cookie].Expires = DateTime.Now.AddDays(15);
    }

    public static void DestroyCookie(string cookieIdentifier) {
        HttpCookie myCookie = new HttpCookie(cookieIdentifier);
        HttpContext.Current.Response.Cookies.Remove(cookieIdentifier);
        HttpContext.Current.Response.Cookies.Add(myCookie);
        HttpContext.Current.Response.Cookies[cookieIdentifier].Expires = DateTime.Now.AddDays(-15);
    }

    public static int GetCookieValue(string cookieIdentifier, string cookieKeyIdentifier) {
        HttpCookie cookie = HttpContext.Current.Request.Cookies.Get(cookieIdentifier);

        if (cookie == null)
            return 0;

        int cookieValue = 0;
        int.TryParse(cookie.Values[cookieKeyIdentifier].ToString(), out cookieValue);

        return cookieValue;
    }

    public static int GetUserId() {
        Int32 userId = 0;
        if (HttpContext.Current.Request.Cookies.Get(CookieIdentifiers.Login_Cookie) != null) {
            HttpCookie cookie = HttpContext.Current.Request.Cookies.Get(CookieIdentifiers.Login_Cookie);
            Int32.TryParse(cookie.Values[CookieIdentifiers.Login_Cookie_Key].ToString(), out userId);
        }

        return userId;
    }
}

public static class CookieIdentifiers {
    public const string Login_Cookie = "EighteenForeLess.LoginCookie";
    public const string Login_Cookie_Key = "EighteenForeLess.LoginCookieUserID";

    public static string Region_Cookie = "EighteenForeLess.RegionCookie";
    public static string Region_Cookie_Key = "EighteenForeLess.RegionCookieKey";
}