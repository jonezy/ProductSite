<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Products.Master" Inherits="System.Web.Mvc.ViewPage<List<ProductViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%= ViewData["BrandName"] %></h3>
    <div id="product-body">
        <% 
            if (Model != null) {
                int i = 0;
                foreach (var item in Model) { %>
           <div class="brandlist-item">
                <%= item.ProductName %>
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
