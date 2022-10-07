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

<%@include file="/view/include/header.jsp"%>
<h2 class="text-lg-center"> DANH SACH DICH VU </h2>
<div class="row">
    <div class="col-lg-12">
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col"> DICH VU</th>
                <th scope="col">KHACH HANG</th>
                <th scope="col">NGAY BAT DAU</th>
                <th scope="col">NGAY KET THUC </th>
                <th scope="col">TIEN DAT COC </th>
                <th scope="col"> TONG TIEN  </th>
                <th scope="col"> CAC DICH VU DI KEM</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Room Twin1</td>
                <td>Nguyen Thi Hao</td>
                <td>18/02/2020</td>
                <td>20/02/2020</td>
                <td> 0  </td>
                <td> 100000D </td>
                <td>
                    <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">+</a></span>
                    <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">DICH VU DI KEM </a></span>
                </td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Room Twin1</td>
                <td>Truong Dinh Nghe </td>
                <td>14/02/2020</td>
                <td>27/02/2020</td>
                <td> 100000  </td>
                <td> 100000D </td>
                <td>
                    <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">+</a></span>
                    <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">DICH VU DI KEM </a></span>
                </td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Villa Beach</td>
                <td>Nguyen Thi Thuy Tien</td>
                <td>18/06/2020</td>
                <td>20/06/2020</td>
                <td> 500000  </td>
                <td> 100000D </td>
                <td>
                    <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">+</a></span>
                    <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">DICH VU DI KEM </a></span>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>




<!-- Modal -->
        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel1"> Them moi hop dong chi tiet  </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                        <div class="modal-body">
                                <div  class="css">
                                    <label>Ma Hop Dong Chi tiet</label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder="Dien Tich Su Dung" >
                                </div>

                                <div  class="css">
                                    <label>Ma Hop Dong</label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder="Chi Phi" >
                                </div>

                                <div  class="css">
                                    <label> Dich vu di kem </label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder=" So Nguoi Toi Da" >
                                </div>


                        </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huy</button>
                        <button type="button" class="btn btn-primary">Gui</button>
                    </div>
                </div>
            </div>
        </div>


          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Danh sach dich vu di kem </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                        <div class="modal-body">
                            <ol>
                                <li>Villa Beach Front</li>
                                <li>House Princess 01</li>
                                <li>Room Twin 01</li>
                                <li>Villa No Beach Front</li>
                                <li>House Princess 02</li>
                                <li>Room Twin 02</li>
                            </ol>
                        </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"></button>
                        <button type="button" class="btn btn-primary"></button>
                    </div>
                </div>
            </div>
        </div>


<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
