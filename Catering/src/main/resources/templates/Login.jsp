<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login V1</title>
  
  
  <meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
  <style>*{
  margin: 0;
  padding: 0;
  box-sizing:border-box;
}
body{
  font-family: 'Poppins', sans-serif;
  display: flex;
  align-items:center;
  justify-content: center;
  color:#333C48;
}
.alert{
	  position: fixed;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f44336;
            z-index: 5;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 18px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            display: none;
            border-radius:1rem;
  min-width:400px;
	

  
   
}
.content{
  display: flex;
  align-items:center;
}
.icon{
  padding: 0.5rem;
  margin-right: 1rem;
  border-radius:39% 61% 42% 58% / 50% 51% 49% 50%;
  box-shadow:
  0px 3.2px 13.8px rgba(0, 0, 0, 0.02),
  0px 7.6px 33.3px rgba(0, 0, 0, 0.028),
  0px 14.4px 62.6px rgba(0, 0, 0, 0.035),
  0px 25.7px 111.7px rgba(0, 0, 0, 0.042),
  0px 48px 208.9px rgba(0, 0, 0, 0.05),
  0px 115px 500px rgba(0, 0, 0, 0.07)
}
.close{
  background-color: transparent;
  border:none;
  outline:none;
  transition:all 0.2s ease-in-out;
  padding: 0.75rem;
  border-radius:0.5rem;
  cursor:pointer;
  display: flex;
  align-items:center;
  justify-content: center;
}
.close:hover{
  background-color: #fff;
}

.success{
  background-color: rgba(62, 189, 97,0.2);
  border:2px solid #3ebd61;
}
.success .icon{
  background-color:#3ebd61;
}
.info{
  background-color: rgba(0, 108, 227,0.2);
  border:2px solid #006CE3;
}
.info .icon{
  background-color: #006CE3;
}
.warning{
  background-color: rgba(239, 148, 0, 0.2);
  border:2px solid #EF9400;
}
.warning .icon{
  background-color: #EF9400;
}

.danger{
  background-color: rgba(236, 77, 43, 0.2);
  border:2px solid #EF9400;
}
.danger .icon{
  background-color: #EC4D2B;
}</style>
  
    <style>
        /* Alert box styles */
        .alert-box {
            position: fixed;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #f44336;
            z-index: 5;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 18px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            display: none;
        }

        /* Countdown styles */
        .countdown {
            font-size: 20px;
            color: #fff;
            margin-top: 10px;
            color: Red; font-weight: bold; 
        }
        
         .countdown1 {
            font-size: 20px;
            color: #fff;
            margin-top: 10px;
            color: Red; font-weight: bold; 
            display: none;
        }
    </style>
  <style>
    /* Style for the countdown container */
    #countdown {
        font-family: Arial, sans-serif;
        font-size: 16px;
        text-align: center;
        margin-top: 20px;
    }
    
     
    /* Style for the countdown text */
    #countdown span {
        font-weight: bold;
        color: #333;
    }
</style>
 
</head>
<body>
 
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <div class="login100-pic js-tilt" data-tilt>
          <img src="images/clo22.jpg" alt="IMG">
        </div>

        <form class="login100-form" id="login-form" action="/login" method="post">
          <span class="login100-form-title">
          
            Member Login
          </span>
               <div class="warning alert" id="alertBox" th:if="${param.error2}">
    <div class="content">
      <div class="icon">
        <svg height="50" viewBox="0 0 512 512" width="50" xmlns="http://www.w3.org/2000/svg"><path fill="#fff" d="M449.07,399.08,278.64,82.58c-12.08-22.44-44.26-22.44-56.35,0L51.87,399.08A32,32,0,0,0,80,446.25H420.89A32,32,0,0,0,449.07,399.08Zm-198.6-1.83a20,20,0,1,1,20-20A20,20,0,0,1,250.47,397.25ZM272.19,196.1l-5.74,122a16,16,0,0,1-32,0l-5.74-121.95v0a21.73,21.73,0,0,1,21.5-22.69h.21a21.74,21.74,0,0,1,21.73,22.7Z"/></svg>
    </div>
      <p style="color: Red; font-weight: bold; font-size: 20px;">You account is locked. Try again in &nbsp;
      <span class="countdown" id="countdown"></span>s</p> 
    </div>
    <button class="close">
     <svg height="18px" id="Layer_1" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512" width="18px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#69727D" d="M437.5,386.6L306.9,256l130.6-130.6c14.1-14.1,14.1-36.8,0-50.9c-14.1-14.1-36.8-14.1-50.9,0L256,205.1L125.4,74.5  c-14.1-14.1-36.8-14.1-50.9,0c-14.1,14.1-14.1,36.8,0,50.9L205.1,256L74.5,386.6c-14.1,14.1-14.1,36.8,0,50.9  c14.1,14.1,36.8,14.1,50.9,0L256,306.9l130.6,130.6c14.1,14.1,36.8,14.1,50.9,0C451.5,423.4,451.5,400.6,437.5,386.6z"/></svg>
    </button>
  </div>
  
  
  
  
  <div class="warning alert" id="alertBox" th:if="${param.error1}">
    <div class="content">
      <div class="icon">
        <svg height="50" viewBox="0 0 512 512" width="50" xmlns="http://www.w3.org/2000/svg"><path fill="#fff" d="M449.07,399.08,278.64,82.58c-12.08-22.44-44.26-22.44-56.35,0L51.87,399.08A32,32,0,0,0,80,446.25H420.89A32,32,0,0,0,449.07,399.08Zm-198.6-1.83a20,20,0,1,1,20-20A20,20,0,0,1,250.47,397.25ZM272.19,196.1l-5.74,122a16,16,0,0,1-32,0l-5.74-121.95v0a21.73,21.73,0,0,1,21.5-22.69h.21a21.74,21.74,0,0,1,21.73,22.7Z"/></svg>
    </div>
      <p style="color: Red; font-weight: bold; font-size: 20px;">Your Password is Incorrect. Please Try again<span class="countdown1" id="countdown"></span></p> 
    </div>
    <button class="close">
     <svg height="18px" id="Layer_1" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512" width="18px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#69727D" d="M437.5,386.6L306.9,256l130.6-130.6c14.1-14.1,14.1-36.8,0-50.9c-14.1-14.1-36.8-14.1-50.9,0L256,205.1L125.4,74.5  c-14.1-14.1-36.8-14.1-50.9,0c-14.1,14.1-14.1,36.8,0,50.9L205.1,256L74.5,386.6c-14.1,14.1-14.1,36.8,0,50.9  c14.1,14.1,36.8,14.1,50.9,0L256,306.9l130.6,130.6c14.1,14.1,36.8,14.1,50.9,0C451.5,423.4,451.5,400.6,437.5,386.6z"/></svg>
    </button>
  </div>
           <p  style="color: red;" ></p>
           <p th:text="${message}" style="color: red;" ></p>
           

    
		<p id="errormessage" style="color:red;"></p><br>
          <div class="wrap-input100">
            <input class="input100" type="text" name="username" id="username" placeholder="Email">
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            </span>
          </div>

          <div class="wrap-input100">
            <input class="input100" type="password" id="password" name="password" placeholder="Password">
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-lock" aria-hidden="true"></i>
            </span>
          </div>
         
             <input type="hidden" id="lockExpirationTime"  th:value="${session.lockExpirationTime}" >
              <input type="hidden" id="user"  th:value="${session.user}" >
            
            <p>
        <input type="checkbox" name="remember-me" id="remember-me">
        <label for="remember-me"><b>Remember Me</b></label>
        <a style="margin-left: 50px;" class="txt2" href="/forgot_password"><b>Forgot Password?</b></a>
    </p>
            
          <input type="hidden"                          
            name="${_csrf.parameterName}"  
            value="${_csrf.token}"/> 
          <div class="container-login100-form-btn">
            <button type="submit" class="login100-form-btn">
              Login
            </button>
          </div>


          <div class="text-center p-t-136">
            <a class="txt2" href="#">
              
            
            </a>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div id="success_message" style="display: none;">
    Form submitted successfully!
  </div>

 <!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
  <script>
    $('.js-tilt').tilt({
      scale: 1.1
    })
  </script>
  <!--===============================================================================================-->
  <script>
  document.getElementById("login-form").addEventListener("submit", function(event) {
	    // Validate the form
	    if (!validateForm()) {
	      event.preventDefault(); // Prevent form submission
	    }
	  });
  function validateForm() {
	  // Get the value of the input field with id="email"
	  var email = document.getElementById("username").value;
	  // Get the value of the input field with id="password"
	  var password = document.getElementById("password").value;
	  var errormessage=document.getElementById("errormessage");
	  // Regular expression to check if the email is in the correct format
	  var emailRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	  // Check if the email is empty
	    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
	  if (email == "") {
	    document.getElementById("errormessage").innerHTML="Email field must be filled out";
	    return false;
	  }
	  // Check if the email is in the correct format
	  if (!email.match(emailRegex)) {
		  document.getElementById("errormessage").innerHTML = "Please enter a valid email address";
	    return false;
	  }
	  // Check if the password is empty
	  if (password == "") {
	    document.getElementById("errormessage").innerHTML = "Password field must be filled out";
	    
	    return false;
	  }
	//if (!password.match(passwordRegex)) {
		//  document.getElementById("errormessage").innerHTML = "Password must be at least 8 characters long and contain at least one lowercase letter, one uppercase letter, and one number";
		//    return false;
		//  }
	  // Send a request to the server to check the user's credentials
	  // If the credentials are correct, return true to submit the form
	  // If the credentials are incorrect, display an error message and return false to prevent the form from being submitted
	  return true;
	}
  function handleUsernameKeyup() {
	    validateForm();
	    // Additional logic for username validation on keyup
	    // ...
	  }

	  // Function to handle keyup events in the password field
	  function handlePasswordKeyup() {
	    validateForm();
	    // Additional logic for password validation on keyup
	    // ...
	  }

	  // Add event listeners for keyup events in the username and password fields
	  document.getElementById("username").addEventListener("keyup", handleUsernameKeyup);
	  document.getElementById("password").addEventListener("keyup", handlePasswordKeyup);

  </script>
  
   

 <script th:if="${param.error2 }">
        // Get the alert box and countdown elements
        var alertBox = document.getElementById("alertBox");
        var countdownElement = document.getElementById("countdown");
        var countdown1 = document.querySelector("#lockExpirationTime");
        var user1 = document.querySelector("#user");
        var userValue = user1.value;
        
        var currentTimeMillis = Date.now();
        var currentTimeInSeconds = Math.floor(currentTimeMillis / 1000);
        var countdown2= parseInt(countdown1.value);
        var countdown3= countdown2+(60);
    	var countdown5 = countdown3-currentTimeInSeconds ;

        // Display the alert box and start the countdown
        function showAlertBox(countdownValue) {
            alertBox.style.display = "block";
            var countdown = countdownValue;
            var countdownInterval = setInterval(function() {
                countdown--;
                countdownElement.textContent = countdown;
                
                if (countdown <= 0) {
                    clearInterval(countdownInterval);
                    alertBox.style.display = "none";
                    window.location.href = "/login?user=" + encodeURIComponent(userValue);
                }
            }, 1000);
        }

        // Check if countdown2 is null and show the alert box
       
        if (!isNaN(countdown2)) {
            showAlertBox(countdown5); // Start the countdown from 5 seconds
        }
    </script>
    
    <script th:if="${param.error1 }">
        // Get the alert box and countdown elements
        var alertBox = document.getElementById("alertBox");
        var countdownElement = document.getElementById("countdown");
        var countdown1 = document.querySelector("#lockExpirationTime");
        var currentTimeMillis = Date.now();
        var currentTimeInSeconds = Math.floor(currentTimeMillis / 1000);
        var countdown2= 5;
        var countdown3= countdown2+(60);
    	var countdown5 = countdown3-currentTimeInSeconds ;

        // Display the alert box and start the countdown
        function showAlertBox(countdownValue) {
            alertBox.style.display = "block";
            var countdown = countdownValue;
            var countdownInterval = setInterval(function() {
                countdown--;
                countdownElement.textContent = countdown;
                
                if (countdown <= 0) {
                    clearInterval(countdownInterval);
                    alertBox.style.display = "none";
                    
                }
            }, 1000);
        }

        // Check if countdown2 is null and show the alert box
       
        if (!isNaN(countdown2)) {
            showAlertBox(5); // Start the countdown from 5 seconds
        }
    </script>
    





</body>
</html>
            
