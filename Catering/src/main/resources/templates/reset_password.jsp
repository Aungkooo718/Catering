<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" >

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
  <style>
    /*custom font*/
    @import url(https://fonts.googleapis.com/css?family=Montserrat);

    /*basic reset*/
    * {
      margin: 0;
      padding: 0;
    }

    html {
   
      height: 100%;
      /*Image only BG fallback*/
      background: #9053c7;
  background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
  background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
  background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
  background: linear-gradient(-135deg, #c850c0, #4158d0);
    }

    body {
     margin-top : 150px;
      font-family: montserrat, arial, verdana;
    }

    /*form styles*/
    #msform {
      width: 450px;
      margin: 50px auto;
      text-align: center;
      position: relative;
    }

    #msform fieldset {
      background: white;
      border: 0 none;
      border-radius: 3px;
      box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
      padding: 20px 30px;

      box-sizing: border-box;
      width: 80%;
      margin: 0 10%;

      /*stacking fieldsets above each other*/
      position: absolute;
    }

    /*Hide all except first fieldset*/
    #msform fieldset:not(:first-of-type) {
      display: none;
    }

    /*inputs*/
    #msform input,
    #msform textarea {
      padding: 15px;
      border: 1px solid #ccc;
      border-radius: 3px;
      margin-bottom: 10px;
      width: 100%;
      box-sizing: border-box;
      font-family: montserrat;
      color: #2c3e50;
      font-size: 13px;
    }

    /*buttons*/
    #msform .action-button {
      width: 100px;
      background: #27ae60;
      font-weight: bold;
      color: white;
      border: 0 none;
      border-radius: 1px;
      cursor: pointer;
      padding: 10px 5px;
      margin: 10px 5px;
    }

    #msform .action-button:hover,
    #msform .action-button:focus {
      box-shadow: 0 0 0 2px white, 0 0 0 3px #27ae60;
    }

    /*headings*/
    .fs-title {
      font-size: 15px;
      text-transform: uppercase;
      color: #2c3e50;
      margin-bottom: 10px;
    }

    .fs-subtitle {
      font-weight: normal;
      font-size: 13px;
      color: #666;
      margin-bottom: 20px;
    }

    /*progressbar*/
    #progressbar {
      margin-bottom: 30px;
      overflow: hidden;
      /*CSS counters to number the steps*/
      counter-reset: step;
    }

    #progressbar li {
      list-style-type: none;
      color: white;
      text-transform: uppercase;
      font-size: 9px;
      width: 33.33%;
      float: left;
      position: relative;
    }

    #progressbar li:before {
      content: counter(step);
      counter-increment: step;
      width: 20px;
      line-height: 20px;
      display: block;
      font-size: 10px;
      color: #333;
      background: white;
      border-radius: 3px;
      margin: 0 auto 5px auto;
    }

    /*progressbar connectors*/
    #progressbar li:after {
      content: "";
      width: 100%;
      height: 2px;
      background: white;
      position: absolute;
      left: -50%;
      top: 9px;
      z-index: -1;
      /*put it behind the numbers*/
    }

    #progressbar li:first-child:after {
      /*connector not needed before the first step*/
      content: none;
    }

    /*marking active/completed steps green*/
    /*The number of the step and the connector before it = green*/
    #progressbar li.active:before,
    #progressbar li.active:after {
      background: #27ae60;
      color: white;
    }
  </style>
</head>

<body>
  <!-- multistep form -->

<form id="msform" th:action="@{/reset_password}" method="post">
    <!-- progressbar -->
    
    <!-- fieldsets -->
    <fieldset>
        <h2 class="fs-title">Reset Your Password!</h2>
        <h3 class="fs-subtitle">Type Here</h3>
        <input type="hidden" name="token" th:value="${token}" />
        <input type="password" name="password" id="password" class="form-control"
         
           placeholder="Enter your new password" pattern=".{6,}" title="Password must be at least 6 characters long" required autofocus />
        <input type="password" class="form-control" placeholder="Confirm your new password"
               required oninput="checkPasswordMatch(this);" />
     
        <input type="submit" name="submit" class="submit action-button" value="Submit" />
        <a th:href="@{/login}"><button type="button" class="previous action-button">Go to Login</button></a>
    </fieldset>
    <a th:href="@{/login}"><button class="previous action-button">Login Back</button></a>
</form>
    


  <!-- jQuery -->
  <script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
  <!-- jQuery easing plugin -->
  <script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
  
  <script>
function checkPasswordMatch(fieldConfirmPassword) {
    if (fieldConfirmPassword.value != $("#password").val()) {
        fieldConfirmPassword.setCustomValidity("Passwords do not match!");
    } else {
        fieldConfirmPassword.setCustomValidity("");
    }
}
</script>

              <script>

window.onload = function() {
    var success1 = "[[${success}]]";
    var success = "[[${message}]]";
    var Delete = "[[${message2}]]";
    var Delete2 = "[[${errorMessage3}]]";
    
    if (success1 !== "") {
      Swal.fire({
        icon: 'success',
        title: 'Successfully',
        text: success1,
        showClass: {
          popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
          popup: 'animate__animated animate__fadeOutUp'
        }
      });
    }
    
    if (success !== "") {
      Swal.fire({
        icon: 'success',
        title: 'Successfully',
        text: success,
        showClass: {
        	 popup: 'animate__animated animate__fadeOutUp'
        }
      }).then(function() {
        logout();
      });
    }
    
    if (Delete !== "") {
      Swal.fire({
        icon: 'error',
        title: 'Error',
        text: Delete,
        showClass: {
          popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
          popup: 'animate__animated animate__fadeOutUp'
        }
      });
    }
    
    if (Delete2 !== "") {
      Swal.fire({
        icon: 'error',
        title: 'Error',
        text: Delete2,
        showClass: {
          popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
          popup: 'animate__animated animate__fadeOutUp'
        }
      });
    }
  };
</script>


</body>

</html>