<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Library Management</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
                
        <div class="navBarUser">
            <center><h1 class="welcome1">Welcome Ashar Shahab!</h1></center>
        </div>
       
    <center>
        <div class="dropdown">
            <button class="dropbtn"><%= request.getAttribute("username")%></button>
            <div class="dropdown-content">
                <a href="/edit">Edit</a>
                <a href="/">Books</a>
                <a href="/login">Logout</a>
            </div>
        </div>       
    </center>  
    
        <div class="container">
            <form action="update" method="POST" class="login-box">
                <center><h1 class="texts">Edit Profile</h1></center><br>  
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder=<%= request.getAttribute("fname")%> name="firstname">
                </div>
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder=<%= request.getAttribute("lname")%> name="lastname">
                </div>                
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder=<%= request.getAttribute("age")%> name="age">
                </div>
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder=<%= request.getAttribute("email")%> name="email">
                </div>               
                <div class="input-div">
                    <input type="password" class="input-field" autofocus placeholder="Old Password" name="Opassword">
                </div>
                <div class="input-div">
                    <input type="password" class="input-field" autofocus placeholder="New Password" name="Npassword">
                </div>                  
                <center><button type="submit" class="form-button">Update</button></center>
               
            </form>
            
        </div>
    </body>
</html>
