<%-- 
    Document   : addvender
    Created on : Apr 8, 2018, 8:33:05 AM
    Author     : abhishek
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>add vender</title>
     <%@include  file="header.jsp" %>
    
             
     
      
</head>
<body>
 
<div class="container">
   
            <center><label style="font-size: 30px;margin-top: 10px;"><u>-:Add Vender:-</u></label></center><br>
            <form action="addvender" method="post">
              <div class="row">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>Name:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><input type="text" name="name" class="form-control" ></div>
                 
             </div>  <br>
              <div class="row">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>Address:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><input type="text" name="address" class="form-control" ></div>
                
             </div>  <br>
              <div class="row">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>Mobile Number:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><input type="text" name="mobile" class="form-control" ></div>
                 
             </div>  <br>
              <div class="row" style="margin-bottom:20px;">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>Email:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><input type="email" name="email" class="form-control" ></div>
                 
             </div>     <br>
            
                <center><button onclick="validate()">submit</button></center>
             </form>
        </div>
        <div class="col-md-4"></div>
   <%@include  file="footer.jsp" %>
</body>
</html>