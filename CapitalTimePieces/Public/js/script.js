/* Author: 

*/


function UpdateCollections(url) {
    var brand = $("#BrandID > option:selected").attr("value");
    var urlAction = url;

    $.getJSON(urlAction, { id: brand }, function (data) {
        if (data == "")
            $("#CollectionID").hide();
        else {
            $("#CollectionID").addItems(data);
            $("#CollectionID").show();
        }
    });
}

$.fn.clearSelect = function () {
    return this.each(function () {
        if (this.tagName == 'SELECT')
            this.options.length = 0;
    });
}

$.fn.addItems = function (data) {
    return this.clearSelect().each(function () {
        if (this.tagName == 'SELECT') {
            var dropdownList = this;
            var beginOption = new Option("------ select -------", "null");
            $.browser.msie ? dropdownList.add(beginOption)
                           : dropdownList.add(beginOption, null);

            $.each(data, function (index, optionData) {
                var option = new Option(optionData.Text, optionData.Value);
                $.browser.msie ? dropdownList.add(option)
                               : dropdownList.add(option, null);

            });
        }
    });
}






















