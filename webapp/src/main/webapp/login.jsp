<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Login MUJYY</title>
</head>
<body>
    
 <div class="container">
    <div class="box">
        <!------------------ Login Box --------------------->
        <div class="box-login" id="login">

            <div class="top-header">
                <h3>Haii</h3>
                <small>Yuk Login.</small>
            </div>
            <div class="input-group">
                <div class="input-field">
                    <input type="text" class="input-box" id="logEmail" required>
                    <label for="logEmail">Email address</label>
                </div>
                <div class="input-field">
                    <input type="password" class="input-box" id="logPassword" required>
                    <label for="logPassword">Password</label>
                     <div class="eye-area">
                            <div class="eye-box" onclick="myLogPassword()">
                                <i class="fa-regular fa-eye" id="eye"></i>
                                <i class="fa-regular fa-eye-slash" id="eye-slash"></i>
                            </div>
                     </div>
                </div>
                <div class="remember">
                    <input type="checkbox" id="formCheck" class="check">
                    <label for="formCheck"> Remember Me</label>
                </div>
                <div class="input-field">
                    <input type="submit" class="input-submit" value="Sign In">
                </div>
                <div class="forgot">
                    <a href="index.jsp">Kembali ke halaman utama?</a>
                </div>
            </div>

        </div>

     <!-------------------- Register --------------------------->
      
     <div class="box-register" id="register">

        <div class="top-header">
            <h3>Sign Up, Now</h3>
            <small>We are happy to have you with us.</small>
        </div>
        <form action="action/register.php" class="input-group">
            <div class="input-field">
                <input type="text" class="input-box" id="regUser" required name="username">
                <label for="regUser">Username</label>
            </div>
            <div class="input-field">
                <input type="text" class="input-box" id="regEmail" required name="email">
                <label for="regEmail">Email address</label>
            </div>
            <div class="input-field">
                <input type="password" class="input-box" id="regPassword" required name="password">
                <label for="regPassword">Password</label>
                 <div class="eye-area">
                        <div class="eye-box" onclick="myRegPassword()">
                            <i class="fa-regular fa-eye" id="eye-2"></i>
                            <i class="fa-regular fa-eye-slash" id="eye-slash-2"></i>
                        </div>
                 </div>
            </div>
            <div class="remember">
                <input type="checkbox" id="formCheck-2" class="check">
                <label for="formCheck-2"> Remember Me</label>
            </div>
            <div class="input-field">
                <button type="submit" class="input-submit" value="Sign In">Register</button>
            </div>
            
        </form>

    </div>

    <!------------------------ Switch -------------------------->
      
    <div class="switch">
        <a href="#" class="login" onclick="login()">Login</a>
        <a href="#" class="register" onclick="register()">Register</a>
        <div class="btn-active" id="btn"></div>
    </div>

    </div>
 </div>
<script>

     var x = document.getElementById('login');
     var y = document.getElementById('register');
     var z = document.getElementById('btn');
 
     function login(){
        x.style.left = "27px";
        y.style.right = "-350px";
        z.style.left = "0px";
     }
     function register(){
        x.style.left = "-350px";
        y.style.right = "25px";
        z.style.left = "150px";
     }

   // view password codes
   
   
   function myLogPassword(){

    var a = document.getElementById('logPassword');
    var b = document.getElementById('eye');
    var c = document.getElementById('eye-slash');

    if(a.type === "password"){
        a.type = "text"
        b.style.opacity = "0";
        c.style.opacity = "1";

    }else{    
        a.type = "password"
        b.style.opacity = "1";
        c.style.opacity = "0";

    }

   }
   
   
   function myRegPassword(){

var d = document.getElementById('regPassword');
var b = document.getElementById("eye-2");
var c = document.getElementById("eye-slash-2");

if(d.type === "password"){
    d.type = "text"
    b.style.opacity = "0";
    c.style.opacity = "1";

}else{    
    d.type = "password"
    b.style.opacity = "1";
    c.style.opacity = "0";

}

}
</script>
</body>
</html>