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
                                        <input type="text" class="form-control">
                                        <span class="input-group-btn">
                                      <button class="btn btn-default btn-flat"><i class="fa fa-search"></i> 刷新</button>
                                    </span>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="btn-group pull-right">
                                        <button class="btn btn-default btn-flat"><i class="fa fa-refresh"></i> 刷新
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
            url: '/system/area/table',
            mtype: "GET",
            styleUI: 'Bootstrap',
            datatype: "json",
            colModel: [
                {label: 'ID', name: 'id', key: true, sortable: false},
                {label: '区域编码', name: 'areaCode', sortable: false},
                {label: '区域名称', name: 'areaName', sortable: false},
            ],
//            viewrecords: true,
//            height: 250,
//            rowNum: 20,
//            pager: "#jqGridPager"
            rownumbers: true, // show row numbers
            rownumWidth: 35, // the width of the row numbers columns
            'min-width': 790,
            altRows: true,
            height: 300,

            sortable: false,
        });
    });

</script>


<script type="text/javascript" src="/static/js/module/system/area-index.js"></script>