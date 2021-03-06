
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <spring:url value="/resources/images/" var="images"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Admin</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#approve">Approve</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center" >
  <h3 class="margin">Who Am I?</h3>
  <img src="${images}Khyati.jpg" class="img-responsive img-circle margin" style="display:inline" alt="" width="350" height="350">
  <h3>I'm the Admin!</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center" id="approve">
  <h3 class="margin">List of Owners for Approval!!</h3>
  
  <div style="text-align: center; padding-left: 30%"  >
	     <div class="container col-sm-6">
	  	<div class="panel-group" id="accordion">
        <div class="panel panel-default">
        		   	
        <c:forEach items="${ownerEmails}" var="oEmailList">
         <div class="panel-heading">
           <form:form name="ownerEmail" method="post" action="sendEmail" >
               <label class="label label-default" >${oEmailList}</label>
               <input type="hidden" id="hdnEmail" name="hdnEmail" value="${oEmailList}">
                <div>                
                <button class="btn-success btn-sm" type="submit">Approve</button>
               <button class="btn-danger btn-sm" >Reject</button>                
                </div>
                 </form:form>
        	</div>
        	  </c:forEach>
        	 
        	  <br>       	  	
				   </div>
				   </div>
				   </div>	
	    </div>
 
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>Bootstrap Theme Made By <a href="http://www.w3schools.com">www.w3schools.com</a></p> 
</footer>

</body>
</html>
