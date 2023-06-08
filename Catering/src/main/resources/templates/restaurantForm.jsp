<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Add Restaurant</title>
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
    
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery Validation Plugin -->
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

    <style>
    td{
  word-break:break;
  
}
  body{
        margin-top: 10px;
        background-image: url("images/rest.jpg");
    
     background-size: cover;
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

  label.error {
        color: red;
    }
.middark{
	background-color:rgb(45,45,45);
}
			
	.btn-primary {
    color: #fff;
    background-color: #337ab7;
    width: 120px;
    float: right;
    border-color: Blue;
}	
.well{
margin-top:50px;
}					
 .circular-image {
        width: 290px;
        height: 280px;
        border-radius: 50%;
        margin-left:47px;
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
            <form>
                <label for="feedback">Please enter your feedback:</label><br>
                <textarea style="width:300px;height:100px;font-size:15px;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="button" class="btn btn-secondary" onclick="hideFeedbackDialog()">Cancel</button>
            </form>
        </div>
    </div>
        
        <main>
            
            
            
            
                   

                 <div class="container" style="opacity:0.8;">

    
        <form class="well form-horizontal" th:object="${restaurant}" th:action="@{/createRestaurant}" method="post" id="contact_form">
    <fieldset>
         <div class="row">
            <div class="col-md-3">
 <img alt="Usuario" src="images/restaurant.jpg" class="circular-image" style="">

            </div>
            <div class="col-md-9">
            <div th:if="${session.message != null}" class="alert alert-info alert-dismissable">
    <a class="panel-close close" data-dismiss="alert">�</a>
    <i class="fa fa-coffee"></i>
    <strong th:text="${session.message}"></strong>
</div>
                <!-- Text input-->
      <h3 class="modern-heading">New Restaurant </h3>
       <input type="hidden" th:field="*{id}"/>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="restaurantName">Restaurant Name</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-cutlery"></i></span>
                            <input name="name" id="restaurantName" placeholder="Restaurant Name" class="form-control" th:field="*{name}" type="text" required>
                        </div>
                    </div>
                </div>
    
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">E-Mail</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="email" id="email" placeholder="E-Mail Address" class="form-control" th:field="*{email}" type="text" required>
                        </div>
                    </div>
                </div>
    
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="phone">Phone #</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                            <input name="phone" id="phone" th:field="*{phone}" class="form-control" type="text" required>
                        </div>
                    </div>
                </div>
    
                <div class="form-group">
                    <label class="col-md-4 control-label" for="paymentReceiver">Payment Receiver Name</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="paymentReceiveName" id="paymentReceiver" placeholder="Payment Receiver Name" th:field="*{paymentReceiveName}" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
				  <label class="col-md-4 control-label">Price</label>  
				  <div class="col-md-4 inputGroupContainer">
				    <div class="input-group">
				      <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
				      <input id="price" name="price" placeholder="Price" class="form-control" th:field="*{price}" type="text" required>
				    </div>
				  </div>
				</div> 
    
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="address">Address</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                            <input name="address" id="address" placeholder="Address" th:field="*{address}" class="form-control" type="text" required>
                        </div>
                    </div>
                </div>
    
                <!-- Text input-->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="address">City</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                            <input name="city" id="city" placeholder="City" class="form-control" th:field="*{city}" type="text" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                <a href="/restaurants" style="margin-left:300px;" class="btn btn-warning" >Back</a>
                	<input type="submit" style="margin-right:300px;" class="btn btn-primary" value="Add Restaurant"/>
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
            event.preventDefault();
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
            name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please supply your restaurant name'
                    }
                }
            },
            phone: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please supply Payment Receiver name'
                    }
                }
            },
             
            email: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your email address'
                    },
                    emailAddress: {
                        message: 'Please supply a valid email address'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your phone number'
                    }
                }
            },
            address: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please supply your street address'
                    }
                }
            },
            city: {
                validators: {
                     stringLength: {
                        min: 4,
                    },
                    notEmpty: {
                        message: 'Please supply your city'
                    }
                }
            },
            comment: {
                validators: {
                      stringLength: {
                        min: 10,
                        max: 200,
                        message:'Please enter at least 10 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply a description of your project'
                    }
                    }
                }
            }
        })
     
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
    $('#contact_form').validate({
        rules: {
            name: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            phone: {
                required: true,
                digits: true
            },
            paymentReceiveName: {
                required: true
            },
            price: {
                required: true,
                number: true
            },
            address: {
                required: true
            },
            city: {
                required: true
            }
        },
        messages: {
            name: {
                required: 'Please enter the restaurant name'
            },
            email: {
                required: 'Please enter a valid email address',
                email: 'Please enter a valid email address'
            },
            phone: {
                required: 'Please enter a phone number',
                digits: 'Please enter a valid phone number'
            },
            paymentReceiveName: {
                required: 'Please enter the payment receiver name'
            },
            price: {
                required: 'Please enter the price',
                number: 'Please enter a valid price'
            },
            address: {
                required: 'Please enter the address'
            },
            city: {
                required: 'Please enter the city'
            }
        },
        submitHandler: function(form) {
            // Code to handle form submission (e.g., AJAX request)
            form.submit();
        }
    });
});
</script>
        
        
</body>
</html>