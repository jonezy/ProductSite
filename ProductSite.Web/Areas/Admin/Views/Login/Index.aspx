<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<LoginViewModel>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <h1 class="login">Login.</h1>

        <% Html.RenderPartial("Messages"); %>
        <div class="eight columns alpha">
            <% using (Html.BeginForm()) { %>
                <fieldset style="width:90%;">
                    <p><%= Html.LabelFor(model => model.Username)%><%= Html.TextBoxFor(model => model.Username, new { @class = "first" })%></p>
                    <p><%= Html.LabelFor(model => model.Password)%><%= Html.PasswordFor(model => model.Password)%></p>
                    <p style="padding-top:10px;" class="checkboxes wider left"><%= Html.LabelFor(model => model.RememberMe)%><%= Html.CheckBoxFor(model => model.RememberMe)%></p>
                    <input type="submit" class="button right" value="Login" />
                </fieldset>
                 
            <% } %>
        </div>

        <div class="eight columns omega">
            <br />
            <%--<p>This is the super simple stripped down no frills, fluff or guff version of the CMS.  It's simple and to the point.</p>
            <p>If you don't have a username and password e-mail us here: support@richmondday.com</p>--%>
        </div>

<script>
    $(document).ready(function () {
        $('input.first').focus();
    });
</script>
</asp:Content>
