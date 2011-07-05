﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProductSite.Areas.Admin.Models.ProductViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Products</h2>
    <%= Html.ActionLink("Create New", "create", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <table>
        <tr>
            <th style="width:80%;">Name</th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td style="vertical-align:middle !important;"><%= item.ProductName %></td>
            <td class="actions_items">
                <ul>
                    <li><%= Html.ActionLink("Edit", "edit", new { /* id=item.PrimaryKey */ }) %></li>
                    <li><%= Html.ActionLink("Delete", "delete", new { /* id=item.PrimaryKey */ }, new { @class = "delete" })%></li>
                </ul>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>
