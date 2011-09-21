<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Homepage.Master" Inherits="System.Web.Mvc.ViewPage<HomePageViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<br />
<div class="row">
<div class="four columns alpha home-boxes">
<%
    string imagePath = "~/Public/image/product-holder.jpg";
    if (Model.NewArrival.ProductImages.Count > 0) {
        imagePath = Model.NewArrival.ProductImages[0].Path;
    }
%>
<img src="<%= Url.Content(imagePath) %>" width="220" height="140" />
<h4>NEW ARRIVALS</h4>

<%= Html.RouteLink("View Watches", "ProductsByBrand", new { brandSlug = UrlHelpers.CreateUrlSlug("New Arrivals") }, new { @class="more_details_home" })%>
</div>

<div class="four columns home-boxes">
<%
    imagePath = "~/Public/image/product-holder.jpg";
    if (Model.HotDeal.ProductImages.Count > 0) {
        imagePath = Model.HotDeal.ProductImages[0].Path;
    }
%>
<img src="<%= Url.Content(imagePath) %>" width="220" height="140" />

<h4>HOT DEALS</h4>

<%= Html.RouteLink("View Watches", "ProductsByBrand", new { brandSlug = UrlHelpers.CreateUrlSlug("Hot Deals") }, new { @class = "more_details_home" })%>
</div>


<div class="four columns omega home-boxes">
<%
    imagePath = "~/Public/image/product-holder.jpg";
    if (Model.FeaturedWatch.ProductImages.Count > 0) {
        imagePath = Model.FeaturedWatch.ProductImages[0].Path;
    }
%>
<img src="<%= Url.Content(imagePath) %>" width="220" height="140" />
<h4>FEATURED WATCHES</h4>

<%= Html.ActionLink("View Watches", "details", "products", new { @brandSlug = Model.FeaturedWatch.BrandSlug, @productName = Model.FeaturedWatch.ProductSlug}, new { @class="more_details_home"}) %>

</div>
</div>
</asp:Content>
