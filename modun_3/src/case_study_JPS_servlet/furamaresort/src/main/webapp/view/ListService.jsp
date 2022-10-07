<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/4/2022
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/view/include/header.jsp" %>
<h2 class="text-lg-center container-fluid"> DANH SACH DICH VU </h2>
<div class="row">
    <div class="col-lg-12">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>STT</th>
                <th scope="col">MA DV</th>
                <th scope="col">TEN DICH VU</th>
                <th scope="col">DIEN TICH SU DUNG</th>
                <th scope="col">CHI PHI THUE</th>
                <th scope="col">SO NGUOI TOI DA</th>
                <th scope="col"> MA KIEU THUE</th>
                <th scope="col"> MA LOAI DICH VU</th>
                <th scope="col"> TIEU CHUAN PHONG</th>
                <th scope="col"> TIEN NGHI KHAC</th>
                <th scope="col"> DIEN TICH HO BOI</th>
                <th scope="col"> SO TANG</th>
                <th scope="col"> DICH VU DI KEM</th>
                <th scope="col"> SUA</th>
                <th scope="col"> XOA</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${list}" varStatus="STT">
                <tr>
                    <td>${STT.count}</td>
                    <th>${list.facilityCode}</th>
                    <td>${list.name}</td>
                    <td>${list.area}</td>
                    <td>${list.cost}</td>
                    <td>${list.maxPeople}</td>
                    <td>
                        <c:forEach var="rent" items="${listRent}">
                            <c:if test="${list.rentTypeCode == rent.rentCode}">
                                <span> ${rent.nameRent} </span>
                            </c:if>
                        </c:forEach>
                    </td>
                    <td><c:forEach var="listType" items="${listType}">
                        <c:if test="${listType.typeServiceCode == list.facilityTypeCode}">
                            ${listType.nameService}
                        </c:if>
                    </c:forEach></td>
                    <td>${list.roomStandar}</td>
                    <td>${list.anyElse}</td>
                    <td>${list.areaPool}</td>
                    <td>${list.flood}</td>
                    <td>${list.serviceFree}</td>
                    <td><a class="btn btn-primary" href="/viewFacility?action=update&id=${list.facilityCode}">SUA</a>
                    </td>
                    <td><a class="btn btn-danger" data-bs-toggle="modal"
                           data-bs-target="#exampleModal" href="/viewFacility?action=delete&code=${list.facilityCode}"
                           onclick="deleteConfim(${list.facilityCode})">XOA</a></td>

                </tr>
            </c:forEach>
            </tbody>
        </table>

        <form action="/viewFacility" id="deleteFac">
            <input hidden name="action" value="delete">
            <input hidden name="throwId" id="take">

        </form>

    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ban co muon xoa khong
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Khong</button>
                <button type="button" class="btn btn-primary" id="" onclick="takeId()">Dong Y</button>
            </div>
        </div>
    </div>
</div>

<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>

</body>

<script>
    function deleteConfim(id) {
        document.getElementById("take").value = id;
    }

    function takeId() {
        document.getElementById("deleteFac").submit();
    }
</script>

</html>
