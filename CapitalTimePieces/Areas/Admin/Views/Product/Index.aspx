﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AdminProductListModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="left">Products</h2>
    <%= Html.ActionLink("Create New", "create", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <table width="100%" class="product-list">
        <% foreach (var item in Model.Products) { %>
            <tr>
                <td style="vertical-align:middle !important;"><%= item.ProductName %></td>
                <td style="vertical-align:middle !important;" class="actions_items">
                    <ul>
                      <% if (item.Sold == false) { %>
                        <li><%= Html.ActionLink("Sold!", "sold", new { id = item.ProductID })%></li>
                      <% } else { %>
                        <li><%= Html.ActionLink("Not Sold", "notsold", new { id = item.ProductID })%></li>
                      <% } %>
                        <li><%= Html.ActionLink("Edit", "edit", new { id = item.ProductID })%></li>
                        <li><%= Html.ActionLink("Delete", "delete", new { id = item.ProductID }, new { @class = "delete", @onclick="return confirm('Are you sure you want to delete that product');" })%></li>
                    </ul>
                </td>
            </tr>
        <% } %>
    </table>
    <%= MvcHtmlString.Create(Html.Pager(Model.PageSize, Model.CurrentPageIndex, Model.TotalRecords, new { controller = "product", action = "index"}))%>
</asp:Content>
