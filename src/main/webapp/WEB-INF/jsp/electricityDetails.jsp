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
                  <a class="nav-link" href="/registerpage"><b>Register</b></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="/rentpayment"><b>Rent Payment</b></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link active" href="/electricity"><b>Electricity Payment</b> </a>
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
   <td  id="td1"class="text-danger"><b>Name</b></td>

   <td><input type="text" class="form-control" id="name" name="name" placeholder="Enter Name " value="" /></td>
   <td id="td1"></td>
    <td id="td1" class="text-danger"><b>Last Paid</b></td>
    <td><input type="text" class="form-control" id="lastPaid" name="lastPaid" placeholder=" Enter Last Paid" value="" />
    </td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>SCNO</b></td>
   <td><input type="text" class="form-control" id="scno" placeholder=" Enter SCNO " value="" />
   </td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Due Amount</b></td>
   <td><input type="text" class="form-control" id="dueAmount" name="dueAmount" placeholder=" Enter Due Amount" value="" />
   </td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>Units</b></td>
   <td><input type="text" class="form-control" id="units" name="units" placeholder=" Enter Units" value="" />
   </td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Comments</b></td>
   <td><textarea class="form-control" name="comments" id="comments" rows="1" cols=""></textarea>
   </td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>Electricity Bill</b></td>
   <td><input type="text" class="form-control" id="electricityBill" name="electricityBill" placeholder=" Enter Electricity Bill" value="" />
   </td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Create Date</b></td>
   <td><input type="date" class="form-control" id="createDate" name="createDate" placeholder=" Enter Create Date" value="" />
   </td>
 </tr>
 <tr>
   <td   id="td1" class="text-danger"><b>Payment Date</b></td>
   <td><input type="date" class="form-control" id="paymentDate" name="paymentDate" placeholder=" Enter Payment Date" value="" />
   </td>
   <td id="td1"></td>
   <td   id="td1" class="text-danger"><b>Modified Date</b></td>
   <td><input type="date" class="form-control" id="modifiedDate" name="modifiedDate" placeholder=" Enter Modified Date" value="" />
   </td>
 </tr>

</table>
<br><br><br>
<div class="col-md-5">

</div>
<div class="col-md-2">
<button type="button" class="btn btn-info form-control" name="button">Save</button>
</div>
<div class="col-md-5">

</div>
   </form:form>
</body>
</html>
