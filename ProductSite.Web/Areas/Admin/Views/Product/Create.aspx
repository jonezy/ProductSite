<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ProductSite.Areas.Admin.Models.ProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create.aspx</h2>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <p>
                <%= Html.LabelFor(model => model.Brand) %>
            
                <%= Html.TextBoxFor(model => model.Brand) %>
            </p>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Name) %>
                <%= Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.IsActive) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.IsActive) %>
                <%= Html.ValidationMessageFor(model => model.IsActive) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.CreatedOn) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.CreatedOn) %>
                <%= Html.ValidationMessageFor(model => model.CreatedOn) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
</asp:Content>

