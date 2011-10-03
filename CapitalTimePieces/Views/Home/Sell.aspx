<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Content.master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 class="title">Sell your watch</h3>
    <div id="product-body">
        <p>We at Capital Time Pieces are buying watches every day! We are the largest buyers and sellers of pre-owned watches. With over 20 years of experience. 
        We are always interested in Buying. So if you have a watch for sale we would love to Hear about it!</p>

        <p>There are many factors that go into evaluating the price of a watch. Certain brands hold their value better than others and certain collectible watches 
        can be worth much more than they were originally bought for. Some of the things that affect the value of watches are the following:</p>

        <ol>
            <li>Desirability & demand for certain brands.</li>
            <li>What type of Metal is it? (Gold, Steel).</li>
            <li>The Condition of the watch?</li>
            <li>What type of Movement is it (Automatic, Mechanical or Quartz).</li>
        </ol>

        <center><strong>We love trades, <%= Html.ActionLink("call us", "contact") %> with your proposition. We love making deals!!</strong></center>
    </div>
</asp:Content>
