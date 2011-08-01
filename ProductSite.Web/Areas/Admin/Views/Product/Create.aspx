<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AdminProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Product Details</h2>
    <%= Html.ActionLink("Back to List", "Index", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <% using (Html.BeginForm(null, null, FormMethod.Post, new { @enctype = "multipart/form-data" })) {%>
        <fieldset>
            <div class="ten columns alpha">
                <%= Html.HiddenFor(model => model.ProductID)%>
                <p><%= Html.LabelFor(model => model.ProductName)%><%= Html.TextBoxFor(model => model.ProductName)%></p>
                <p><%= Html.LabelFor(model => model.ModelName)%><%= Html.TextAreaFor(model => model.ModelName)%></p>
                <p><%= Html.LabelFor(model => model.Movement)%><%= Html.TextBoxFor(model => model.Movement)%></p>
                <p><%= Html.LabelFor(model => model.ModelNumber)%><%= Html.TextBoxFor(model => model.ModelNumber)%></p>
                <p><%= Html.LabelFor(model => model.SerialNumber)%><%= Html.TextBoxFor(model => model.SerialNumber)%></p>
                <p><%= Html.LabelFor(model => model.Bezel)%><%= Html.TextBoxFor(model => model.Bezel)%></p>
                <p><%= Html.LabelFor(model => model.Crystal)%><%= Html.TextBoxFor(model => model.Crystal)%></p>
                <p><%= Html.LabelFor(model => model.WaterResistant)%><%= Html.TextBoxFor(model => model.WaterResistant)%></p>
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.CaseMaterial)%><%= Html.TextAreaFor(model => model.CaseMaterial, new { @class = "two-line" })%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.DialColour)%><%= Html.TextAreaFor(model => model.DialColour, new { @class = "two-line" })%></p>
                </div>
                <br style="clear:both;" />
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.Functions)%><%= Html.TextAreaFor(model => model.Functions, new { @class = "two-line" })%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.Strap)%><%= Html.TextAreaFor(model => model.Strap, new { @class = "two-line" })%></p>
                </div>
                <br style="clear:both;" />
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.BoxPapers)%><%= Html.TextAreaFor(model => model.BoxPapers, new { @class = "two-line" })%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.Warranty)%><%= Html.TextAreaFor(model => model.Warranty, new { @class = "two-line" })%></p>
                </div>
            </div>
            <div class="one columns">&nbsp;</div>
            <div class="five columns omega">
                <p><%= Html.LabelFor(model => model.Gender)%><%= Html.DropDownListFor(model => model.Gender, Model.Genders, "Select")%></p>
                <p><%= Html.LabelFor(model => model.BrandID)%><%= Html.DropDownListFor(model => model.BrandID, Model.ProductBrands, "Select")%></p>
                <p><%= Html.LabelFor(model => model.Condition)%><%= Html.DropDownListFor(model => model.Condition, Model.Conditions, "Select")%></p>
                <div class="three columns alpha">
                    <p><%= Html.LabelFor(model => model.RetailPrice)%><%= Html.TextBoxFor(model => model.RetailPrice)%></p>
                </div>
                <br style="clear:both;" />
                <p><%= Html.LabelFor(model => model.IsActive)%><%= Html.CheckBoxFor(model => model.IsActive)%></p>

                <h3>Images</h3>
                <div class="five columns">

                <%  
               if (Model.ProductImages != null) {
                   int i = 0;
                   int count = 0;
                   int max = 2;
                   string seperator = "<br style='clear:both;' />";

                   foreach (var item in Model.ProductImages) { 
                %>
                <div class="left" style="margin-right:5px;">
                    <img src="<%= Url.Content(item.Path) %>" width="125" height="100" class="left" />
                    <p><input type="file" id="file2" name="files"></input></p>
                    <%= Html.Hidden(item.ProductImageID.ToString())%>
                </div>

                <%
                        if (count == max) {
                            count = 0;
                            Response.Write(seperator);
                        }
                        count++;
                    }
                } 
                %>

                <p><input type="file" id="file1" name="files" /></p>

                </div>
            </div>
        </fieldset>            
        <input type="submit" value="Save Product" class="button" />
    <% } %>
</asp:Content>

