<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Products.Master" Inherits="System.Web.Mvc.ViewPage<List<ProductViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h3><%= ViewData["BrandName"] %></h3>
    <div id="product-body">
    <div class="brand-row clearfix">
        <% 
            if (Model != null) {
                int i = 1;
                foreach (var item in Model) { %>
                
           <div class="three columns brandlist-item">
               <%
                   string imagePath = "~/Public/image/product-holder.jpg";
                   if (item.ProductImages.Count > 0) {
                       imagePath = item.ProductImages[0].Path;
                   }
                %>
                <a href="<%= Url.Action("details", "products", new { @brandSlug = item.BrandSlug, @productName = item.ProductSlug}) %>"><img src="<%= Url.Content(imagePath) %>" width="160" height="120" class="left" /></a><br style="clear:both;" />
                <div class="model_name"><%= item.ModelName %></div>
                <div class="model_data"><%= item.Condition %> - <%= item.CaseSize %> - <%= item.DialColour %></div>
                <a href="<%= Url.Action("details", "products", new { @brandSlug = item.BrandSlug, @productName = item.ProductSlug}) %>" class="more_details">More Details + Photos</a>
           </div>
            <% if (i == 4) { // this is the number of columns %>
                </div>
                <div class="brand-row clearfix">
            <%  i = 0;
               } else {
                   i++;
               }
                }
            } 
           %>
    </div>
    </div>

</asp:Content>
