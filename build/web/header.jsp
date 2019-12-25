<%-- 
    Document   : header
    Created on : Apr 9, 2018, 1:07:00 AM
    Author     : abhishek
--%>
<html>

<head>
    <title>
        IT Repository Management
    </title>
    <link href="images/icon_32.jpg" rel="icon" type="image/jpg" />
    
    <script src="show_hide.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Repository Management System</a>
    </div>
    <ul class="nav navbar-nav navbar-right" >
     
      
      <li style='padding: 2px;'><a href="Additem.jsp">Add item</a></li>
                    <li style='padding: 2px;'><a href="addvender.jsp">Add Vendor</a></li>
                    <li style='padding: 2px;'><a href="delete.jsp">Delete</a></li>
                    <li style='padding: 2px;'><a href="viewitem.jsp">View Item</a></li>
                    <li style='padding: 2px;'><a href="viewvendor.jsp">View vendor</a></li>
                    <li style='padding: 2px;'><a href="view_complaint.jsp"> View Complaints</a></li>
                    <li style='padding: 2px;'><a href="search.jsp">Search</a></li>
                    <li style='padding: 2px;'><a href="complaint.jsp">Complaints</a></li>
    
    </ul>
  </div>
</nav>

    
    
    <footer style='position: fixed; bottom: 0px; padding: 10px; font-align: center; color: #920131;'>
    </footer>
</body>

</html>