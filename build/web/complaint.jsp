<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Complaint</title>
    <%@include  file="header.jsp" %>
    
</head>
<body >
<div class="container">
   
            <center><label style="font-size: 30px;margin-top: 10px;"><u>-:Complaint:-</u></label></center><br>
            <form action="complaint" method="post" >
              <div class="row">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>item id:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><input type="text" name="id" class="form-control"></div>
                 <div class="col-md-2"></div>
             </div>  <br>
              <div class="row">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>Complaint date:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><input type="date" class="form-control" name="complaint_date"></div>
                 <div class="col-md-2"></div>
             </div>  <br>
              <div class="row">
                 <div class="col-md-3"></div>
                 <div class="col-md-2" style="font-size:20px;"><b>Complaint:</b></div>
                 <div class="col-md-1"></div>
                 <div class="col-md-4"><textarea rows="10" class="form-control" name="comment"></textarea></div>
                 <div class="col-md-2"></div>
             </div>  <br>

                <center><button onclick="validate()">submit</button></center>
            </form>
        </div>
        <div class="col-md-4"></div>
    
    <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
 <%@include  file="footer.jsp" %>
</body>
</html>