<%-- 
    Document   : search
    Created on : Apr 8, 2018, 8:33:47 AM
    Author     : abhishek
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Search</title>
    <%@include  file="header.jsp" %>
     <style type="text/css">
         .tabs{
            font-size:25px;
         }
         .inputlevel{
            font-size: 20px;
            margin-right: 25px;
         }
           
     </style>
</head>
<body >
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <center><label style="font-size: 30px;margin-top: 10px;"><u>-:Search:-</u></label></center>
            <form action="searchitem.jsp" method="post" >
                <u class="tabs">Search by item:-</u><br><br>
                <label class="inputlevel">item id:-</label><input type="text" name="pid" ><button style="margin-left:30px; ">submit</button><br><br><br>
                
            </form>
             <form action="searchlocation.jsp" method="post"  >
                <u class="tabs">Search by Location:-</u><br><br>
                <label class="inputlevel">Location:-</label><input type="text" name="locationname" ><button style="margin-left:30px; ">submit</button><br><br><br>
                
            </form>
             <form action="searchvendor.jsp" method="post"  >
                <u class="tabs">Search by Vendor:-</u><br><br>
                <label class="inputlevel">Vendor Id:-</label><input type="text" name="vendor_id" ><button style="margin-left:30px; ">submit</button>
                
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
    
</div>
    
    

  
    <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
   <%@include  file="footer.jsp" %>
</body>
</html>