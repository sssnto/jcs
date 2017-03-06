<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <!-- jQuery 2.2.3 -->
    <script type="text/javascript" src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
    
    <style>
        tr,th,td{border: 1px solid;}
    </style>
</head>
<body>

<script>
    $(function () {

        $('#add').click(function () {


            var pjxm = $('#pjxm').val();
            var zbdy = $('#zbdy').val();
            var pjwd = $('#pjwd').val();
            var pjff = $('#pjff').val();
            var pfbz = $('#pfbz').val();
            var zf = $('#zf').val();
            var pdbm = $('#pdbm').val();
            var qz = $('#qz').val();
            var bz = $('#bz').val();

            var tb = [
                '<tr>',
                '<td>1</td>',
                '<td>' + pjxm + '</td>',
                '<td>' + zbdy + '</td>',
                '<td>' + pjwd + '</td>',
                '<td>' + pjff + '</td>',
                '<td>' + pfbz + '</td>',
                '<td>' + zf + '</td>',
                '<td>' + pdbm + '</td>',
                '<td>' + qz + '</td>',
                '<td>' + bz + '</td>',
                '</tr>'
            ];


            $('#tbody').append(tb.join(''));
        }); 
    });
</script>

<table>

<tr><th>序号</th><td><input type="text" id="pjxm"></td></tr>
<tr><th>评价项目</th><td><input type="text" id="zbdy"></td></tr>
<tr><th>指标定义</th><td><input type="text" id="pjwd"></td></tr>
<tr><th>评价维度</th><td><input type="text" id="pjff"></td></tr>
<tr><th>评价方法</th><td><input type="text" id="pfbz"></td></tr>
<tr><th>评分标准</th><td><input type="text" id="zf"></td></tr>
<tr><th>总分</th><td><input type="text" id="pdbm"></td></tr>
<tr><th>评定部门</th><td><input type="text" id="qz"></td></tr>
<tr><th>权重</th><td><input type="text" id="bz"></td></tr>

</table>
<input type="button" id="add" value="添加">




<table>
    <thead>
    <tr>
        <th>序号</th>
        <th>评价项目</th>
        <th>指标定义</th>
        <th>评价维度</th>
        <th>评价方法</th>
        <th>评分标准</th>
        <th>总分</th>
        <th>评定部门</th>
        <th>权重</th>
        <th>备注</th>
    </tr>
    </thead>
    <tbody id="tbody">
    
    </tbody>
</table>

</body>
</html>