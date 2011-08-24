<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<List<ProductNavigationViewModel>>" %>
<div id="left-navigation" class="four columns alpha omega">
    <ul>
        <li><%= Html.RouteLink("New Arrivals", "ProductsByBrand", new { brandSlug = UrlHelpers.CreateUrlSlug("New Arrivals")}) %></li>
        <li><%= Html.RouteLink("Hot Deals", "ProductsByBrand", new { brandSlug = UrlHelpers.CreateUrlSlug("Hot Deals") })%></li>
        <% foreach (var item in Model) { %>
            <li><%= Html.RouteLink(item.Text, "ProductsByBrand", new { brandSlug = item.CategorySlug })%></li>
        <% } %>
    </ul>
</div>
