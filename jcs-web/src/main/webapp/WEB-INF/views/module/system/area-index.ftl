<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        行政区域
    </h1>
    <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li><a href="#">系统管理</a></li>
        <li class="active">行政区域</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <div class="row">
        <div class="col-md-3">

            <!-- 目录信息 -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">目录信息</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="min-height: 500px; overflow: auto;">
                    <ui id="tree" class="ztree"></ui>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
            <!-- Main content -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">区域信息</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" style="min-height: 500px;">
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="input-group">
                                        <input id="txtSearch" type="text" class="form-control">
                                        <span class="input-group-btn">
                                        <button id="btnAreaSearch" class="btn btn-default btn-flat"><i class="fa fa-search"></i> 查询</button>
                                    </span>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="btn-group pull-right">
                                        <button id="btnAreaRefresh" class="btn btn-default btn-flat"><i class="fa fa-refresh"></i> 刷新
                                        </button>
                                        <button id="btn-area-new" class="btn btn-default btn-flat"><i
                                                class="fa fa-plus"></i> 新增
                                        </button>
                                        <button class="btn btn-default btn-flat"><i class="fa fa-edit"></i> 编辑</button>
                                        <button class="btn btn-default btn-flat"><i class="fa fa-trash-o"></i> 删除
                                        </button>
                                        <button class="btn btn-default btn-flat"><i class="fa fa-list-alt"></i> 详细
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <table id="jqGrid"></table>
                                    <div id="jqGridPager"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->

</section>
<!-- /.content -->

<script type="text/javascript">

    $(function () {
        $("#jqGrid").jqGrid({
            caption: '角色列表',
            url: '/rest/system/area/table',
            mtype: "GET",
            styleUI: 'Bootstrap',
            datatype: "json",
            colModel: [
                {label: 'ID', name: 'id', key: true, sortable: false},
                {label: '编码', name: 'areaCode', sortable: false},
                {label: '名称', name: 'areaName', sortable: false},
                {label: '名称', name: 'areaName', sortable: false},
                {label: '名称', name: 'areaName', sortable: false},
                {label: '名称', name: 'areaName', sortable: false},
            ],
            rownumbers: true, // show row numbers
            rownumWidth: 35, // the width of the row numbers columns
            width: 790,
            rowNum:10,
            rowList:[10,20,30],
            pager: '#jqGridPager',
            altRows: true,
            height: 300,
        });

        $('#btnAreaSearch').click(function () {
            $("#jqGrid").jqGrid('setGridParam', {
                url: "/rest/system/area/table",
                postData: {'title': 'dddd', 'sn': '222'}, //发送数据 
                page: 1
            }).trigger("reloadGrid"); //重新载入 
        });

        $('#btnAreaRefresh').unbind().click(function() {
            $('#txtSearch').val('');
            $('#btnAreaSearch').trigger('click'); 
        });
    });

</script>


<script type="text/javascript" src="/static/js/module/system/area-index.js"></script>