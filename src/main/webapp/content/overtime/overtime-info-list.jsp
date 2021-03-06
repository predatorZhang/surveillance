<%@page contentType="text/html;charset=UTF-8" %>
<%@include file="/taglibs.jsp" %>
<%pageContext.setAttribute("currentMenu", "systemManagement");%>
<%pageContext.setAttribute("secondMenu", "overtimeManagement");%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if IE 10]> <html lang="en" class="ie10"> <![endif]-->
<!--[if IE 11]> <html lang="en" class="ie11"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>

    <meta charset="utf-8"/>
    <!--TODO LIST:修改为对应系统-->
    <title>四川省地下管线监督管理子系统</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <meta content="" name="description"/>

    <meta content="" name="author"/>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="${ctx}/s/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <%--<link rel='stylesheet' href='${ctx}/s/bootstrap/3.3.6/css/bootstrap.min.css' type='text/css' media='screen' />--%>
    <link href="${ctx}/s/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="${ctx}/s/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="${ctx}/s/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="${ctx}/s/media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="${ctx}/s/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="${ctx}/s/media/css/blue.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="${ctx}/s/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link rel="stylesheet" type="text/css" href="${ctx}/s/media/css/select2_metro.css"/>

    <link rel="stylesheet" href="${ctx}/s/media/css/DT_bootstrap.css"/>

    <!--TODO List:此处统一换成网站的图标-->
    <link rel="shortcut icon" href="${ctx}/s/media/image/ht.jpg"/>

    <!-- END PAGE LEVEL STYLES -->

    <style type="text/css">

        #table_rules th {
            font-size: 10pt;
            color: #ffffff;
        }

        #table_rules thead tr {
            background-color: #3D3D3D;
        }
        .collapse {
            display: block;
        }
        ul, ol {
            padding: 0;
        }
        .navbar {
            min-height: 1px;
            border: 0px;
        }
        .container-fluid {
            padding-right: 20px;
            padding-left: 20px;
            *zoom: 1;
        }

        .back-img {
            position: absolute;
            text-align: center;
            width: 93%;
            top: 5px;
        }
        .head-img {
            background-image:url(${ctx}/s/media/image/banner_top.png);
            background-repeat: repeat-x;
            width:100%;
            position:absolute;
        }
        .left-img {
            float:left
        }

        .right-img {
            float:right;
        }
    </style>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<input id="context" type="hidden" value="${ctx}">

<!-- BEGIN HEADER -->

<%@include file="/common/layout/header.jsp" %>

<!-- END HEADER -->

<!-- BEGIN CONTAINER -->

<div class="page-container">

    <!-- BEGIN SIDEBAR -->

    <%@include file="/common/layout/menu_new.jsp" %>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN PAGE CONTAINER-->

        <div class="container-fluid">

            <div class="clearfix"></div>

            <div class="row-fluid">
                <div class="span12"></div>
            </div>

            <div class="row-fluid">

                <div class="span12">

                    <div class="portlet box blue">

                        <div class="portlet-title">

                            <!--TODO LIST：换成模块名称，即使一级标题的名称-->
                            <div class="caption"><i class="icon-edit"></i>规则列表</div>

                            <div class="tools">

                                <a href="javascript:;" class="collapse"></a>

                            </div>

                        </div>

                        <div class="portlet-body">

                            <div class="row-fluid">

                                <!--TODO LIST:增加相应的表单以及表格信息-->
                                <div class="portlet-body">
                                    <div class="clearfix">
                                        <div class="btn-group">
                                            <button id="add_rule" class="btn green">
                                                增加规则 <i class="icon-plus"></i>
                                            </button>
                                        </div>

                                        <div class="btn-group">
                                            <button id="documentation_btn" class="btn blue">
                                                配置说明 <i class="icon-globe"></i>
                                            </button>
                                        </div>
                                    </div>

                                    <!--TODO LIST:此处把table_rules改成相关子模块的ID即可-->
                                    <table class="table table-striped table-bordered table-hover" id="table_rules">

                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>规则名</th>
                                            <th>事故类型</th>
                                            <th>事故级别</th>
                                            <th>关联任务名称</th>
                                            <th>超时时间</th>
                                            <th>编辑</th>
                                            <%--<th>删除</th>--%>
                                        </tr>

                                        </thead>

                                    </table>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <!--End the content-->

        </div>

    </div>

    <!-- END PAGE CONTAINER-->

    <div class="clearfix"></div>

</div>

<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->

<%@include file="/common/layout/footer.jsp" %>

<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="${ctx}/s/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="${ctx}/s/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="${ctx}/s/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="${ctx}/s/media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="${ctx}/s/media/js/excanvas.min.js"></script>

<script src="${ctx}/s/media/js/respond.min.js"></script>

<![endif]-->

<script src="${ctx}/s/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="${ctx}/s/media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="${ctx}/s/media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="${ctx}/s/media/js/jquery.uniform.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script type="text/javascript" src="${ctx}/s/media/js/select2.min.js"></script>

<script type="text/javascript" src="${ctx}/s/media/js/jquery.dataTables.js"></script>

<script type="text/javascript" src="${ctx}/s/media/js/DT_bootstrap.js"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="${ctx}/s/media/js/app.js" type="text/javascript"></script>

<script src="${ctx}/s/app/overtime/overtime-info-list.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->
<script>

    $(function () {

        App.init(); // initlayout and core plugins

        OvertimeInfoList.init();

    })

</script>

<!-- END JAVASCRIPTS -->

<!-- END BODY -->
</body>

</html>

