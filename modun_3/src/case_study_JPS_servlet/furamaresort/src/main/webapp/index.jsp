<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/4/2022
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">

<html>
  <head>
    <title>$Title$</title>
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
              Nguyễn Quốc Việt
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
                      <li><a class="dropdown-item" href="/view?action=display">List</a></li>
                      <li><a class="dropdown-item" href="/view?action=add">Add New</a></li>

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
                      <li><a class="dropdown-item" href="/viewFacility?action=display">List</a></li>
                      <li><a class="dropdown-item" href="/viewFacility?action=add">Add New</a></li>
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
      <div class="row">

          <div class="col-lg-3">
              <div class="row">
                  <div class="card col-lg-12 border-0">
                      <img src="/picture/card1.jpg" class="card-img-top" alt="loading">
                      <div class="card-body">
                          <h5 class="card-title">PHÒNG SUPERIOR HƯỚNG HỒ</h5>
                          <p class="card-text">Diện Tích Phòng
                              40.1 m2
                              Sức Chứa
                              2 Khách
                              Loại Giường
                              Giường Đôi/ Giường Đơn
                              Phòng Tắm
                              Riêng Biệt</p>
                          <a href="https://furamavietnam.com/vi/rooms/lagoon-superior/" class="btn btn-success text-light">
                              XEM CHI TET</a>
                      </div>
                  </div>
              </div>

              <div class="row">
                  <div class="card col-lg-12 border-0">
                      <img src="/picture/card2.jpg" class="card-img-top" alt="loading">
                      <div class="card-body">
                          <h5 class="card-title">PHÒNG DELUXE HƯỚNG VƯỜN</h5>
                          <p class="card-text">Diện Tích Phòng
                              43.7 m2
                              Sức Chứa
                              2 Guests
                              Loại Giường
                              Double/Twin
                              Phòng Tắm
                              Separate</p>
                          <a href="https://furamavietnam.com/vi/rooms/garden-deluxe/" class="btn btn-success text-light">XEM CHI
                              TIET</a>
                      </div>
                  </div>
              </div>

              <div class="row">
                  <div class="card col-lg-12 border-0" >
                      <img src="/picture/card3.jpg" class="card-img-top" alt="loading">
                      <div class="card-body">
                          <h5 class="card-title">BIỆT THỰ HƯỚNG BIỂN CÓ HỒ BƠI RIÊNG</h5>
                          <p class="card-text">Diện Tích Phòng
                              900 m2
                              Sức Chứa
                              4 Phòng Ngủ
                              Loại Giường
                              Giường Đôi/ Giường Đơn
                              Phòng Tắm
                              Riêng Biệt</p>
                          <a href="https://furamavietnam.com/vi/rooms/beach-front-villas/" class="btn btn-success text-light">XEM CHI
                              TIET</a>
                      </div>
                  </div>
              </div>

          </div>

          <div class="col-lg-9 container ">
              <div class="row">
                  <div class="col-lg-12" style="margin-top: 2px">
                      <img src="/picture/bodypic.jpg" class="img-fluid">
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-8">
                      <div class="row">
                          <div class="col-lg-12" style="margin-top: 2px">
                              <video autoplay muted class="ratio-16x9 w-100" style="margin-top: 13px">
                                  <source src="https://media.istockphoto.com/videos/drone-flight-towards-rising-sun-in-grayton-beach-state-park-florida-video-id1211853263">
                              </video>
                          </div>
                      </div>
                      <div class="row img-fluid">
                          <div class="col-lg-12 ">
                              <span>  <img src="/picture/duoivideos.jpg" style="height: 140px;width: 670px;margin-top: 5px"></span>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-4" style="margin-top: 10px">
                      <h5>
                          KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI FURAMA ĐÀ NẴNG, TỰ HÀO LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM
                      </h5>
                      <p>
                          Ẩm thực tại khu nghỉ dưỡng là trải nghiệm kết hợp giữa các món ăn Việt Nam, châu Á, Ý và châu Âu cùng các món bít
                          tết nhập khẩu hảo hạng. Khu nghỉ dưỡng mang đến cho quý khách những không gian ẩm thực đa dạng bao gồm –
                          quầy bar nhìn ra biển, hồ bơi Lagoon được bao quanh bởi khu vườn nhiệt đới, ẩm thực truyền thống Ý
                          tại nhà hàng Don Cipriani’s, chất Á Đông tại Café Indochine hay nhà hàng bít tết “The Fan –
                          Cái Quạt” nằm ngay trên bãi biển. Khu nghỉ dưỡng Furama Đà Nẵng còn gây ấn tượng và tạo nhiều
                          thích thú cho khách thông qua các chương trình vui chơi đầy thú vị như các chuyến du ngoạn,
                          thể thao trên nước, lặn biển và chơi golf cũng như các dịch vụ chăm sóc sức khoẻ và sắc đẹp.
                      </p>
                  </div>
              </div>
          </div>

          <div class="row">
              <h1 class="text-lg-center" style="margin-top: 50px">KHU NGHỈ DƯỠNG FURAMA ĐÀ NẴNG</h1>
              <div class="col-lg-12" style="margin-top: 50px;margin-left: 12px">

                  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                      <div class="carousel-indicators">
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                  class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                  aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                  aria-label="Slide 3"></button>
                          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                                  aria-label="Slide 4"></button>
                      </div>
                      <div class="carousel-inner">
                          <div class="carousel-item active">
                              <img src="/picture/slide1.jpg" class="d-block w-100 h-85" alt="...">
                              <div class="carousel-caption d-none ">
                                  <p> qddqewesdsadadasdadad</p>
                              </div>
                          </div>
                          <div class="carousel-item">
                              <img src="/picture/slide2.jpg" class="d-block w-100 h-85" alt="...">
                              <div class="carousel-caption d-none ">

                              </div>
                          </div>
                          <div class="carousel-item">
                              <img src="/picture/silde3.jpg" class="d-block w-100 h-85" alt="...">
                              <div class="carousel-caption d-none ">

                              </div>
                          </div>
                          <div class="carousel-item">
                              <img src="/picture/slide4.jpg" class="d-block w-100 h-85" alt="...">
                              <div class="carousel-caption d-none ">

                              </div>
                          </div>
                      </div>
                      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                              data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                      </button>
                      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                              data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                      </button>
                  </div>
              </div>
          </div>
      </div>

      <%@include file="/view/include/footer.jsp"%>

  </div>



<script src="bootstrap-5.0.2-dist/jquery-3.6.0.min.js"></script>
<script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
  </body>
</html>
