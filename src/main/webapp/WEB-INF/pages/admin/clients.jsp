<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "security" uri= "http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <security:csrfMetaTags/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Панель администратора</title>

    <link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/plugins/datatables/dataTables.bootstrap.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/css/font-awesome/font-awesome.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link href="<c:url value="/resources/css/skins/skin-blue.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/AdminLTE.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/customStyle/admin.css"/>" rel="stylesheet">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="navigation.jsp"/>
    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-solid box-success">
                        <div class="box-header">
                            <h2 class="box-title">
                                Категории
                            </h2>
                        </div>
                        <!-- /.box-header -->

                        <div class="box-body">
                            <div class="btn-toolbar" role="toolbar">
                                <div class="btn-group">
                                    <button type="button" id="addButton" onclick="showAddModal()" class="btn btn-default">
                                        <span class="glyphicon glyphicon-plus"></span>
                                    </button>
                                    <button type="button" id="updateButton" disabled onclick="showUpdateModal()" class="btn btn-default">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </button>
                                    <button type="button" id="deleteButton" disabled onclick="deleteClient()" class="btn btn-default">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </button>
                                    <button type="button" id="refreshButton" onclick="refresh()" class="btn btn-default">
                                        <span class="glyphicon glyphicon-refresh"></span>
                                    </button>
                                </div>
                            </div>
                            <table class="table table-bordered table-striped table-hover" id="clientList">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Имя</th>
                                    <th>Email</th>
                                    <th>Телефон</th>
                                    <th>Пароль</th>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="modal fade" id="client" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="modalTitle">Добавление клиента</h4>
            </div>
            <div class="modal-body">
                <label for="clientName">Имя клиента</label>
                <input id="clientName" type="text" class="form-control">
                <label for="clientEmail">Email</label>
                <input id="clientEmail" type="text" class="form-control">
                <label for="clientPhone">Телефон</label>
                <input id="clientPhone" type="text" class="form-control">
                <label for="clientPassword">Пароль</label>
                <input id="clientPassword" type="text" class="form-control">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                <button id="addClient" type="button" onclick="addClient()" class="btn btn-primary">Добавить</button>
                <button id="updateClient" type="button" onclick="updateClient()" class="btn btn-primary">Обновить</button>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value="/resources/plugins/jQuery/jquery-3.2.0.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<script src="<c:url value="/resources/plugins/datatables/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/resources/plugins/datatables/dataTables.bootstrap.js"/>"></script>

<script src="<c:url value="/resources/js/app.min.js"/>"></script>
<script src="<c:url value="/resources/js/admin/clients.js"/>"></script>


</body>
</html>
