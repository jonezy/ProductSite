<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Content.master" Inherits="System.Web.Mvc.ViewPage<ContactUsViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 class="title">Contact Us</h3>
    <div id="product-body">
        <div class="six columns alpha">
            <h4>Mailing Address</h4>
            <address>
                Capital Time Pieces<br />
                3883 Rutherford Road, Unit 15<br />
                Woodbridge Ontario,<br />
                L4L-9R8<br /><br />
            </address>

            <h4>For Sales Inquiries</h4>
            <address>
                Phone 905.605.6200<br />
                Mobile 416.561.2928<br />
                Fax 416.605.6300<br />
                Email: <a href="mailto:sales@capitaltimepieces.com">sales@capitaltimepieces.com</a><br /><br />
            </address>

            <h4>Showroom Hours</h4>
            By Appointment Only<br />
        </div>
        <div class="six columns omega">
            <% Html.RenderPartial("ContactForm", Model); %>
        </div>
    </div>

</asp:Content>


