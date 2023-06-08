<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
	<meta charset="UTF-8">
	<title>Profile Settings
	
	</title>
	 <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
	
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/pp.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>


<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');
body{
background:#f3f3f3;
}
h1 {

 background: linear-gradient(to right, #ff00cc,#00a8ff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
 /* Change the color to your desired color */
  animation: fadeIn 1.5s ease-in; /* Add a fade-in animation */
}

tab-content p-4 p-md-5{
 

}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
  

  
}
  .error-message {
    color: red;
  }
 .error {
    color: red;
  }

</style>
</head>

<body>
<!-- Bar -->

<!-- Bar -->
	<section class="py-5 my-5">
	
		<div class="container">
			<h1 class="mb-5">Account Settings</h1>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<img src="images/clo.jpg" alt="Image" class="shadow">
						</div>
					<h4 class="text-center" th:text="${session.Name}" style=" background: linear-gradient(to right, #ff00cc, #00a8ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent;"></h4>

					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							Profile
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#email" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							Change Email
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							Change Password
						</a>
						
						<a th:if="${session.role=='ADMIN' }" class="nav-link" id="password-tab" data-toggle="pill" href="#contact" role="tab" aria-controls="contact" aria-selected="false" >
							<i class="fa fa-id-badge text-center mr-1"></i> 
							Contact Setting
						</a>
						<a th:if="${session.role=='ADMIN' }" class="nav-link" id="password-tab" data-toggle="pill" href="#mail" role="tab" aria-controls="mail" aria-selected="false" >
							<i class="fa fa-location-arrow text-center mr-1"></i> 
							Mail Setting
						</a>
						
						
					</div>
				</div>
				
				
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent" style="background:#e0e2ff">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>User Name</label>
								  	<p type="text" class="form-control"  readonly="readonly" th:text="${session.Name}"></p>
								</div>
								
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Department</label>
								  	<p type="text" class="form-control"  readonly="readonly" th:text="${session.Department}"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
								  	<p type="text" class="form-control"  readonly="readonly" th:text="${session.Email}"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Division</label>
								 <p type="text" class="form-control"  readonly="readonly" th:text="${session.Division}"></p>

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
								  	
								</div>
							</div>
							<div>
         <form th:action="@{/dashboard}" method="get">
            <button class="btn btn-primary" type="submit">Back</button>
         </form>
      </div>
						</div>
						<div>
							
						</div>
					</div>
					
					
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
					<form id="passwordForm" action="changePassword" method="post" th:object="${employee}">
					
			
					
  <h3 class="mb-4" style="color: #6b6b6b">Settings</h3>
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        <label for="oldPassword">Old password</label>
        <input type="password" class="form-control" id="oldPassword" name="oldPassword">
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        <label for="newPassword">New password</label>
        <input type="password" class="form-control" id="newPassword" name="newPassword" >
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        <label for="confirmPassword">Confirm password</label>
        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" >
      </div>
    </div>
  </div>
  <div>
    <button class="btn btn-warning" type="submit" value="Submit">Change</button>
  </div>
</form>
					</div>
					
					
					
					
						<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="password-tab">
					<form id="contactForm" action="contact" method="post"  >
						<h3 class="mb-4" style="color: #6b6b6b" >Contact Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Company Email</label>
								  	<input type="email" class="form-control" id="email" name="email" th:value="${contact.getEmail()}"   th:placeholder="Email">
								</div>
							</div>
						</div>
							<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Phone Contact</label>
								  	<input type="text" class="form-control" id="phone" name="phone" th:value="${contact.getPhone()}"   th:placeholder="Phone" >
								</div>
							</div>
						</div>
							<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Address</label>
								  	<textarea class="form-control" id="address" name="address" th:value="${contact.getAddress()}" rows="3" cols="50"   th:placeholder="Address" ></textarea>
								</div>
							</div>
						</div>
							
						<div>
							<button class="btn btn-primary" type="submit" value="Submit">Save</button>
							<button class="btn btn-light" onclick="location.href='/viewProfile'">Cancel</button>
						</div>
						</form>
					</div>
					
						<div class="tab-pane fade" id="mail" role="tabpanel" aria-labelledby="password-tab">
					<form id="mail-form" action="mailSetting" method="post"  >
						<h3 class="mb-4" style="color: #6b6b6b" >Mail Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Host Email</label>
								  	<input type="email" id="mail" class="form-control" name="mail" th:value="${mail.getMail()}" th:placeholder="Email" required>
								</div>
							</div>
						</div>
							<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>2-Step Key Password</label>
								  	<input type="text" id="pass" class="form-control" name="pass" th:value="${mail.getPass()}" th:placeholder="Password" required>
								</div>
							</div>
						</div>
							
						<div>
							<button  id="save-button" class="btn btn-primary" type="submit" value="Submit">Save</button>
							<a class="btn btn-light" onclick="location.href='/viewProfile'">Cancel</a>
						</div>
						</form>
					</div>
					
			</div>
			
		</div>
	</section>

<script>
  $(document).ready(function() {
    $('#passwordForm').validate({
      rules: {
        oldPassword: {
          required: true,
          minlength: 6

        },
        newPassword: {
          required: true,
          minlength: 6
        },
        confirmPassword: {
          required: true,
          equalTo: '#newPassword'
        }
      },
      messages: {
        oldPassword: {
          required: 'Please enter your old password'
        },
        newPassword: {
          required: 'Please enter a new password',
          minlength: 'Your password must be at least 6 characters long'
        },
        confirmPassword: {
          required: 'Please confirm your new password',
          equalTo: 'Passwords do not match'
        }
      },
      submitHandler: function(form) {
        form.submit();
      }
    });
  });
</script>


<script>

window.onload = function() {
    var success1 = "[[${success}]]";
    var success = "[[${successMessage2}]]";
    var Delete = "[[${errorMessage}]]";
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
    $('#contactForm').validate({
      rules: {
        email: {
          required: true,
          email: true
        },
        phone: {
          required: true,
          digits: true
        },
        address: {
            required: true,
           
          }
      },
      messages: {
        email: {
          required: "Please enter your email address",
          email: "Please enter a valid email address"
        },
        phone: {
          required: "Please enter your phone number",
          digits: "Please enter only digits"
        },
        address: {
            required: "Please enter your address",
          }
      },
      errorClass: "error", // Add this line to apply the error class to the error messages
      errorElement: "span", // Add this line to wrap the error messages in a <span> element
      submitHandler: function(form) {
        form.submit();
      }
    });
  });
</script>
<script>
$(document).ready(function() {
  $('#mail-form').validate({
    rules: {
      mail: {
        required: true,
        email: true
      },
      pass: {
        required: true
      }
    },
    messages: {
      mail: {
        required: 'Please enter your email address',
        email: 'Please enter a valid email address'
      },
      pass: {
        required: 'Please enter your password'
      }
    },
    submitHandler: function(form) {
      // Handle form submission
      form.submit();
    }
  });
});
</script>



<script>
  $(document).ready(function() {
    $('#emailform').validate({
      rules: {
        employeeName: {
          required: true,
        },
      
        employeeEmail: {
            required: true,
           
          }
      },
      messages: {
        employeeName: {
          required: "Please enter your email address",
          
        },
       
        employeeEmail: {
            required: "Please enter your address",
          }
      },
      errorClass: "error", // Add this line to apply the error class to the error messages
      errorElement: "span", // Add this line to wrap the error messages in a <span> element
      submitHandler: function(form) {
        form.submit();
      }
    });
  });
</script>



	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>