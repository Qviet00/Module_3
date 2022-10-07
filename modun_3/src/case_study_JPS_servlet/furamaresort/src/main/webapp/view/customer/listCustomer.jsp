<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/DataTables-1.12.1/css/dataTables.bootstrap5.min.css">
</head>
<body>

<%@include file="/view/include/header.jsp" %>
<h2 class="text-lg-center"> DANH SACH KHACH HANG</h2>

<div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-10">

        <table class="table table-striped" id="testTable">
            <thead>
            <tr>
                <th>STT</th>
                <th>ID</th>
                <th> LOAI KHACH</th>
                <th>HO TEN</th>
                <th>NGAY SINH</th>
                <th>GIOI TINH</th>
                <th>SO CMND</th>
                <th>DIEN THOAI</th>
                <th>EMAIL</th>
                <th> DIA CHI</th>
                <th> SUA</th>
                <th> XOA</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${ListCustomer}" varStatus="STT">

                <tr>
                    <td>${STT.count}</td>
                    <td>${customer.id}</td>

                    <c:forEach var="type" items="${ListType}">
                        <c:if test="${customer.customerType == type.idType}">
                            <td>${type.nameType}</td>
                        </c:if>
                    </c:forEach>

                    <td>${customer.name}</td>
                    <td>${customer.dayOfBirth}</td>

                    <c:if test="${customer.gender == true}">
                        <td>Nam</td>
                    </c:if>
                    <c:if test="${customer.gender == false}">
                        <td>Nu</td>
                    </c:if>

                    <td>${customer.iden}</td>
                    <td>${customer.phone}</td>
                    <td>${customer.email}</td>
                    <td>${customer.address}</td>
                    <td><a class="btn btn-primary" href="/view?action=update&id=${customer.id} ">SUA</a></td>
                    <td><a class="btn btn-danger" href="/view?action=delete&id=${customer.id} "
                           data-bs-toggle="modal" data-bs-target="#exampleModal1" onclick="modaldelate(${customer.id})">XOA</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <form action="/view" id="deletefrom">
            <input hidden name="action" value="delete">
            <input hidden name="idcus" id="takeId">
        </form>
    </div>
    <div class="col-lg-1"></div>
</div>

<%-- bung modal--%>
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Ban chac chan muon xoa ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huy</button>
                <button type="button" class="btn btn-primary" onclick="submitForm()">Dong Y</button>
            </div>
        </div>
    </div>
</div>

</body>
<script src="/bootstrap-5.0.2-dist/jquery-3.6.0.min.js"></script>
<script src="/DataTables-1.12.1/js/jquery.dataTables.min.js"></script>
<script src="/DataTables-1.12.1/js/dataTables.bootstrap5.min.js"></script>

<%-- phan trang --%>
<script>
    $(document).ready(function () {
        $('#testTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        })
    })
</script>

<%--modal --%>
<script>
    function modaldelate(idCustomer) {
        document.getElementById("takeId").value = idCustomer;
    }

    function submitForm() {
        document.getElementById("deletefrom").submit();
    }

</script>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
