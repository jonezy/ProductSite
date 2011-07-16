<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductSite.Areas.Admin.Models.ProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Product Details</h2>
    <%= Html.ActionLink("Back to List", "Index", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <% using (Html.BeginForm(null, null, FormMethod.Post)) {%>
        <fieldset>
            <div class="ten columns alpha">
                <%= Html.HiddenFor(model=>model.ProductID) %>
                <p><%= Html.LabelFor(model => model.ProductName) %><%= Html.TextBoxFor(model => model.ProductName)%></p>
                <p><%= Html.LabelFor(model => model.ModelName) %><%= Html.TextAreaFor(model => model.ModelName, new { @class="two-line" })%></p>
                <p><%= Html.LabelFor(model => model.MovementType) %><%= Html.TextBoxFor(model => model.MovementType)%></p>
                <p><%= Html.LabelFor(model => model.Features) %><%= Html.EditorFor(model => model.Features, new { @class = "" })%></p>
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.MovementDetails) %><%= Html.TextAreaFor(model => model.MovementDetails, new { @class="two-line" })%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.DialDescription)%><%= Html.TextAreaFor(model => model.DialDescription, new { @class="two-line" })%></p>
                </div>
                <br style="clear:both;" />
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.Bezel) %><%= Html.TextAreaFor(model => model.Bezel, new { @class = "two-line" })%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.CaseDetails)%><%= Html.TextAreaFor(model => model.CaseDetails, new { @class="two-line" })%></p>
                </div>
                <br style="clear:both;" />
            </div>
            <div class="one columns">&nbsp;</div>
            <div class="five columns omega">
                <p><%= Html.LabelFor(model => model.Gender) %><%= Html.DropDownListFor(model => model.Gender, Model.Genders, "Select")%></p>
                <p><%= Html.LabelFor(model => model.BrandID) %><%= Html.DropDownListFor(model => model.BrandID, Model.ProductBrands, "Select")%></p>
                <p><%= Html.LabelFor(model => model.CollectionID) %><%= Html.DropDownListFor(model => model.CollectionID, Model.ProductCollections, "Select brand first")%></p>
                <div class="three columns alpha">
                    <p><%= Html.LabelFor(model => model.RetailPrice) %><%= Html.TextBoxFor(model => model.RetailPrice) %></p>
                </div>
                <br style="clear:both;" />
                <p><%= Html.LabelFor(model => model.IsActive) %><%= Html.CheckBoxFor(model => model.IsActive) %></p>
            </div>
        </fieldset>            
        <input type="submit" value="Save Product" class="button" />
    <% } %>
</asp:Content>

