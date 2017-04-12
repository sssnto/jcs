<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        菜单管理
    </h1>
    <ol class="breadcrumb">
        <li><a href="/"><i class="fa fa-dashboard"></i> 首页</a></li>
        <li><a href="#">系统管理</a></li>
        <li class="active">菜单管理</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <div class="row">
        <div class="col-md-12">
            <!-- Main content -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">信息</h3>
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
                                        <button id="btnNew" class="btn btn-default btn-flat"><i
                                                class="fa fa-plus"></i> 新增
                                        </button>
                                        <button id="btnEdit" class="btn btn-default btn-flat"><i class="fa fa-edit"></i> 编辑</button>
                                        <button id="btnDelete" class="btn btn-default btn-flat"><i class="fa fa-trash-o"></i> 删除
                                        </button>
                                        <button id="btnView" class="btn btn-default btn-flat"><i class="fa fa-list-alt"></i> 详细
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

<#include "dict-add.ftl">
<#include "dict-edit.ftl">
<#include "dict-view.ftl">

<script type="text/javascript" src="/static/js/module/system/menu-index.js"></script>