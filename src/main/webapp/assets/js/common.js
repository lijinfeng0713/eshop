(function () {

    //datatable插件基本设置
    if($.fn.dataTable) $.fn.dataTable.defaults.language = {
        "emptyTable":     "表中数据为空",
        "info":           "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
        "infoEmpty":      "没有数据可供显示",
        "infoFiltered":   "(由 _MAX_ 项结果过滤)",
        "infoPostFix":    "",
        "thousands":      ",",
        "lengthMenu":     "每页显示 _MENU_ 项结果",
        "loadingRecords": "加载中...",
        "processing":     "处理中...",
        "search":         "搜索:",
        "zeroRecords":    "没有匹配结果",
        "paginate": {
            "first":    "首页",
            "last":     "末页",
            "next":     "下页",
            "previous": "上页"
        },
        "aria": {
            "sortAscending":  ": 以升序排列此列",
            "sortDescending": ": 以降序排列此列"
        }
    };

})(jQuery);