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
    <center><h1 class="welcome">Welcome To Library Register Page!</h1></center>
        <div class="container">
            <form action="create" method="POST" class="login-box">
                <center><h1 class="texts">Create</h1></center><br>  
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder="first name" name="firstname">
                </div>
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder="last name" name="lastname">
                </div>                
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder="age" name="age">
                </div>
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder="email" name="email">
                </div> 
                <div class="input-div">
                    <input type="text" class="input-field" autofocus placeholder="username" name="username">
                </div>                
                <div class="input-div">
                    <input type="password" class="input-field" autofocus placeholder="password" name="password">
                </div>                
                <center><button type="submit" class="form-button" >Create</button></center>
               <script>

                        var a= <%= request.getAttribute("invalid") %>;
                        if(a==1){
                            window.alert("Username Already Exists!");
                        }
                        if(a==2){
                            window.alert("Fill All The Fields!");
                        }

               </script>
            </form>
            
        </div>
    </body>
</html>
