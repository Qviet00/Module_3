<%--
  Created by IntelliJ IDEA.
  User: ABC
  Date: 8/5/2022
  Time: 10:24 AM
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
    </style>
    <link rel="stylesheet" href="/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>

<%@include file="/view/include/header.jsp"%>

<div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6 " >
        <form class="text-dark bg-light" style="box-shadow: 10px 10px 10px 10px black;
        border-radius: 10px; margin-top: 50px" action="/viewFacility?action=update" method="post">
            <h1 class="text-lg-center"> SUA DICH VU  </h1>

            <div class="css">
                <input hidden value="${facility.facilityCode}" id="check" name="idFac" >
            </div>

            <div  class="css">
                <label>Ten Dich Vu</label>
                <input type="text" class="form-control rounded-3 w-75" name="name" value="${facility.name}"  >
            </div>

            <div  class="css">
                <label>Dien Tich Su Dung</label>
                <input type="number" class="form-control rounded-3 w-75"  name="area" value="${facility.area}" >
            </div>

            <div  class="css">
                <label>Chi Phi</label>
                <input type="number" class="form-control rounded-3 w-75" name="cost" value="${facility.cost}" >
            </div>

            <div  class="css">
                <label>So Nguoi Toi Da</label>
                <input type="number" class="form-control rounded-3 w-75" name="people" value="${facility.maxPeople}" >
            </div>

            <div  class="css" >
                <label> Ma Kieu Thue</label>
                <select name="rent" value="0">
                    <option> chon </option>
                    <c:forEach var="list" items="${list}">
                    <option value="${list.rentCode}">${list.nameRent}</option>
                    </c:forEach>
                </select>
            </div>
            <div  class="css">
                <label>Ma Loai  dich Vu</label>
                <input type="text" class="form-control rounded-3 w-75" name="typecodeF" value="${facility.facilityTypeCode}"  >
            </div>

            <div  class="css" id = "s1" style="display: none">
                <label>Tieu chuan Phong</label>
                <input type="text" class="form-control rounded-3 w-75"  name="roomstandar"  value="${facility.roomStandar}"  >
            </div>

            <div  class="css" id="s2" style="display: none">
                <label>Tien Nghi Khac</label>
                <input type="text" class="form-control rounded-3 w-75"  name="anyelse"  value="${facility.anyElse}" >
            </div>

            <div  class="css" id="s3" style="display: none">
                <label>Dien Tich Ho Boi</label>
                <input type="number" class="form-control rounded-3 w-75"  name="areapool" value="${facility.areaPool}" >
            </div>

            <div  class="css" id="s4" style="display: none">
                <label>So Tang</label>
                <input type="number" class="form-control rounded-3 w-75"  name="flood"  value="${facility.flood}" >
            </div>

            <div  class="css" id="s5" style="display: block">
                <label>Dich vu mien phi di kem </label>
                <input type="text" class="form-control rounded-3 w-75"  name="freeservice"  value="${facility.serviceFree}" >
            </div>
            <p></p>
            <button type="submit" class="btn btn-primary text-lg-center css">Submit</button>

        </form>
    </div>

    <div class="col-lg-3 "></div>
</div>

<script src="/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
<script>
    let code = document.getElementById("check").value;

    window.onload=  function (){
        addNew(code);
    }
        function addNew(value){
        switch (value) {
            case "1":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "block"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                document.getElementById("s5").value = "";
                break
            case "2":
                document.getElementById("s1").style.display = "block"
                document.getElementById("s2").style.display = "block"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "block"
                document.getElementById("s5").style.display = "none"
                break;
            case "3":
                document.getElementById("s1").style.display = "none"
                document.getElementById("s2").style.display = "none"
                document.getElementById("s3").style.display = "none"
                document.getElementById("s4").style.display = "none"
                document.getElementById("s5").style.display = "block"

                break;
        }

    }
</script>
</html>
