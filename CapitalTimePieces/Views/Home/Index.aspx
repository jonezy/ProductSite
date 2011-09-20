<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Homepage.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="four columns alpha home-boxes">
<h4>NEW ARRIVALS</h4>

<%= Html.RouteLink("View Watches", "ProductsByBrand", new { brandSlug = UrlHelpers.CreateUrlSlug("New Arrivals")}) %>
</div>

<div class="four columns home-boxes">
<h4>HOT DEALS</h4>

<%= Html.RouteLink("New Arrivals", "ProductsByBrand", new { brandSlug = UrlHelpers.CreateUrlSlug("Hot Deals")}) %>
</div>


<div class="four columns omega home-boxes">
<h4>FEATURED WATCHES</h4>

<%--<a href="<%= Url.Action("details", "products", new { @brandSlug = item.BrandSlug, @productName = item.ProductSlug}) %>" class="more_details">VIEW WATCHES</a>--%>
</div>

</asp:Content>
