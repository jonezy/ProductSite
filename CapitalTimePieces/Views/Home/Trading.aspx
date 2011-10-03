<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Content.master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 class="title">Watch Trading</h3>
    <div id="product-body">
        <p>Capital Time Pieces absolutely loves to trade watches! We carry a large selection for you to choose from. We will gladly consider any trade for any of the 
        watches we have in stock. Due to the high demand for luxury watches, we are always interested in purchasing a watch or your entire collection. You can
        depend on Capital Time Pieces for a prompt and confidential transaction. Same day payment assured upon receiving your item.</p>

        <p>The best way to get started is to send us an email with a description of your watch. If possible please include a picture. Email us at: <a href="mailto:sales@capitaltimepieces.com">sales@capitaltimepieces.com</a>.</p>

        <p>If you wish to call, our number is 905.761.1760 to discuss.</p>

        <p>Capital Time Pieces Ltd. guarantees discretion and professionalism from your first contact through completion of the transaction.</p>

        <center><strong>We love trades, <%= Html.ActionLink("call us", "contact") %> with your proposition. We love making deals!!</strong></center>
    </div>
</asp:Content>
