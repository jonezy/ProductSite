<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Products.Master" Inherits="System.Web.Mvc.ViewPage<List<ProductViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%= ViewData["BrandName"] %></h3>
    <div id="product-body">
        <% 
            if (Model != null) {
                int i = 0;
                foreach (var item in Model) { %>
           <div class="brandlist-item">
           <a href="<%= Url.Action("details", "products", new { @brandSlug = item.BrandSlug, @productName = item.ProductSlug}) %>">
                <%= item.ProductName %>
               <%
                   string imagePath = "~/Public/image/product-holder.jpg";
                   if (item.ProductImages.Count > 0) {
                       imagePath = item.ProductImages[0].Path;
                   }
                    %>
                <img src="<%= Url.Content(imagePath) %>" width="125" height="100" class="left" />
            </a>
           </div>
            <% if (i == 4) { // this is the number of columns %>
                <br style="clear:both;" />
            <%  i = 0;
               } else {
                   i = 0;
               }
                }
            } 
           %>
    </div>
</asp:Content>
