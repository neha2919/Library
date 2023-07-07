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
            <button class="dropbtn">Ashar2045</button>
            <div class="dropdown-content">
                <a href="/admin">Logout</a>
            </div>
        </div>
    </center>

        <div class="container">
            <div class="login-box">
                <center>
                    <h1 class="texts">Select Option:</h1>
                </center>
                <br>

                <center><button type="submit" class="form-button" onclick="getNames();">Get Users</button></center>
                <br>
                <center><button type="submit" class="form-button" onclick="addBook();">Add Book</button></center>

            </div>

        </div>
        <center>
            <div id="scroll">

                <div id="add-book-box">
                    <form action="/saveBook" id="book">
                        <div class="inner">
                            <input type = "text" class="myFile" autofocus placeholder="Book Name" name="bookname"><br>
                        </div>
                        <div class="inner">
                            <input type="file" class="myFile" name="filename"><br>
                        </div>
                        <center><button type="submit" class="form-button" onclick="saveBook();">Confirm</button></center>
                    </form>
                </div>

                <div id="check-user-box">

                </div>

            </div>
        </center>

    <center>
        <button type="submit" class="close-button" onclick="closePanel();">Close</button>
    </center>

        <script>

            var temp = '<%= request.getAttribute("temp") %>';
            var array = temp.split(',');

            function getNames(){

                document.getElementById("scroll").style.display='block';
                document.getElementById("add-book-box").style.display='none';
                document.getElementById("check-user-box").style.display='block';

                var e = "";

                for (var j=0; j<array.length; j++)
                {
                    e += array[j] + "<br/>";
                }
                document.getElementById("check-user-box").innerHTML = e;
            }

            function closePanel(){
                document.getElementById("check-user-box").innerHTML = 'none';
                document.getElementById("scroll").style.display='none';
            }

            function addBook(){
                document.getElementById("scroll").style.display='block';
                document.getElementById("add-book-box").style.display='block';
                document.getElementById("check-user-box").style.display = 'none';
            }

            function saveBook(){
                window.location.href="/adminLogin";
            }

        </script>
    
    </body>
</html>
