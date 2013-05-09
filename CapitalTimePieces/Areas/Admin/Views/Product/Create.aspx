<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AdminProductViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="left">Product Details</h2>
    <%= Html.ActionLink("Create New", "create", null, new { @class = "action_item header" })%><%= Html.ActionLink("Back to List", "Index", null, new { @class = "action_item header" })%>
    <br style="clear:both;" />
    <% using (Html.BeginForm(null, null, FormMethod.Post, new { @enctype = "multipart/form-data" })) {%>
        <fieldset>
            <div class="ten columns alpha">
                <%= Html.HiddenFor(model => model.Sold)%>
                <%= Html.HiddenFor(model => model.ProductID)%>
                <p><%= Html.LabelFor(model => model.ProductName)%><%= Html.TextBoxFor(model => model.ProductName)%></p>
                <p><%= Html.LabelFor(model => model.ModelName)%><%= Html.TextBoxFor(model => model.ModelName)%></p>
                <p><%= Html.LabelFor(model => model.ModelNumber)%><%= Html.TextBoxFor(model => model.ModelNumber)%></p>
                <p><%= Html.LabelFor(model => model.SerialNumber)%><%= Html.TextBoxFor(model => model.SerialNumber)%></p>
                
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.CaseSize)%><%= Html.TextBoxFor(model => model.CaseSize)%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.CaseMaterial)%><%= Html.TextBoxFor(model => model.CaseMaterial)%></p>
                </div>
                <br style="clear:both;" />
                
                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.Bezel)%><%= Html.TextBoxFor(model => model.Bezel)%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.Crystal)%><%= Html.TextBoxFor(model => model.Crystal)%></p>
                </div>
                <br style="clear:both;" />

                <div class="five columns alpha">
                    <p><%= Html.LabelFor(model => model.DialColour)%><%= Html.TextBoxFor(model => model.DialColour)%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.Movement)%><%= Html.TextBoxFor(model => model.Movement)%></p>
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
                    <p><%= Html.LabelFor(model => model.WaterResistant)%><%= Html.TextBoxFor(model => model.WaterResistant)%></p>
                </div>
                <div class="five columns omega">
                    <p><%= Html.LabelFor(model => model.RetailPrice)%><%= Html.TextBoxFor(model => model.RetailPrice)%></p>
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
                <p class="radio"><%= Html.LabelFor(model => model.IsActive)%><%= Html.CheckBoxFor(model => model.IsActive)%></p>
                <p class="radio"><%= Html.LabelFor(model => model.NewArrival)%><%= Html.CheckBoxFor(model => model.NewArrival)%></p>
                <p class="radio"><%= Html.LabelFor(model => model.HotDeal)%><%= Html.CheckBoxFor(model => model.HotDeal)%></p>
                <hr style="clear:both;" />
                <h4>Images</h4>
                <div class="five columns">

                    <div class="left" style="margin-right:5px;">
                        <h6>Image #1</h6>
                        <% if (Model.ProductImages != null && Model.ProductImages.Count > 0 && Model.ProductImages[0] != null) { %>
                            <%= Html.Hidden(Model.ProductImages[0].Path.ToString(), Model.ProductImages[0].ProductImageID.ToString())%>
                            <img src="<%= Url.Content(Model.ProductImages[0].Path) %>" width="125" height="100" class="left" /><br style="clear:both;" />
                            <%= Html.ActionLink("Delete", "DeleteImage", new { id = Model.ProductImages[0].ProductImageID}) %>
                        <% } %>
                        <p><input type="file" id="file2" name="files"></input></p>
                    </div>
                    <hr />
                    <div class="left" style="margin-right:5px;">
                        <h6>Image #2</h6>
                        <% if (Model.ProductImages != null && Model.ProductImages.Count > 1 && Model.ProductImages[1] != null) { %>
                            <%= Html.Hidden(Model.ProductImages[1].Path.ToString(), Model.ProductImages[1].ProductImageID.ToString())%>
                            <img src="<%= Url.Content(Model.ProductImages[1].Path) %>" width="125" height="100" class="left" /><br style="clear:both;" />
                            <%= Html.ActionLink("Delete", "DeleteImage", new { id = Model.ProductImages[1].ProductImageID}) %>
                        <% } %>
                        <p><input type="file" id="file1" name="files"></input></p>
                    </div>
                    <hr />
                    <div class="left" style="margin-right:5px;">
                        <h6>Image #3</h6>
                        <% if (Model.ProductImages != null && Model.ProductImages.Count > 2 && Model.ProductImages[2] != null) { %>
                            <%= Html.Hidden(Model.ProductImages[2].Path.ToString(), Model.ProductImages[2].ProductImageID.ToString())%>
                            <img src="<%= Url.Content(Model.ProductImages[2].Path) %>" width="125" height="100" class="left" /><br style="clear:both;" />
                            <%= Html.ActionLink("Delete", "DeleteImage", new { id = Model.ProductImages[2].ProductImageID}) %>
                        <% } %>
                        <p><input type="file" id="file3" name="files"></input></p>
                    </div>
                    <hr />
                    <div class="left" style="margin-right:5px;">
                        <h6>Image #4</h6>
                        <% if (Model.ProductImages != null && Model.ProductImages.Count > 3 && Model.ProductImages[3] != null) { %>
                            <%= Html.Hidden(Model.ProductImages[3].Path.ToString(), Model.ProductImages[3].ProductImageID.ToString())%>
                            <img src="<%= Url.Content(Model.ProductImages[2].Path) %>" width="125" height="100" class="left" /><br style="clear:both;" />
                            <%= Html.ActionLink("Delete", "DeleteImage", new { id = Model.ProductImages[3].ProductImageID}) %>

                        <% } %>
                        <p><input type="file" id="file4" name="files"></input></p>
                    </div>
                    <hr />
                    <div class="left" style="margin-right:5px;">
                        <h6>Image #5</h6>
                        <% if (Model.ProductImages != null && Model.ProductImages.Count > 4 && Model.ProductImages[4] != null) { %>
                            <%= Html.Hidden(Model.ProductImages[4].Path.ToString(), Model.ProductImages[4].ProductImageID.ToString())%>
                            <img src="<%= Url.Content(Model.ProductImages[4].Path) %>" width="125" height="100" class="left" /><br style="clear:both;" />
                            <%= Html.ActionLink("Delete", "DeleteImage", new { id = Model.ProductImages[4].ProductImageID}) %>
                        <% } %>
                        <p><input type="file" id="file5" name="files"></input></p>
                    </div>
                    <hr />
                    <div class="left" style="margin-right:5px;">
                        <h6>Image #6</h6>
                        <% if (Model.ProductImages != null && Model.ProductImages.Count > 5 && Model.ProductImages[5] != null) { %>
                            <%= Html.Hidden(Model.ProductImages[5].Path.ToString(), Model.ProductImages[5].ProductImageID.ToString())%>
                            <img src="<%= Url.Content(Model.ProductImages[5].Path) %>" width="125" height="100" class="left" /><br style="clear:both;" />
                            <%= Html.ActionLink("Delete", "DeleteImage", new { id = Model.ProductImages[5].ProductImageID}) %>
                        <% } %>
                        <p><input type="file" id="file6" name="files"></input></p>
                    </div>
                </div>

            </div>
        </fieldset>            
        <input type="submit" value="Save Product" class="button" />
    <% } %>
</asp:Content>

