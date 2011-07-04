<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductSite.Areas.Admin.Models.ProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Product Details</h2>
    <%= Html.ActionLink("Back to List", "Index", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <p><%= Html.LabelFor(model => model.Brand) %><%= Html.TextBoxFor(model => model.Brand) %></p>
            <p><%= Html.LabelFor(model => model.Name) %><%= Html.TextBoxFor(model => model.Name) %></p>
            
            <p><%= Html.LabelFor(model => model.CreatedOn) %><%= Html.TextBoxFor(model => model.CreatedOn) %></p>
            
            <p><%= Html.LabelFor(model => model.IsActive) %><%= Html.CheckBoxFor(model => model.IsActive) %></p>
            <p><input type="submit" value="Create" class="button" /></p>
        </fieldset>

    <% } %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
</asp:Content>

