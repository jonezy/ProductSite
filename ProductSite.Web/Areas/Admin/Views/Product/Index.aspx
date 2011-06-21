<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ProductSite.Areas.Admin.Models.ProductViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>ViewPage1</h2>

    <table style="500px;">
        <tr>

            <th>
                Brand
            </th>
            <th>
                Name
            </th>
                        <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>

            <td>
                <%= Html.Encode(item.Brand) %>
            </td>
            <td>
                <%= Html.Encode(item.Name) %>
            </td>

            <td>
                <%= Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ }) %> |
                <%= Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ })%> |
                <%= Html.ActionLink("Delete", "Delete", new { /* id=item.PrimaryKey */ })%>
            </td>

        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
</asp:Content>

