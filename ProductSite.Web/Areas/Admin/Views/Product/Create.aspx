<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductSite.Areas.Admin.Models.ProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Product Details</h2>
    <%= Html.ActionLink("Back to List", "Index", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>
        <div class="twelve columns alpha">
            <fieldset>
                <p><%= Html.LabelFor(model => model.ProductName) %><%= Html.TextBoxFor(model => model.ProductName)%></p>
                <p><%= Html.LabelFor(model => model.Description) %><%= Html.TextAreaFor(model => model.Description) %></p>
                <div class="three columns alpha">
                    <p><%= Html.LabelFor(model => model.RetailPrice) %><%= Html.TextBoxFor(model => model.RetailPrice) %></p>
                </div>
                <div class="three columns">
                    <p><%= Html.LabelFor(model => model.WholeSalePrice) %><%= Html.TextBoxFor(model => model.WholeSalePrice)%></p>
                </div>
                <div class="three columns omega">
                    <p><%= Html.LabelFor(model => model.SalePrice) %><%= Html.TextBoxFor(model => model.SalePrice)%></p>
                </div>
                <br style="clear:both;" />                        
                
            </fieldset>
        </div>
        <div class="four columns omega">
            <fieldset>
                <p><%= Html.LabelFor(model => model.BrandID) %><%= Html.DropDownListFor(model => model.BrandID, Model.ProductBrands, "Select")%></p>
                <p><%= Html.LabelFor(model => model.CollectionID) %><%= Html.DropDownListFor(model => model.CollectionID, Model.ProductCollections, "Select")%></p>
                <p><%= Html.LabelFor(model => model.CaseStyleID) %><%= Html.DropDownListFor(model => model.CaseStyleID, Model.ProductCases, "Select")%></p>
                <p><%= Html.LabelFor(model => model.ColourID) %><%= Html.DropDownListFor(model => model.ColourID, Model.ProductColours, "Select")%></p>
                <p><%= Html.LabelFor(model => model.BraceletID) %><%= Html.DropDownListFor(model => model.BraceletID, Model.BraceletStyles, "Select")%></p>
            </fieldset>            
        </div>
        <br style="clear:both;" />  
        <p><input type="submit" value="Create" class="button" /></p>
    <% } %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
</asp:Content>

