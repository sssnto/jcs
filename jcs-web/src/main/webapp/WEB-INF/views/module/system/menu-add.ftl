<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <#include "/layout/comp-css.ftl">
    <#include "/layout/comp-js.ftl">


    <link href="//cdn.bootcss.com/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap-validator/0.5.3/js/language/zh_CN.min.js"></script>

</head>
<body>
<div class="container">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">新建菜单</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form id="addMenuForm" class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">父级菜单</label>
                            <div class="col-sm-10">
                                <input name="fid" type="email" class="form-control" id="inputEmail3" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">名称</label>
                            <div class="col-sm-10">
                                <input name="name" type="text" class="form-control" id="name" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="code" class="col-sm-2 control-label">编码</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="code" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="link" class="col-sm-2 control-label">链接</label>
                            <div class="col-sm-10">
                                <input name="link" type="text" class="form-control" id="link" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="icon" class="col-sm-2 control-label">图标</label>
                            <div class="col-sm-10">
                                <input name="icon" type="text" class="form-control" id="icon" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="yn" class="col-sm-2 control-label">状态</label>
                            <div class="col-sm-10">
                                <input name="yn" type="text" class="form-control" id="yn" placeholder="">
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer pull-right">
                        <button id="btnOK" type="submit" class="btn btn-info">确定</button>
                        <button id="btnCancel" type="button" class="btn btn-default">取消</button>
                    </div>
                    <!-- /.box-footer -->
                </form>
            </div>
            <!-- /.box -->
        </div>
        <!-- /.row -->
    </section>
</div>

<script type="text/javascript" src="/static/js/module/system/menu-add.js"></script>
</body>
</html>