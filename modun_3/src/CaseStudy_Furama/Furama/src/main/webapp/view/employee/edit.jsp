<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <title>Edit Customer</title>
    <style>
        body {
            background-color: #B5C8FF;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="mx-5 px-5 pt-3">
    <h2 class="text-center fw-bold">Edit Customer</h2>

    <p class="text-center mt-3"><a href="view/home.jsp"><i class="fa-solid fa-house-chimney h5 mx-1"></i> Back to
        HOME</a></p>

    <p class="text-center">
        <a href="customer?action=customer"><i class="fa-solid fa-backward"></i> Back to Customer list</a>
    </p>

    <c:if test="${mess!=null}">
        <c:if test="${check}">
            <div class="justify-content-center d-flex">
                <div class="alert alert-success alert-dismissible fade show w-50">
                    <strong>Trạng thái:</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>

        <c:if test="${!check}">
            <div class="justify-content-center d-flex">
                <div class="alert alert-danger alert-dismissible fade show w-50">
                    <strong>Sorry!</strong> ${mess}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            </div>
        </c:if>
    </c:if>
</div>
<div>
    <div class="d-flex justify-content-center">

        <form class="w-50 border border-2 border-success p-3 bg-warning rounded" method="post">
            <div class="form-group" hidden>
                <label class="h6">Customer:</label>
                <div class="input-group">
                    <input type="text" class="form-control" name="id" value="${customer.customerId}" readonly>
                    <span class="input-group-text"> <i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="form-group">
                <label for="customerName" class="h6">Name:</label>
                <div class="input-group">
                    <input type="text" id="customerName" class="form-control" name="customerName"
                           value="${customer.customerName}">
                    <span class="input-group-text"> <i class="fa-solid fa-person-circle-question"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="customerBirthday" class="h6">Date of Birth:</label>
                <input type="text" id="customerBirthday" class="form-control" name="customerBirthday"
                       value="${customer.customerBirthday}">
            </div>

            <div class="mt-3 form-group">
                <label class="h6">Gender:</label>
                <div class="d-flex">
                    <label class="d-block me-4">
                        <input type="radio" value='1' name="customerGender" checked> Male
                        <i class="fa-solid fa-mars"></i>
                    </label>
                    <label class="d-block">
                        <input type="radio" value='0' name="customerGender"> Female
                        <i class="fa-solid fa-venus"></i>
                    </label>
                </div>

            </div>

            <div class="mt-3 form-group">
                <label for="idCard" class="h6">Id card:</label>
                <div class="input-group">
                    <input type="text" id="idCard" class="form-control" name="customerIdCard"
                           value="${customer.customerIdCard}">
                    <span class="input-group-text"><i class="fa-solid fa-id-card"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="phone" class="h6">Phone number:</label>
                <div class="input-group">
                    <input type="text" id="phone" class="form-control" name="customerPhone"
                           value="${customer.customerPhone}">
                    <span class="input-group-text"><i class="fa-solid fa-square-phone"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="email" class="h6">Email:</label>
                <div class="input-group">
                    <input type="text" id="email" class="form-control" name="customerEmail"
                           value="${customer.customerEmail}">
                    <span class="input-group-text"><i class="fa-solid fa-envelope-circle-check"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label for="address" class="h6">Address:</label>
                <div class="input-group">
                    <input type="text" id="address" class="form-control" name="customerAddress"
                           value="${customer.customerAddress}">
                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                </div>
            </div>

            <div class="mt-3 form-group">
                <label class="h6" for="customerTypeId">Customer Type:</label>
                <div class="input-group">
                    <select id="customerTypeId" class="form-control" name="customerTypeId">
                        <option checked="true">Vui lòng chọn</option>
                        <option value=1>Diamond</option>
                        <option value=2>Platinium</option>
                        <option value=3> Gold</option>
                        <option value=4>Silver</option>
                        <option value=5>Member</option>
                    </select>
                    <span class="input-group-text"><i class="fa-solid fa-ranking-star"></i></span>
                </div>
            </div>
            <form >
            <div class="mt-3 text-center">
                <button class="btn btn-info btn-sm border border-2 border-success">
                    -- Save <i class="fa-solid fa-floppy-disk"></i> --
                </button>
            </div>
            </form>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>