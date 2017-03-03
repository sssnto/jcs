<#macro head>
    <#assign layout_head>
        <#nested />
    </#assign>
</#macro>
<#macro body>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>JC System</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/static/js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/js/jquery/layout-default-latest.css">
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/css/index.css">
    <link rel="stylesheet" href="/static/css/custom.css">
    <script src="/static/js/jquery/jQuery-2.2.0.min.js"></script>
    <script src="/static/js/jquery/jquery-ui-latest.js"></script>
    <script src="/static/js/jquery/jquery.layout-latest.js"></script>
    <script src="/static/js/charts/Chart.js"></script>

${layout_head}
</head>
<body>
    <#nested />
</body>
</html>
</#macro>