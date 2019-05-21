<!-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <!-- start of the cdns for bootstap -->
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <!-- jQuery library -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <!-- Latest compiled JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
      <!-- <link rel ="stylesheet" href ="/resources/css/navbar.css"/>
         <link rel ="stylesheet" href ="/resources/css/countrySelect.css"/> -->
      <!-- <link rel ="stylesheet" href ="/resources/css/user-setting.css"/> -->
      <!-- <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Oldenburg">
         <link rel="shortcut icon" type="image/x-icon" href="/resources/img/dave.jpg" /> -->
      <title>Welcome to Prajwala Laurels </title>
      <script>
         function startTime() {
          var today = new Date();
          var dtutc = today.toUTCString();
          document.getElementById('date_time').innerHTML = dtutc;
          var t = setTimeout(startTime, 500);
         }
         
         $(document).ready(function()){
        	 $("#tenantId").change(function(){
        		 var value =  $("#tenantId").val();
        		 alert(value);
        		 
        		 var tenantId = $("#tenantId option:selected").val();
        		 sessionStorage.tenantId = $("#tenantId option:selected").text.trim();
        	 });
         }
      </script>
      <style media="screen">
         #logo {
         border-radius: 50%;
         }
         .alligator-turtle {
         padding:10px;
         width:1345px;
         height:455px;
         }
      </style>
   </head>
   <body onload = "startTime()">
      <form:form id="myform" action="#" method="post">
         <nav class="navbar navbar-light bg-info">
            <div class="container-fluid">
               <div class="navbar-header">
                  <a class="navbar-brand w-15" href="#">
                  <img id ="logo" src="images\layout.jpg" class="rounded-circle" alt="logo" width=80px;">
                  </a>
               </div>
               <div class ="new-div">
                  <div class = "dropdown-study" id ="study-div">
                     <span id ="study-span" margin-left: 1% ><b>TenantsList:</b></span> &nbsp;
                     <select class="selectClass" name="tenantsList" id="tenantId" value = "">
                        <c:forEach var="tenantList" items="${tenantList}">
                           <option value="${tenantList}">${tenantList}</option>
                        </c:forEach>
                     </select>
                  </div>
                  &nbsp; &nbsp;
                  <div class = "time-div" style="text-align:center;padding:0em 5;">
                     <span class="text"  style ="color:black"id="date_time"></span>
                  </div>
               </div>
            </div>
            <div class="container-fluid" >
            <ul class="nav navbar-nav" >
            <li style ="margin-left:6em"><a id="BuildBatch" href="/register" class="nav-link dropdown-toggle" style ="color:black"><b>Register</b></a></li>
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" style ="color:black" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false" href="#" id="navbarDropdown" >
               <b>Rent Payment</b><i style ="color:black" class="fa fa-caret-down"></i>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
               <a class="dropdown-item" href="#"  style ="color:black">Status</a><br/>
               <a class="dropdown-item" href="#" style ="color:black">Due Amount</a></br>
               <a class="dropdown-item" href="#" style ="color:black">Last Paid</a>
            </li>
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" style ="color:black" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false" href="#" id="navbarDropdown" role="button"
                  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <b>Electricity Payment</b><i style ="color:black" class="fa fa-caret-down"></i>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
               <a class="dropdown-item" href="#"  style ="color:black">Bill Pay</a><br/>
               <a class="dropdown-item" href="#" style ="color:black">Due Date</a></br>
               <a class="dropdown-item" href="#" style ="color:black">No. Of Units</a>
            </li>
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" style ="color:black" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <b>Owner Expenses</b> <i class="fa fa-caret-down"></i>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
               <a class="dropdown-item" href="#" style ="color:black" >OnGoing</a><br/>
               <a class="dropdown-item" href="#" style ="color:black"> Approved Final</a>
            </li>
            <li ><a class ="ul-a" href="#" style ="color:black"><b>Report</b></a></li>
            <li class="nav-item dropdown" style ="margin-left:35em">
               <a class="nav-link dropdown-toggle" style ="color:black" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                  href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <img id ="logo" src="images/login.jpg" class="rounded-circle"  style="width:50px;">
               <i class="fa fa-caret-down"></i>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown"  >
                  <span id ="loginName">
                     Logged In as: 
                     <b>
                        <c:out value="${userName}" />
                     </b>
                  </span>
                  <br/>
                  <span id ="version-span" margin-left:1%>
                     Version:
                     <b>
                        <c:out value="${appVersion}" />
                     </b>
                  </span>
                  <br/>
                  <a class="dropdown-item" href="#" style ="color:black">UserManual</a><br/>
                  <a class="dropdown-item" href="/logout" style ="color:black">Logout</a>
            </li>
            </div>
         </nav>
         
      </form:form>
   </body>