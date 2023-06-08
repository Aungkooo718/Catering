<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Add Time</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
      <!-- jQuery CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Bootstrap Validator CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
    
    <!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
    
    
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    

    <style>
    body{
    margin-top : 90px;
      background-image: url("images/mm.jpg");
    
     background-size: cover;
    }
    td{
  word-break:break;
  
}
.fa-solid, .fas {
    color: #f5ebeb;
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
					  color: blue;
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



 .circular-image {
        width: 205px;
        height: 180px;
        border-radius: 50%;
        margin-left: 80px;
        margin-top: 30px;
        opacity:0.8;
 border: 3px solid black;   
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
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
    
    .container:hover {
    background-color: #f0f0f0;
    border: 2px solid #858585;
    transform: scale(1.03);
    transition: all 0.3s ease;

}
    
    </style>
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody" >
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

                    <div class="container" style="background-image: linear-gradient(to bottom, #a4c8ff 0%, #e5e5e5 100%);opacity:0.85" >

    
        <form style="  background-image: linear-gradient(to bottom, #a4c8ff 0%, #e5e5e5 100%);border:0px solid black;     ;
        
        "  class="well form-horizontal" th:object="${TimeTable}" th:action="@{/addTimeInfo}" method="post"  id="contact_form">
    <fieldset>
    <div class="row">
    <div class="col-md-3" >
    
                        
                        <img alt="Usuario" src="images/eme.jpg" class="circular-image" style="">
    </div>

    <div class="col-md-9">

    <!-- Text input-->
      <h3 class="modern-heading">Add Email Schedule Time</h3>
      
   <div class="form-group">
  <label class="col-md-4 control-label">Day</label>
  <div class="col-md-8" style="width:285px;">
    <div class="input-group">
      <span style="background-color:#07b0b5;" class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
      <select style="background-color:#bbd7f6;" class="form-control" name="date" onchange="updatePrice()" id="dropDownList">
        <option value="0">Select Days</option>
        <option value="Mon">Monday</option>
        <option value="Tue">Tuesday</option>
        <option value="Wed">Wednesday</option>
        <option value="Thu">Thursday</option>
        <option value="Fri">Friday</option>
        <option value="Sat">Saturday</option>
        <option value="Sun">Sunday</option> 
      </select>
    </div>
  </div>
</div>


    <!-- Text input-->
           
    <div class="form-group" >
      <label class="col-md-4 control-label">Time</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group" >
           <span class="input-group-addon glyphicon glyphicon-time" style="background-color:#07b0b5;"></span>
      <input style="background-color:#bbd7f6;"  name="time" class="form-control" type="time" step="1">
        </div>
      </div>
    </div>

    
    <!-- Success message -->
    <!--<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>
      -->
    <!-- Button -->
    <div class="form-group">
     
      <div class="col-md-8">
        <button type="submit" width="100px;" style="margin-left:20px;margin-top:20px;" class="btn btn-primary" >Edit<span class="glyphicon glyphicon-send"></span></button>
        <div type="submit" width="100px;" style="margin-top:20px;" class="btn btn-primary" onclick="location.href = '/PriceTime';">Back</div>
     
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

        // Display a thank you message to the user using an alert box
        function displayThankYouMessage() {
            alert("Thank you for your feedback!");
            hideFeedbackDialog();
        }
        
        // Handle form submission
        document.querySelector('form').addEventListener('submit', function(event) {
            // Submit the form using AJAX and then display the thank you message
            displayThankYouMessage();
        });
    </script>
    <script>
              $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	day: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please choose date.'
                    }
                }
            },
            time: {
                validators: {
                	stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please choose time.'
                    }
                }
            }
           
            }
        })
       
});


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