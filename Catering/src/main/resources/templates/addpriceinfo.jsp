<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Add Price Info</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
      <!-- jQuery CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

<!-- Bootstrap Validator CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
    
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    

    <style>
    .fa-solid, .fas {
    color: #f5ebeb;
}
    body{
    margin-top : 100px;
     background-image: url("images/coins.jpg");
    
     background-size: cover;
    }
    td{
  word-break:break;
  
}
.error {
    color: red;
  }

         .dropbtn {
  background-color: white;
  
  color: black;
  padding: 10px;
  font-size: 16px;
  border: none;
}



.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: LightSeaGreen;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: LightSeaGreen;}


		.highlight {
					  color: red;
					}
		.checkboxdark{
	appearance:none;
	position:relative;
	background-color:rgb(216,216,216);
	height:1.6rem;
	width:3rem;
	border-radius:1rem;
	cursor:pointer;
	transition:0.3s ease;
	opacity:0.5;
}		
.checkboxdark::before{
	content:"";
	height:1.2rem;
	width:1.4rem;
	background-color:black;
	border-radius:50%;
	transition:0.3s ease;	
	top:2px;
	position:absolute;
	left:3px;	
}
.checkboxdark:checked{
	background-color:rgb(197,136,255);
	
}
input.checkboxdark:checked::before {
  content: "";
  position: absolute;
  left: calc(3rem - 1.4rem);
  top: 50%;
  transform: translateY(-50%);
  width: 1.4rem;
  height: 1.4rem;
  border-radius: 50%;
  background-color: green;
}
.dark{
	background-color:rgb(17,17,17);
}
.middark{
	background-color:rgb(45,45,45);
}
			
	.btn-primary {
    color:#fff600;
    background-color: #337ab7;
    width: 100px;
    float: right;
    border-color: Blue;
}	

    .container:hover {
    background-color: #f0f0f0;
    border: 2px solid #858585;
    transform: scale(1.03);

}

		    .modern-heading {
        font-family: "Arial", sans-serif;
        font-size: 32px;
        color: #555;
        text-align: center;
        margin-bottom: 20px;
        text-transform: uppercase;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
       
    }				
    </style>
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody">
   <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(images/DAT.png)"></div>
                <h4>DAT</h4>
            </div>

            <div class="side-menu">
                 <div th:replace="fragments :: s_header" ></div>
            </div>
        </div>
    </div>
    
    <div class="main-content">
        
        <div th:replace="fragments :: sub_header" ></div>
        <div id="feedbackDialog" style="z-index:3" >
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please enter your feedback:</label><br>
                <textarea style="width:300px;height:100px;font-size:15px;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <input type="submit" class="btn btn-primary" value="Submit"/>
                <button type="button" class="btn btn-secondary" onclick="hideFeedbackDialog()">Cancel</button>
            </form>
        </div>
    </div>
        
        <main>   

                    <div class="container" style="background-image: linear-gradient(to bottom, #fff7c5 0%, #e5e5e5 100%);opacity:0.85">

    
        <form class="well form-horizontal" th:object="${price}" th:action="@{/addPriceInfo}" method="post"  id="contact_form" style="background-image: linear-gradient(to bottom, #fff7c5 0%, #e5e5e5 100%);border:0px;">
    <fieldset>
    <div class="row">
    <div class="col-md-3">
<img alt style="width:900px;height:200px;margin-left:50px;margin-top:60px;" title class="img-circle img-thumbnail isTooltip"
                        th:src="@{images/moneydollor.jpg}" data    -original-title="Usuario">
    </div>

    <div class="col-md-9">
    
    <!-- Text input-->
      <h3 class="modern-heading">Price info</h3>
   <div class="form-group">
  <label class="col-md-4 control-label">Restaurant Name</label>
  <div class="col-md-8" style="width:285px;">
    <div class="input-group">
      <span class="input-group-addon"><i class="fas fa-utensils"></i></span>
      <select class="form-control" name="restaurantName" onchange="updatePrice()" id="dropDownList">
        <option value="0">Select an option</option>
        <option th:each="rest : ${restaurantList}" th:value="${rest.name}" th:text="${rest.name}" th:data-price="${rest.price}"></option>
      </select>
    </div>
  </div>
</div>


    <!-- Text input-->
           
    <div class="form-group">
      <label class="col-md-4 control-label">Restaurant Price $</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa-solid fa-sack-dollar"></i></span>
      <input name="restaurantPrice" class="form-control" type="text" id="priceInput" readonly required style="color:black;" >
        </div>
      </div>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label">Company Price $</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa-solid fa-sack-dollar"></i></span>
      <input id="companyPrice" name="companyPrice" class="form-control" type="text" th:field="*{companyPrice}" >
        </div>
      </div>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label">Employee Price $</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa-solid fa-sack-dollar"></i></span>
      <input id="employeePrice" name="employeePrice" class="form-control" type="text" th:field="*{employeePrice}" >
        </div>
      </div>
    </div>
    
    <!-- Success message -->
    <!--<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>
      -->
    <!-- Button -->
    <div class="form-group">
      <label class="col-md-4 control-label"></label>
      <div class="col-md-4">
         <button type="submit" width="100px;" style="margin-left:20px;" class="btn btn-primary" >Edit<span class="glyphicon glyphicon-send"></span></button>
        <a href="/PriceTime" width="100px;"  class="btn btn-primary" >Back</a>
      </div>
    </div>
    </div>
    </div>
    </fieldset>
    </form>
    </div>
    </div>
        <!-- /.container -->

        </main>
        
    </div>
    <script>
  function updatePrice() {
    var dropdown = document.getElementById("dropDownList");
    var priceInput = document.getElementById("priceInput");
    
    // Get the selected option
    var selectedOption = dropdown.options[dropdown.selectedIndex];
    
    // Set the price input value to the selected option's data-price attribute value
    priceInput.value = selectedOption.getAttribute("data-price");
  }
</script>

    <script>
		$(document).ready(function() {
    $('#example').DataTable();
} );
		const bell = document.getElementById('bell');

		bell.addEventListener('click', () => {
		  if (bell.classList.contains('highlight')) {
		    bell.classList.remove('highlight');
		  } else {
		    bell.classList.add('highlight');
		  }
		});

	</script>
	<script>

    let togglebtn=document.querySelectorAll(".checkboxdark")[0];
    let body=document.querySelectorAll(".mainbody")[0];
    togglebtn.addEventListener("click",()=>{
        body.classList.toggle("dark");
        slider.classList.toggle("middark");
        slider.classList.toggle("color");
        search.classList.toggle("searchcolor");
    })     
	</script>
	<script>
        function showFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "block";
        }
        
        function hideFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "none";
        }
        
        // Submit the feedback form using AJAX
        // ...

        
    </script>
    <script>
             


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
        
        
        <script>
  $(document).ready(function() {
	  
	  $('#companyPrice').on('input', function() {
		    var restaurantPrice = parseFloat($('#priceInput').val());
		    var companyPrice = parseFloat($(this).val());

		    if (!isNaN(restaurantPrice) && !isNaN(companyPrice)) {
		      var employeePrice = restaurantPrice - companyPrice;
		      $('#employeePrice').val(employeePrice.toFixed(2));
		    }
		  });
	  
    $('#contact_form').validate({
      rules: {
        companyPrice: {
          required: true,
          number: true
        },
        
        priceInput: {
            required: true,
          },
        employeePrice: {
            required: true,
            number: true
          }
      },
      
      messages: {
    	  companyPrice: {
          required: "Please enter company price",
          number: "Please enter a valid number"
        },
        priceInput: {
            required: "Please Select restaurant",
            
          },

        employeePrice: {
            required: "Please enter employee price",
            number: "Please enter a valid number"
          }
      },
      errorClass: "error", // Add this line to apply the error class to the error messages
      errorElement: "span", // Add this line to wrap the error messages in a <span> element
      submitHandler: function(form) {
    	  var companyPrice = parseFloat($('#companyPrice').val());
          var employeePrice = parseFloat($('#employeePrice').val());
          var restaurantPrice = parseFloat($('#priceInput').val());
          
          if (companyPrice + employeePrice !== restaurantPrice) {
            $('#priceInput').addClass('error');
            $('#priceInput').after('<span id="priceInput-error" class="error">The sum of company price and employee price must equal restaurant price</span>');
          } else {
            form.submit();
          }
    	  
    	  
      }
    });
  });
</script>

        
        
</body>
</html>