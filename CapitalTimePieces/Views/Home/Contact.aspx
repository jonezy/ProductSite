<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Content.master" Inherits="System.Web.Mvc.ViewPage<ContactUsViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 class="title">Contact Us</h3>
    <div id="product-body">
        <div class="six columns alpha">
            <h4>Mailing Address</h4>
            <address>
                Capital Time Pieces Ltd<br />
                60 Pippin Road Suite 33<br />
                Concord, Ontario L4k-4M8<br /><br />
            </address>

            <h4>For Sales Inquiries</h4>
            <address>
                Phone (905) 761-1760<br />
                Fax (905)761.1710<br />
                Email: <a href="sales@capitaltimepieces.com">sales@capitaltimepieces.com</a><br /><br />
            </address>

            <h4>Showroom Hours</h4>
            By Appointment Only<br />
        </div>
        <div class="six columns omega">
            <% Html.RenderPartial("ContactForm", Model); %>
        </div>
    </div>

</asp:Content>


