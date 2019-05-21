 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Prajwala Laurels </title>


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

 <!-- jQuery library -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

 <!-- Latest compiled JavaScript -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<!--  <link rel ="stylesheet" href ="/resources/css/navbar.css"/> -->
 <link rel ="stylesheet" href ="/css/common.css"/>

<script>

 function startTime() {
  var today = new Date();
  var dtutc = today.toUTCString();
  document.getElementById('date_time').innerHTML = dtutc;
  var t = setTimeout(startTime, 500);
}
 $(document).ready(function(){
	//alert("document ready");
	 $("#rentId").click(function(e){
		 e.preventDefault();
		   var tenantName=$("#tenantSelect option:selected").val();
		   alert("tenantName"+tenantName);
		   window.location = $(this).attr('href')+"?tenantId="+tenantName;
		 $.ajax({
			 type: "POST",  
	         dataType: "json",
	         contentType: "application/json; charset=utf-8", 
	         success: function (response) {
	        	 console.log(response);
	           
		 	}
		 })
	 })
 });
</script>
</head>

<body onload = "startTime()">
<form:form action="" method="post">
 <nav class="navbar navbar-light bg-info">
    <div class="container-fluid">

        <div class="navbar-header">
          <a class="navbar-brand w-15" href="homepage">
            <img id ="logo1" src="images/layout.jpg" class="" alt="logo" width="90px" height="90px">
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
      <a class="nav-link" href="#" data-toggle="dropdown"><img id ="logo" src="images/login.jpg"   style="width:50px;"><span class="caret"></span></a>
      <ul class="dropdown-menu">
      <li> <a href="#">Logged In as: </a></li>

      <li> <a href="#">Version:</a></li>

      <li> <a href="#">UserManual</a></li>
      <li class="divider" ></li>
      <li> <a href="/logout" ><b class="text-danger">Logout</b></a></li>
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
            <a class="nav-link " href="/rentpayment"><b>Rent Payment</b></a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="/electricity"><b>Electricity Payment</b> </a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="/expenses"><b>Building Expenses</b> </a>

          </li>
          <li class="nav-item" >
            <a class="nav-link" href="/report"><b>Reports</b> </a>

          </li>






    </div>

  </nav>
  <img src="images\Prajwalalaurel.jpg" alt="building" id="background" class="img-fluid" alt="Responsive image">
</form:form>
 </body>
</html>
       