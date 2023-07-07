<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Library Management</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="navBar">
        <a href="/home">Home</a>
        <a href="/register">Register</a>
        <a href="/login">Login</a>
        <a href="/">Books</a>
        <a href="/admin">Admin</a>
        <a href="/about">About</a>
        </div>
        
    <center>
        <h1 class="welcome">Welcome To Admin Log In Page!</h1>
    </center>
    
        <div class="container">
            <form action="adminLogin" method="POST" class="login-box">
                <center>
                    <h1 class="texts">Admin Log In</h1>
                </center>
                <br>  
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder="username" name="username">
                </div>
                
                <div class="input-div">
                    <input type="password" class="input-field" autofocus placeholder="password" name="password">
                </div>
                
                <center><button type="submit" class="form-button">Log In</button></center>
               
            </form>
            
        </div>
    </body>
</html>
