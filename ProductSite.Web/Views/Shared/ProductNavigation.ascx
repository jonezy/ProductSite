<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="left-navigation" class="four columns alpha omega">
    <ul>
        <li><%= Html.RouteLink("New Arrivals", "ProductsByCategory", new { categorySlug=UrlHelpers.CreateUrlSlug("New Arrivals")}) %></li>
        <li><%= Html.RouteLink("Hot Deals", "ProductsByCategory", new { categorySlug = UrlHelpers.CreateUrlSlug("Hot Deals") })%></li>
    </ul>
</div>
