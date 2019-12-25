<%-- 
    Document   : index
    Created on : Apr 8, 2018, 8:26:13 AM
    Author     : abhishek
--%>
<!DOCTYPE html>
<html>

<head>
    
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    <title>
        IT Repository Management
    </title>
  
    <style>
        .form{
            background-color: black;
            font-size:15px;
            color:white;
        }
    </style>
     
    <style type="text/css">
           #header{
            color:white;
            background-color: #112651;
            height: 130px;
            font-size: 40px;
            
         }
     </style>
</head>

<body>
    
    
    <div class="container-fluid" id="header" >
  <center>Motilal Nehru National Institute of Technology Allahabad
            <label style="font-size:30px;">Computer Science and Engineering Department</label></center>
           
    </div><br>
<center><h1>Repository Management System</h1></center>

<div class="container-fluid">
    <div class="row">
    <div class="col-md-8">
<div id="myCarousel" class="carousel slide" data-ride="carousel" style=" height: 600px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="pic/1.jpg" alt="Civil Lines" width="1200" height="200">
        
      </div>

      <div class="item">
        <img src="pic/d.jpg" alt="sangam" width="1200" height="200">
         
      </div>
    
      <div class="item">
        <img src="pic/z.jpg" alt="Sangam" width="1200" height="200">
       
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
        
<div class="col-md-3">
    <form action="login" method="post">
  <h3><u>Login Form</u></h3><br>
  <label>user name:</label><br>
  <input type="text" name="user_id" class="form-control"><br>
  <label>password:</label><br>
  <input type="password" name="password" class="form-control"><br>
  <button class="btn btn-block form">submit</button>
    </form>
</div>
 </div>
</div>
      <%@include  file="footer.jsp" %>
</body>

</html>