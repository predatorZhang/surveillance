<%@page contentType="text/html;charset=UTF-8" %>
<%@include file="/taglibs.jsp" %>
<%pageContext.setAttribute("currentHeader", "party");%>
<%pageContext.setAttribute("currentMenu", "party");%>
<!doctype html>
<html lang="en">

<head>
    <%@include file="/common/meta.jsp" %>
    <title><spring:message code="dev.party-entity.list.title" text="列表"/></title>
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
        var config = {
            id: 'party-entityGrid',
            pageNo: ${page.pageNo},
            pageSize: ${page.pageSize},
            totalCount: ${page.totalCount},
            resultSize: ${page.resultSize},
            pageCount: ${page.pageCount},
            orderBy: '${page.orderBy == null ? "" : page.orderBy}',
            asc: ${page.asc},
            params: {
                'filter_LIKES_name': '${param.filter_LIKES_name}'
            },
            selectedItemClass: 'selectedItem',
            gridFormId: 'party-entityGridForm',
            exportUrl: 'party-entity-export.do'
        };

        var table;

        $(function () {
            table = new Table(config);
            table.configPagination('.m-pagination');
            table.configPageInfo('.m-page-info');
            table.configPageSize('.m-page-size');
        });

    </script>
</head>

<body class="page-header-fixed">
<%--<%@include file="/header/party.jsp"%>--%>
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
                            查询
                            <div class="pull-right ctrl">
                                <a class="btn btn-default btn-xs"><i id="party-entitySearchIcon"
                                                                     class="glyphicon glyphicon-chevron-up"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">

                            <form name="party-entityForm" method="post" action="party-entity-list.do"
                                  class="form-inline">
                                <label for="party-entity_name"><spring:message
                                        code='party-entity.party-entity.list.search.name' text='名称'/>:</label>
                                <input type="text" id="party-entity_name" name="filter_LIKES_name"
                                       value="${param.filter_LIKES_name}" class="form-control">
                                <button class="btn btn-default a-search" onclick="document.party-entityForm.submit()">
                                    查询
                                </button>
                                &nbsp;
                            </form>

                        </div>
                    </div>

                    <div style="margin-bottom: 20px;">
                        <div class="pull-left btn-group" role="group">
                            <button class="btn btn-default a-insert" onclick="location.href='party-entity-input.do'">
                                新建
                            </button>
                            <button class="btn btn-default a-remove" onclick="table.removeAll()">删除</button>
                            <%--<button class="btn btn-default a-export" onclick="table.exportExcel()">导出</button>--%>
                        </div>

                        <div class="pull-right">
                            每页显示
                            <select class="m-page-size form-control" style="display:inline;width:auto;">
                                <option value="10">10</option>
                                <option value="20">20</option>
                                <option value="50">50</option>
                            </select>
                            条
                        </div>

                        <div class="clearfix"></div>
                    </div>

                    <form id="party-entityGridForm" name="party-entityGridForm" method='post'
                          action="party-entity-remove.do" class="m-form-blank">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="glyphicon glyphicon-list"></i>
                                <spring:message code="scope-info.scope-info.list.title" text="列表"/>
                            </div>


                            <table id="orgEntityGrid" class="table table-hover">
                                <thead>
                                <tr>
                                    <th width="10" class="table-check"><input type="checkbox" name="checkAll"
                                                                              onchange="toggleSelectedItems(this.checked)">
                                    </th>
                                    <th class="sorting" name="id"><spring:message code="org.org.list.id"
                                                                                  text="编号"/></th>
                                    <th class="sorting" name="type"><spring:message code="org.org.list.type"
                                                                                    text="类型"/></th>
                                    <th class="sorting" name="name"><spring:message code="org.org.list.name"
                                                                                    text="名称"/></th>
                                    <th class="sorting" name="region">区域</th>
                                    <th class="sorting" name="level">级别</th>
                                    <th class="sorting" name="ref">引用</th>
                                    <th width="50">&nbsp;</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${page.result}" var="item" varStatus="idxStatus">
                                    <tr>
                                        <td><input type="checkbox" class="selectedItem" name="selectedItem"
                                                   value="${item.id}"></td>
                                        <%--<td>${item.id}</td>--%>
                                        <td>${idxStatus.count}</td>
                                        <td>${item.partyType.name}</td>
                                        <td>${item.name}</td>
                                        <td>${item.region}</td>
                                        <td>${item.level}</td>
                                        <td>${item.ref}</td>
                                        <td>
                                            <a href="party-entity-input.do?id=${item.id}"><spring:message
                                                    code="core.list.edit" text="编辑"/></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>


                        </div>
                    </form>

                    <div>
                        <div class="m-page-info pull-left">
                            共100条记录 显示1到10条记录
                        </div>

                        <div class="btn-group m-pagination pull-right">
                            <button class="btn btn-default">&lt;</button>
                            <button class="btn btn-default">1</button>
                            <button class="btn btn-default">&gt;</button>
                        </div>

                        <div class="clearfix"></div>
                    </div>

                    <div class="m-spacer"></div>

                </section>
                <!-- end of main -->
            </div>
        </div>
    </div>
    <%@include file="/common/layout/footer.jsp" %>
</div>

</body>

</html>

