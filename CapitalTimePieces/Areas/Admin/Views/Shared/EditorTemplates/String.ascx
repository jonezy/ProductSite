<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<string>" %>
<%= Html.TextArea("", (!string.IsNullOrEmpty(Model) ? Model.ToString() : string.Empty), new { @name="content", @class=this.ViewData.Values.ToList()[0].ToString()}) %>

<script type="text/javascript">
    var oFCKeditor = new FCKeditor('<%= this.ViewData.ModelMetadata.PropertyName %>');
    oFCKeditor.BasePath = "<%= App.BaseUrl %>Public/js/mylibs/fckeditor/";
    oFCKeditor.ToolbarSet = 'Basic';
    oFCKeditor.ReplaceTextarea();
</script>