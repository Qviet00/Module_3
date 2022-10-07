<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
<html>
<head>
    <title>Title</title>
    <style>
        .css{
            margin-top: 30px;
            justify-items: center;
            align-items: center;
        }
    </style>
</head>
<body>
 <div class="container-fluid">
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8 w-70" >
            <h3 class="text-lg-center"> THE MOI HOP DONG </h3>
            <form   class="form-control">
                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Ngay bat dau </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="date" class="form-control rounded-3 w-75">
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>

                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Ngay ket thuc </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="date" class="form-control rounded-3 w-75"  >
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>

                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Tien gui  </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" class="form-control rounded-3 w-75 " placeholder="Tien gui"  >
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>

                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Tong tien   </label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" class="form-control rounded-3 w-75 " placeholder="Tong tien"  >
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>

                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Chon khack hang   </label>
                        </div>
                        <div class="col-lg-8">
                            <select>
                                <option>Diamond</option>
                                <option>Platium</option>
                                <option>Gold</option>
                                <option>Sivler</option>
                                <option>Member</option>
                            </select>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>

                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Chon dich vu   </label>
                        </div>
                        <div class="col-lg-8">
                            <select>
                                <option>Villa</option>
                                <option>House</option>
                                <option>Room</option>

                            </select>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>


                <div  class="css">
                    <div class="row">
                        <div class="col-lg-2">
                            <label >Dich vu di kem </label>
                        </div>
                        <div class="col-lg-8">
                            <span> <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">+</a></span>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </div>
               <div class="row">
                   <div class="col-lg-3"></div>
                   <div class="col-lg-3 text-light"><a class="btn btn-primary"> huy</a> </div>
                   <div class="col-lg-3 text-light"><a class="btn btn-primary">Tao</a> </div>
                   <div class="col-lg-3"></div>
               </div>
            </form>
        </div>
        <div class="col-lg-2"></div>
    </div>
 </div>

 <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalLabel1">Danh sach dich vu di kem </h5>
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
                 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huy</button>
                 <button type="button" class="btn btn-primary">Them</button>
             </div>
         </div>
     </div>
 </div>
</body>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
