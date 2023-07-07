<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Library Management</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        
        <div class="navBarUser">
            <center><h1 class="welcome1">Welcome <%= request.getAttribute("firstname") %>  <%= request.getAttribute("lastname") %>!</h1></center>
        </div>
       
    <center>
        <div class="dropdown">
            <button class="dropbtn"><%= request.getAttribute("username") %></button>
            <div class="dropdown-content">
                <a href="/edit">Edit</a>
                <a href="/">Books</a>
                <a href="/login">Logout</a>
            </div>
        </div>       
    </center>        

        <div>
            <h1 class="welcome2"> Your Book List: </h1>
            <center>
                <div class="image-container1">
                </div>
                
                <div class="image-container2">
                </div>
                
                <div class="image-container3">
                </div>
            </center>
        </div>
        
        
        <div>
        <center>
            <div class="image-container4">
            </div>
            
            <div class="image-container5">
            </div>
            
            <div class="image-container6">
            </div>
        </center>
        </div>
    </body>
</html>
