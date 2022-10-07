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
    <style>
        .css{
            margin-left: 80px;
            border-radius: 10px;
        }
        body{
            background: #cff4fc;
        }
    </style>
    <link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>

<%@include file="/view/include/header.jsp"%>
  <h2 class="text-lg-center"> DANH SACH KHACH HANG </h2>

    <div class="row">
    <div class="col-lg-1"></div>
    <div class="col-lg-10">
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">ID </th>
                <th scope="col">HO TEN </th>
                <th scope="col">NGAY SINH</th>
                <th scope="col">SO CMND</th>
                <th scope="col">DIEN THOAI </th>
                <th scope="col">EMAIL  </th>
                <th scope="col"> TRINH DO  </th>
                <th scope="col"> VI TRI   </th>
                <th scope="col"> LUONG  </th>
                <th scope="col"> Bo phan  </th>
                <th scope="col"> SUA  </th>
                <th scope="col"> XOA  </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Lê Văn Bình</td>
                <td>1997-04-09</td>
                <td>654231234</td>
                <td>0934212314</td>
                <td>binhlv@gmail.com</td>
                <td>Dai Hoc</td>
                <td>Le Tan</td>
                <td>7000000</td>
                <td>Hanh chinh</td>
                <td><a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Sua</a></td>
                <td><a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">Xoa</a></td>
            </tr>

            <tr>
                <th scope="row">2</th>
                <td>Nguyễn Bỉnh Phát</td>
                <td>1992-08-08</td>
                <td>nam</td>
                <td>865342123</td>
                <td>0902341231</td>
                <td>phatphat@gmail.com</td>
                <td> Phuc Vu </td>
                <td>6000000</td>
                <td>Phuc vu</td>
                <td><a class="btn btn-primary">Sua</a></td>
                <td><a class="btn btn-primary">Xoa</a></td>

            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Nguyễn Hữu Hà</td>
                <td>1993-01-01</td>
                <td>nam</td>
                <td>543432111</td>
                <td>0941234553</td>
                <td>nhh0101@gmail.com</td>
                <td>Quan Ly</td>
                <td>10000000</td>
                <td>Quan ly </td>
                <td><a class="btn btn-primary">Sua</a></td>
                <td><a class="btn btn-primary">Xoa</a> </td>
            </tr>
            </tbody>
        </table>
        <div class="row">
            <div class="col-lg-4">
                <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">Them Moi Nhan Vien </a>
            </div>
        </div>
    </div>
    <div class="col-lg-1"></div>
</div>



<!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-lg-center" id="exampleModalLabel">SUA THONG TIN NHAN VIEN </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
                <div class="modal-body row">

                    <div class="col-lg-12 "  >
                        <form class="text-dark bg-light justify-content-center">
                            <div  class="css">
                                <label>Ho Ten </label>
                                <input type="text" class="form-control rounded-3 w-75" placeholder="Ho Ten" >
                            </div>

                            <div  class="css">
                                <label>Ngay Sinh </label>
                                <input type="text" class="form-control rounded-3 w-75" placeholder="Ngay Sinh" >
                            </div>

                            <div  class="css">
                                <label>So CMND</label>
                                <input type="text" class="form-control rounded-3 w-75" placeholder="So CMND" >
                            </div>

                            <div  class="css">
                                <label>So Dien Thoai</label>
                                <input type="text" class="form-control rounded-3 w-75" placeholder=" So Dien Thoai" >
                            </div>

                            <div  class="css" >
                                <label>Email</label>
                                <input type="text" class="form-control rounded-3 w-75"  placeholder="Email">
                            </div>

                            <div  class="css">
                                <label> Trinh Do </label>
                                <select style="margin-top: 3px; border-radius: 10px">
                                    <option>Trung Cap </option>
                                    <option> Cao Dang</option>
                                    <option> Dai Hoc</option>
                                    <option> Sau Dai Hoc</option>
                                </select>
                            </div>

                            <div  class="css" id="s2" >
                                <label>Vi Tri </label>
                                 <select style="margin-top: 15px; border-radius: 10px">
                                     <option> Le tan</option>
                                     <option>Phuc vu</option>
                                     <option>Chuyen vien</option>
                                     <option> Giam sat </option>
                                     <option>Quan ly </option>
                                     <option>Giam doc</option>
                                 </select>
                            </div>

                            <div  class="css" id="s3">
                                <label>Luong</label>
                                <input type="text" class="form-control rounded-3 w-75"  placeholder="Luong">
                            </div>
                            <div  class="css" >
                                <label>Bo Phan</label>
                                <select style="margin-top: 15px; border-radius: 10px">
                                    <option>Sale-Marketing</option>
                                    <option>Hanh Chinh</option>
                                    <option>Phuc vu</option>
                                    <option>Quan ly </option>
                                </select>
                            </div>

                        </form>
                    </div>

               </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huy</button>
                <button type="button" class="btn btn-primary">Gui</button>
            </div>
        </div>
    </div>
</div>


        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Ban chac chan muon xoa ?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huy</button>
                        <button type="button" class="btn btn-primary">Dong Y</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title justify-content-center" id="exampleModalLabel2">THEM MOI NHAN VIEN </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body row">
                        <div class="col-lg-12 "  >
                            <form class="text-dark bg-light justify-content-center">
                                <div  class="css">
                                    <label>Ho Ten </label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder="Ho Ten" >
                                </div>

                                <div  class="css">
                                    <label>Ngay Sinh </label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder="Ngay Sinh" >
                                </div>

                                <div  class="css">
                                    <label>So CMND</label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder="So CMND" >
                                </div>

                                <div  class="css">
                                    <label>So Dien Thoai</label>
                                    <input type="text" class="form-control rounded-3 w-75" placeholder=" So Dien Thoai" >
                                </div>

                                <div  class="css" >
                                    <label>Email</label>
                                    <input type="text" class="form-control rounded-3 w-75"  placeholder="Email">
                                </div>

                                <div  class="css">
                                    <label> Trinh Do </label>
                                    <select style="margin-top: 3px; border-radius: 10px">
                                        <option>Trung Cap </option>
                                        <option> Cao Dang</option>
                                        <option> Dai Hoc</option>
                                        <option> Sau Dai Hoc</option>
                                    </select>
                                </div>

                                <div  class="css" id= >
                                    <label>Vi Tri </label>
                                    <select style="margin-top: 15px; border-radius: 10px">
                                        <option> Le tan</option>
                                        <option>Phuc vu</option>
                                        <option>Chuyen vien</option>
                                        <option> Giam sat </option>
                                        <option>Quan ly </option>
                                        <option>Giam doc</option>
                                    </select>
                                </div>

                                <div  class="css" id=>
                                    <label>Luong</label>
                                    <input type="text" class="form-control rounded-3 w-75"  placeholder="Luong">
                                </div>
                                <div  class="css" >
                                    <label>Bo Phan</label>
                                    <select style="margin-top: 15px; border-radius: 10px">
                                        <option>Sale-Marketing</option>
                                        <option>Hanh Chinh</option>
                                        <option>Phuc vu</option>
                                        <option>Quan ly </option>
                                    </select>
                                </div>

                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huy</button>
                        <button type="button" class="btn btn-primary">Gui</button>
                    </div>
                </div>
            </div>
        </div>

</body>
<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</html>
