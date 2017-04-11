$(function () {
    var setting = {
        // isSimpleData: true,              //数据是否采用简单 Array 格式，默认false  
        treeNodeKey: "id",               //在isSimpleData格式下，当前节点id属性  
        // treeNodeParentKey: "parentCode",        //在isSimpleData格式下，当前节点的父节点id属性  
        showLine: true,                  //是否显示节点间的连线  
        checkable: false,            //每个节点上是否显示 CheckBox  
        data: {
            simpleData: {
                enable: true,   //设置是否使用简单数据模式(Array)  
                idKey: "id",    //设置节点唯一标识属性名称  
                // pIdKey: "parentCode"      //设置父节点唯一标识属性名称  
            },
            key: {
                name: "label",//zTree 节点数据保存节点名称的属性名称  
                title: "label"//zTree 节点数据保存节点提示信息的属性名称        
            }
        }, 
        callback: {
            onClick: function (event, treeId, treeNode) {
                // alert(treeNode.tId + ", " + treeNode.label);
            }
        }
    };

    var zTree;
    var treeNodes;

    $(function () {
        $.ajax({
            async: false,
            cache: false,
            type: 'POST',
            dataType: "json",
            url: '/rest/system/dict/tree',//请求的action路径  
            error: function () {//请求失败处理函数  
                // alert('请求失败');
            },
            success: function (data) { //请求成功后处理函数。    
                console.log(data);
                treeNodes = data;   //把后台封装好的简单Json格式赋给treeNodes  
            }
        });

        var t = $("#tree");
        zTree = $.fn.zTree.init(t, setting, treeNodes);
    });


    $("#jqGrid").jqGrid({
        caption: '角色列表',
        url: '/rest/system/dict/table',
        postData: {'title': 'dddd', 'sn': '222'}, //发送数据 
        mtype: "GET",
        styleUI: 'Bootstrap',
        datatype: "json",
        colModel: [
            {label: 'ID', name: 'id', key: true, sortable: false},
            {label: '编码', name: 'code', sortable: false},
            {label: '名称', name: 'label', sortable: false}
        ],
        rownumbers: true, // show row numbers
        rownumWidth: 35, // the width of the row numbers columns
        width: 790,
        altRows: true,
        height: 300,
    });

    $('#btnAreaSearch').click(function () {
        $("#jqGrid").jqGrid('setGridParam', {
            url: "/rest/system/dict/table",
            postData: {'title': 'dddd', 'sn': '222'}, //发送数据 
            page: 1
        }).trigger("reloadGrid"); //重新载入 
    });

    $('#btnAreaRefresh').click(function() {
        $('#txtSearch').val('');
        $('#btnAreaSearch').trigger('click');
    });
    
    
    $('#btnNew').click(function () {
        //页面层-自定义
        layer.open({
            area: ['400px', '500px'],
            type: 1,
            title: false,
            closeBtn: 1,
            btn:['确定', '关闭'],
            yes: function (index) {
                layer.close(index);
            },
            shadeClose: true,
            skin: 'yourclass',
            content: $('#dlgDictAdd')
        });
    });


    $('#btnEdit').click(function () {
        //页面层-自定义
        layer.open({
            area: ['400px', '500px'],
            type: 1,
            title: false,
            closeBtn: 1,
            btn:['确定', '关闭'],
            yes: function (index) {
                layer.close(index);
            },
            shadeClose: true,
            skin: 'yourclass',
            content: $('#dlgDictEdit')
        });
    });


    $('#btnView').click(function () {
        //页面层-自定义
        layer.open({
            area: ['400px', '500px'],
            type: 1,
            title: false,
            closeBtn: 1,
            btn:['关闭'],
            yes: function (index) {
                layer.close(index);
            },
            shadeClose: true,
            skin: 'yourclass',
            content: $('#dlgDictView')
        });
    });
});