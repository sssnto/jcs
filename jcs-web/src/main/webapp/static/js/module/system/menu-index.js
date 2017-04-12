/**
 * Created by wangjianchao1 on 2017/4/11.
 */
$(function () {

    var width = $("#jqGrid").parent().width();
    $("#jqGrid").jqGrid({
        caption: '菜单列表',
        url: '/rest/system/menu/table',
        // postData: {'title': 'dddd', 'sn': '222'}, //发送数据 
        mtype: "GET",
        styleUI: 'Bootstrap',
        datatype: "json",
        colNames: ['ID', '名称','编码','链接','图标','状态'], 
        colModel: [
            {label: 'ID', name: 'id', key: true, sortable: false},
            {label: '名称', name: 'name', sortable: false},
            {label: '编码', name: 'code', sortable: false},
            {label: '链接', name: 'link', sortable: false},
            {label: '图标', name: 'icon', sortable: false, formatter: function (cellvalue, options, rowObject) {
                return '<i class="fa fa-fw ' + cellvalue + '"></i>';
            }},
            {label: '状态', name: 'yn', sortable: false, formatter: function (cellvalue, options, rowObject) {
                return [
                    '<span class="label ',
                    cellvalue ? 'label-success': 'label-danger',
                    '">',
                    cellvalue ? 'Y' : 'N',
                    '</span>'
                ].join('');
            }}
        ],
        rownumbers: true, // show row numbers
        rownumWidth: 35, // the width of the row numbers columns
        width: width,
        altRows: true,
        height: 300
    });
});