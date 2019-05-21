<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel ="stylesheet" href ="/css/common.css"/>

<title>Report</title>

<script>

 function startTime() {
  var today = new Date();
  var dtutc = today.toUTCString();
  document.getElementById('date_time').innerHTML = dtutc;
  var t = setTimeout(startTime, 500);
}
</script>
<style media="screen">
  body{
  background-color: #FCFCF3;
  width:1352px;
  }
  #logo {
  border-radius:10px;
  }

  #logo1 {
  border-radius:60px;
  }
  #list{
  list-style-type: none;
  overflow: hidden;
  }
  li a {
  text-align: center;
  }
  li a:hover:not(.active) {
  background-color:#e3f2fd;
  border-radius:35px;
  color:black ;
  text-align: center;
  }

  table,td{
    padding-top: 5px;
    width:30%;
  }

.active{
color:green;
border-radius:35px;

}
</style>
</head>

<body onload = "startTime()">
<form:form action="savereport" method="post">
  <nav class="navbar navbar-light bg-info">
    <div class="container-fluid">

        <div class="navbar-header">
          <a class="navbar-brand w-15" href="homepage">
            <img id ="logo1" src="images\layout.jpg" class="" alt="logo" width="90px" height="90px">
          </a>
        </div>



  </div>
  <div class="row">
    <div class="col-sm-1" ></div>
    <div class="col-sm-5">
      <table>
      <tr>
      <td><label class="text-danger"for="">TenantsList:&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
      <td>
      <select class="form-control" style="width:150px" name="tenantsList" id="studySelect" value = "">
                <c:forEach var="tenantList" items="${tenantList}">
     			        <option value="${tenantList}">${tenantList}</option>
        </c:forEach>
            </select>
    </td>
    </tr>
    </table>
</div>
    <div class="col-sm-4" >
      <label class="text-danger">Date&Time: &nbsp;&nbsp;</label>
      <span class="text-success" ><b id="date_time"></b></span></div>

  <div class="col-sm-2">
    <li class="nav-item" id="list">
      <a class="nav-link" href="#" data-toggle="dropdown"><img id ="logo" src="images\login.jpg"   style="width:50px;"><span class="caret"></span></a>
      <ul class="dropdown-menu">
      <li > <a  class="dropdown-content"href="#">Logged In as: </a></li>

      <li > <a class="dropdown-content" href="#">Version:</a></li>

      <li > <a class="dropdown-content" href="#">UserManual</a></li>
      <li class="divider" ></li>
      <li > <a  class="dropdown-content" href="/logout" ><b class="text-danger">Logout</b></a></li>
        </ul>
    </li>


  </div>
  </div>

    <div class="container-fluid" >
        <ul class="nav navbar-nav" >
          <li class="nav-item" style ="margin-left:6em">
            <a class="nav-link" href="/registerpage"><b>Register</b></a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="/rentpayment"><b>Rent Payment</b></a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="/electricity"><b>Electricity Payment</b> </a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="/expenses"><b>Building Expenses</b> </a>

          </li>
          <li class="nav-item" >
            <a class="nav-link active" href="/report"><b>Reports</b> </a>

          </li>





    </div>

  </nav>
  <div class="col-md-4">

  </div>
  <div class=" col-md-4" align=center >


  <!-- <h2 align=center>Report</h2> -->
 <div class="container-fluid">
 <br><br>
 <div class="row">




 <table  class="" align=center style="width:80%;">
 <tbody>
 <tr>
 <td class="text-danger"><b>Name</b></td>
 <td><input type="text" class="form-control" id="" placeholder="Enter Name *" value="" />
 </td>
 </tr>
 <tr>
 <td class="text-danger"><b>Queries</b></td>
 <td><input type="text" class="form-control" id="" placeholder=" Enter Queries *" value="" />
 </td>
 </tr>


 <tr>
 <td class="text-danger"><b>Comments</b></td>
 <td><textarea name="name" class="form-control" placeholder="Enter Your Comments"  rows="3" cols=""></textarea>
 </td>
 </tr>


 </table>


 </div>


 </div><br><br>

 <div class="col-md-3">

 </div>
 <div class="col-md-6">


 <tr>
 <td></td>
 <td>
   <button type="button" class="btn btn-info form-control " name="button">Save</button>
   </td>
 </tr>
 </div>

 <div class="col-md-3">

 </div>
<div class="col-md-2">

</div>
</div>
</form:form>
 </body>
 </html>
