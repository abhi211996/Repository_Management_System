<%-- 
    Document   : Additem
    Created on : Apr 8, 2018, 8:30:18 AM
    Author     : abhishek
--%>
<!DOCTYPE html>
<html lang="en">
<head>
     
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Item Details</title>
      <%@include  file="header.jsp" %>
    
</head>
<body >

<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <center><label style="font-size: 30px;margin-top: 10px;"><u>-:Item Details:-</u></label></center>
            <form action="additem" method="post" >
                Name:<input type="text" name="item_name" class="form-control"><br>
                Vender Id:<input type="text" name="vendor_id" class="form-control"><br>
                Purchase Date:<input type="text" name="purchase_date" class="form-control"><br>
                Cost:<input type="text" name="cost" class="form-control"><br>
                Installed Location:<input type="text" name="install_location" class="form-control"><br>
                Shipment Cost:<input type="text" name="shipment_cost" class="form-control"><br><br>
                

                <center><button >submit</button></center>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
    
    

   
    <script type="text/javascript" src="jquery-3.3.1.min.js"></script>
   <%@include  file="footer.jsp" %>
</body>
</html>