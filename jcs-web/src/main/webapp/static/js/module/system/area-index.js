$(function () {
    $('#btn-area-new').unbind('click').bind('click', function () {
        // console.log(111);

        //iframe层-父子操作
        layer.open({
            type: 2,
            area: ['700px', '530px'],
            content: '/system/area/add'
        });
    });


    var setting = {
        // isSimpleData: true,              //数据是否采用简单 Array 格式，默认false  
        treeNodeKey: "areaCode",               //在isSimpleData格式下，当前节点id属性  
        treeNodeParentKey: "parentCode",        //在isSimpleData格式下，当前节点的父节点id属性  
        showLine: true,                  //是否显示节点间的连线  
        checkable: true,            //每个节点上是否显示 CheckBox  
        data: {
            simpleData: {
                enable: true,   //设置是否使用简单数据模式(Array)  
                idKey: "areaCode",    //设置节点唯一标识属性名称  
                pIdKey: "parentCode"      //设置父节点唯一标识属性名称  
            },
            key: {
                name: "areaName",//zTree 节点数据保存节点名称的属性名称  
                title: "areaName"//zTree 节点数据保存节点提示信息的属性名称        
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
            url: '/rest/system/area/tree',//请求的action路径  
            error: function () {//请求失败处理函数  
                // alert('请求失败');
            },
            success: function (data) { //请求成功后处理函数。    
                // console.log(data);
                treeNodes = data;   //把后台封装好的简单Json格式赋给treeNodes  
            }
        });

        var t = $("#tree");
        zTree = $.fn.zTree.init(t, setting, treeNodes);
    });

});