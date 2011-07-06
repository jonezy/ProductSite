<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductSite.Areas.Admin.Models.ProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Product Details</h2>
    <%= Html.ActionLink("Back to List", "Index", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <% using (Html.BeginForm(null, null, FormMethod.Post)) {%>
        <fieldset>
            <div class="ten columns alpha">
                <div class="five columns alpha">
                <p><%= Html.LabelFor(model => model.BrandID) %><%= Html.DropDownListFor(model => model.BrandID, Model.ProductBrands, "Select")%></p>
                </div>
                <div class="five columns omega">
                <p><%= Html.LabelFor(model => model.CollectionID) %><%= Html.DropDownListFor(model => model.CollectionID, Model.ProductCollections, "Select brand first")%></p>
                </div>
                <br style="clear:both;" />

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

                <br style="cler:both;" /><br style="cler:both;" /><br style="cler:both;" /><br style="cler:both;" />
                <p><%= Html.LabelFor(model => model.IsActive) %><%= Html.CheckBoxFor(model => model.IsActive) %></p>
            </div>
            <div class="one columns">&nbsp;</div>
            <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.Gender) %><%= Html.DropDownListFor(model => model.Gender, Model.Genders, "Select")%></p>
                    <p><%= Html.LabelFor(model => model.ColourID) %><%= Html.DropDownListFor(model => model.ColourID, Model.ProductColours, "Select")%></p>
                    <p><%= Html.LabelFor(model => model.CaseStyleID) %><%= Html.DropDownListFor(model => model.CaseStyleID, Model.ProductCases, "Select")%></p>
                    <p><%= Html.LabelFor(model => model.BraceletID) %><%= Html.DropDownListFor(model => model.BraceletID, Model.BraceletStyles, "Select")%></p>

            </div>
        </fieldset>            
        <input type="submit" value="Save Product" class="button" />
    <% } %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
</asp:Content>

