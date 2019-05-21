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
      <title>ElectricityBill</title>
      <script>
         function startTime() {
          var today = new Date();
          var dtutc = today.toUTCString();
          document.getElementById('date_time').innerHTML = dtutc;
          var t = setTimeout(startTime, 500);
         }
      </script>

  <!-- <style media="screen">
    table, td {
  	padding-top: 7px;
  }

  td {
  	width: 200px;
  }

  #td1 {
  	width: 120px;
  }

  #tbl {
  	width: 120px;
  }

  </style> -->
   </head>
   <body onload = "startTime()">
      <form:form action="saveelectricity" method="post">
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
                  <table id="tbl">
                     <tr>
                        <td id="tbl"><label class="text-danger"for="">TenantsList:&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td id="tbl">
                           <select class="form-control" style="width:150px" name="tenantsList" id="tenantSelect" value = "">
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
                  <span class="text-success" ><b id="date_time"></b></span>
               </div>
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
                  <a class="nav-link active" href="/registerpage"><b>Register</b></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="/rentpayment"><b>Rent Payment</b></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link " href="/electricity"><b>Electricity Payment</b> </a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="/expenses"><b>Building Expenses</b> </a>
               </li>
               <li class="nav-item" >
                  <a class="nav-link" href="/report"><b>Reports</b> </a>
               </li>
            </div>
         </nav><br><br>
        <table align=center >
   <tbody>
 <tr>
   <td  id="td1"class="text-danger"><b>Tenant Name</b></td>

   <td><input type="text" class="form-control"
                                 id="tenantName" placeholder="Enter Tenant Name *" name="tenantName" /></td>
<td id="td1"></td>
    <td id="td1" class="text-danger"><b>Joining Date</b></td>

    <td ><input type="date" class="form-control"
                                name="joiningDate" id="joiningDate" /></td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>Address</b></td>
   <td><textarea name="address" class="form-control"
                                 placeholder="Enter  address *" id="address" rows="1" cols=""></textarea>
                              </td>
                              <td id="td1"></td>
   <td  id="td1" class="text-danger"><b>Advance Payment</b></td>
   <td ><input type="text" class="form-control"
                                 id="advancePayment" name="advancePayment"
                                 placeholder=" Enter advancePayment*" /></td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>Mobile </b></td>
   <td><input type="text" class="form-control" id="mobile"
                                 name="mobile" placeholder=" Enter Phone *" value="" /></td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Rent</b></td>
   <td><input type="text" class="form-control" id="rent"
                                 name="rent" placeholder=" Enter rent amount*" /></td>
 </tr>

 <tr>
   <td   id="td1" class="text-danger"><b>Email</b></td>
   <td><input type="email" class="form-control" id="email"
                                    name="email" placeholder=" Enter Email *" value="" /></td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Comments</b></td>
   <td><textarea name="comments" class="form-control"
                      placeholder="Enter  comments *" id="comments" rows="1"
                      cols=""></textarea></td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>Floor Type</b></td>
   <td>
                                 <select class="form-control" 
                                    id="floor" name="floorList">
                                    <c:forEach var="floorList" items="${floorList}">
                                       <option value="${floorList}">${floorList}</option>
                                    </c:forEach>
                                 </select>
                              </td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Status</b></td>
   <td><input type="text" class="form-control" id="status"
                                 name="status" placeholder=" Enter Floor*" value="" /></td>
 </tr>
 <tr>


   <td   id="td1" class="text-danger"><b>Flat Type</b></td>
   <td>
                                 <select class="form-control"
                                    id="flat" name="flatList">
                                    <c:forEach var="flatList" items="${flatList}">
                                       <option value="${flatList}">${flatList}</option>
                                    </c:forEach>
                                 </select>
                              </td>
                              <td id="td1"></td>
                              <td   id="td1" class="text-danger"><b>Created Date</b></td>
                              <td><input type="date" class="form-control" id="createdDate" />
                                              </td>
 </tr>
<tr>

  <td   id="td1" class="text-danger"><b>Created Date</b></td>
  <td><input type="date" class="form-control" id="createdDate" />
                  </td>
</tr>
</table>
<br><br><br>
<div class="col-md-5">

</div>
<div class="col-md-2">
<button type="submit" class="btn btn-info form-control" name="button">Save</button>
</div>
<div class="col-md-5">

</div>
   </form:form>
</body>
</html>
