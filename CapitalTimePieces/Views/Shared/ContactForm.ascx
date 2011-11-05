<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ContactUsViewModel>" %>
  <h4>Your Information</h4>
<%= Html.ValidationSummary("Please correct the following issues:") %>

<% using (Html.BeginForm("Contact", "Home", FormMethod.Post, new { @enctype = "multipart/form-data" })) {%>
    <fieldset class="contact">
        <p><%= Html.LabelFor(m => m.FirstName)%><%= Html.TextBoxFor(m => m.FirstName)%></p>
        <p><%= Html.LabelFor(m => m.LastName)%><%= Html.TextBoxFor(m => m.LastName)%></p>
        <p><%= Html.LabelFor(m => m.EmailAddress)%><%= Html.TextBoxFor(m => m.EmailAddress)%></p>
        <p><%= Html.LabelFor(m => m.PhoneNumber)%><%= Html.TextBoxFor(m => m.PhoneNumber)%></p>
        <p><%= Html.LabelFor(m => m.Country)%><%= Html.DropDownListFor(m => m.Country, Model.Countries, "Select a country")%></p>
        <p><%= Html.LabelFor(m => m.Language)%><%= Html.DropDownListFor(m => m.Language, Model.Languages, "Select a language")%></p>
    </fieldset>

    <h4>Tell us about your watch</h4>
    <fieldset class="contact">
        <p><%= Html.LabelFor(m => m.Brand)%><%= Html.DropDownListFor(m => m.Brand, Model.ProductBrands, "Select brand")%></p>
        <p><%= Html.LabelFor(m => m.WatchModel)%><%= Html.TextBoxFor(m => m.WatchModel)%></p>
        <p><%= Html.LabelFor(m => m.DialDescription)%><%= Html.TextBoxFor(m => m.DialDescription)%></p>
        <p><%= Html.LabelFor(m => m.EstimatedValue)%><%= Html.TextBoxFor(m => m.EstimatedValue)%></p>
        <p><%= Html.LabelFor(m => m.Comments)%><%= Html.TextAreaFor(m => m.Comments)%></p>
    </fieldset>
    <input type="submit" class="more_details" value="Submit Your Info" />
<% } %>
