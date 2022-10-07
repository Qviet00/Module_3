<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
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
</head>
<body>
<%@include file="/view/include/header.jsp"%>
<div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6 "  style="margin-top: 100px" >
        <form class="text-dark bg-light justify-content-center align-items-lg-center" style="box-shadow: 10px 10px black; border-radius: 10px; border: 10px" action="/view?action=add" method="post">
                  <h5 class="text-lg-center"> THEM MOI KHACH HANG </h5>
            <div  class="css">
                <label>Ho Ten </label>
                <input type="text" class="form-control rounded-3 w-75"  name="name" placeholder="Ho Ten" ${customerVali.name} >
                     ${nameErr}
            </div>
            <div  class="css">

                <label>Ngay Sinh </label>
                <input type="date" class="form-control rounded-3 w-75" name="birth" placeholder="Ngay Sinh" >
                    ${birthErr}
            </div>

            <div  class="css">
                <label>Gioi Tinh</label>
                  <select name="gender">
                      <option value="true">Nam</option>
                      <option value="false">Nu</option>
                  </select>
            </div>

            <div  class="css">
                <label>CMND</label>
                <input type="text" class="form-control rounded-3 w-75" name="iden" placeholder=" CMND" >
                      ${idenErr}
            </div>

            <div  class="css" >
                <label>So Dien Thoai</label>
                <input type="text" class="form-control rounded-3 w-75" name="phone" placeholder="So Dien Thoai">
            </div>
            <div  class="css" >
                <label>Email</label>
                <input type="text" class="form-control rounded-3 w-75" name="email" >
                    ${emailErr}
            </div>

            <div  class="css">
                <label> Loai khach </label>

                 <select style="margin-top: 3px; border-radius: 10px" name="type">
                     <c:forEach var="list" items="${listType}">
                         <option value="${list.idType}">   ${list.nameType} </option>
                     </c:forEach>
                 </select>

            </div>

            <div  class="css" id="s2">
                <label> Dia Chi </label>
                <input type="text" class="form-control rounded-3 w-75" name="address" placeholder="Dia Chi">
            </div>

            <p></p>
            <button type="submit" class="btn btn-primary justify-content-center css">Submit</button>

        </form>
    </div>

    <div class="col-lg-3 "></div>
</div>

<script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
