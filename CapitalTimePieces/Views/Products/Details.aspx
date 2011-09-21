<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Products.Master" Inherits="System.Web.Mvc.ViewPage<ProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="title"><%= Model.BrandName %></h3>
    <h4 class="title"><%= Model.ProductName %></h4>
    <div class="twelve columns alpha" id="product-body">
        <div class="row">
            <a rel="prettyPhoto[product-details]" href="<%= Url.Content(Model.ProductImages[0].Path) %>" target="_blank"><img src="<%= Url.Content(Model.ProductImages[0].Path) %>" class="image-1" width="460" height="345" /></a>

            <a rel="prettyPhoto[product-details]" href="<%= Url.Content(Model.ProductImages[1].Path) %>" target="_blank"><img src="<%= Url.Content(Model.ProductImages[1].Path) %>" class="image-2" width="220" height="170" /></a>
            <a rel="prettyPhoto[product-details]" href="<%= Url.Content(Model.ProductImages[2].Path) %>" target="_blank"><img src="<%= Url.Content(Model.ProductImages[2].Path) %>" class="image-3" width="220" height="170" /></a>
        </div>

        <div class="six columns alpha">
            <h5>Manufacturer</h5>
            <p><%= Model.BrandName %></p>

            <h5>Model Name</h5>
            <p><%= Model.ModelName %></p>

            <h5>Model Number</h5>
            <p><%= Model.ModelNumber%></p>

            <h5>Serial Number</h5>
            <p><%= Model.SerialNumber%></p>

            <h5>Case Size</h5>
            <p><%= Model.CaseSize%></p>

            <h5>Case Material</h5>
            <p><%= Model.CaseMaterial%></p>

            <h5>Bezel</h5>
            <p><%= Model.Bezel%></p>

            <h5>Crystal</h5>
            <p><%= Model.Crystal%></p>

            <h5>Dial Colour</h5>
            <p><%= Model.DialColour%></p>
        </div>

        <div class="six columns omega">

            <h5>Movement</h5>
            <p><%= Model.Movement%></p>

            <h5>Functions</h5>
            <p><%= Model.Functions%></p>

            <h5>Bracelet/Strap</h5>
            <p><%= Model.Strap%></p>

            <h5>Water Resistant</h5>
            <p><%= Model.WaterResistant%></p>

            <h5>Suggested Retail Price</h5>
            <p>
            <% if (Model.RetailPrice == Decimal.Zero) { %>
                SOLD OUT
            <% } else { %>
                <%= Model.RetailPrice.ToString("C")%>
            <% } %>
            </p>

            <h5>Condition</h5>
            <p><%= Model.Condition %></p>

            <h5>Box/Papers</h5>
            <p><%= Model.BoxPapers%></p>

            <h5>Warranty</h5>
            <p><%= Model.Warranty%></p>        
        </div>
    </div>
</asp:Content>
