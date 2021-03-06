<%@page contentType="text/html;charset=UTF-8" %>
<%@include file="/taglibs.jsp" %>
<%pageContext.setAttribute("currentHeader", "party");%>
<%pageContext.setAttribute("currentMenu", "party");%>
<!doctype html>
<html>

<head>
    <%@include file="/common/meta.jsp" %>
    <title>编辑</title>
    <%@include file="/common/s3.jsp" %>
    <style type="text/css">
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
    </style>
    <script type="text/javascript">
        $(function () {
            $("#party-typeForm").validate({
                submitHandler: function (form) {
                    bootbox.animate(false);
                    var box = bootbox.dialog('<div class="progress progress-striped active" style="margin:0px;"><div class="bar" style="width: 100%;"></div></div>');
                    form.submit();
                },
                errorClass: 'validate-error'
            });
        })
    </script>
</head>

<body class="page-header-fixed">
<%--<%@include file="/header/org.jsp"%>--%>

<%@include file="/common/layout/header-org.jsp" %>
<div class="page-container">
    <%@include file="/menu/party.jsp" %>
    <div class="page-content">
        <div class="row-fluid" class="col-md-10" style="margin-left: 10px;">

            <div class="span12">
                <!-- start of main -->
                <section id="m-main"  style="padding-top:25px;margin-right: 30px">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="glyphicon glyphicon-list"></i>
                            编辑
                        </div>

                        <div class="panel-body">


                            <form id="orgTypeForm" method="post" action="party-type-save.do" class="form-horizontal">
                                <c:if test="${model != null}">
                                    <input id="orgType_id" type="hidden" name="id" value="${model.id}">
                                </c:if>
                                <div class="form-group">
                                    <label class="control-label col-md-1" for="orgType_name"><spring:message
                                            code="org.type.input.name" text="名称"/></label>

                                    <div class="col-sm-5">
                                        <input id="orgType_name" type="text" name="name" value="${model.name}" size="40"
                                               class="form-control required" maxlength="10">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-1" for="orgType_type0">类型</label>

                                    <div class="col-sm-5">
                                        <label><input id="orgType_type0" type="radio" name="type"
                                                      value="0" ${model.type == 0 ? 'checked' : ''}>组织</label>
                                        <label><input id="orgType_type1" type="radio" name="type"
                                                      value="1" ${model.type == 1 ? 'checked' : ''}>岗位</label>
                                        <label><input id="orgType_type2" type="radio" name="type"
                                                      value="2" ${model.type == 2 ? 'checked' : ''}>人员</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-5">
                                        <button id="submitButton" class="btn"><spring:message code='core.input.save'
                                                                                              text='保存'/></button>
                                        <button type="button" onclick="history.back();" class="btn"><spring:message
                                                code='core.input.back' text='返回'/></button>
                                    </div>
                                </div>
                            </form>

                        </div>
                        </article>
                    </div>
                </section>
                <!-- end of main -->
            </div>
        </div>
    </div>
    <%@include file="/common/layout/footer.jsp" %>
</div>

</body>

</html>

