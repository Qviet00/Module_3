<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 9:57 AM
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
<div class="container-fluid">
 <div class="row">
    <div class="col-lg-3">
        <nav class="navbar navbar-light bg-light img-fluid" style="height: 150px">
            <div class="container-fluid row">
                <div class="col-lg-4">
                    <a class="navbar-brand" href="#">
                        <img style="height: 120px; width: 80px" src="/picture/logocase.png" alt="logoloanding"
                             width="30" height="24" class="d-inline-block align-text-top fs-2">
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <div class="col-lg-3">

    </div>
    <div class="col-lg-3 text-lg-center">
        <h5 style="margin-top: 15px">
            103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam
            7.0 km từ Sân bay Quốc tế Đà Nẵng
        </h5>
    </div>
    <div class="col-lg-3 text-lg-end te">
        LE HONG PHU
    </div>
</div>

 <nav class="navbar navbar-expand-lg bg-success sticky-lg-top ">
    <div class="container-fluid">
        <a class="navbar-brand text-light" href="/view">Home</a>
        <li class="nav-item dropdown " style="list-style:none ">
            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown1" role="button"
               data-bs-toggle="dropdown" aria-expanded="false">
                Khach Hang
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                <li><a class="dropdown-item" href="#">List</a></li>
                <li><a class="dropdown-item" href="#">Add New</a></li>

            </ul>
        </li>
        <li class="nav-item dropdown " style="list-style:none ">
            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown2" role="button"
               data-bs-toggle="dropdown" aria-expanded="false">
                Nhan Vien
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                <li><a class="dropdown-item" href="#">List</a></li>
                <li><a class="dropdown-item" href="#">Add New</a></li>
            </ul>
        </li>

        <li class="nav-item dropdown " style="list-style:none ">
            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown3" role="button"
               data-bs-toggle="dropdown" aria-expanded="false">
                Dich vu
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown3">
                <li><a class="dropdown-item" href="/view?action?=listservice">List</a></li>
                <li><a class="dropdown-item" href="#">Villa</a></li>
                <li><a class="dropdown-item" href="#">House</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Room</a></li>
            </ul>
        </li>

        <li class="nav-item dropdown " style="list-style:none ">
            <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown4" role="button"
               data-bs-toggle="dropdown" aria-expanded="false">
                Hop Dong
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown4">
                <li><a class="dropdown-item" href="#">Villa</a></li>
                <li><a class="dropdown-item" href="#">House</a></li>
                <li>
                    <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Room</a></li>
            </ul>
        </li>

        </ul>

        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success text-light" type="submit">Search</button>
        </form>
    </div>
</nav>
</div>

</body>
</html>
