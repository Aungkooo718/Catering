<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Edit Doorlog</title>
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
    <!-- for full calendar cdn -->
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
    <script src="path/to/your/javascript/file.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
    

    
    <!-- for full calendar cdn end -->

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');
     
            *{
            	font-family: 'Roboto Slab', serif;
            }
    td{
  word-break:break;
  
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
    position: relative;
    color:blue;
  }
  
  .highlight::before,
  .highlight::after {
    content: "";
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    border-radius: 50%;
    border: 2px solid blue;
    color:blue;
  }
  
  .highlight::before {
    z-index: -1;
  }
					.fc-widget-content {
    background-color: SkyBlue; 
}
.fc-widget-content .fc-tue{
    background-color: FF6347; 
}
.fc-widget-content:hover{
	background-color:red;
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
<!--  -->
.selected {
  background-color: Violet;
}
.selected-next-month{
	background-color:DarkSlateGray;
}
.fc-day.selected {
  background-color: Khaki;
}
.fc-day-grid .fc-row .fc-day {
}


.fc-day.selected:hover {
  background-color: MediumSpringGreen	;
}

.fc-day:not(.selected):hover {
  background-color: MediumSpringGreen	;
}

.fc-day:not(.selected):nth-child(7n+1),
.fc-day:not(.selected):nth-child(7n) {
  background-color: #f5f5f5;
}

.selected {
  background-color: blue;
}
#calendar {
  width: 800px !important;
}

.fc-view-container {
  width: 800px !important;
}

.fc-view {
  width: 800px !important;
}

.fc-scroller {
  width: 800px !important;
}

.fc-time-grid-container {
  width: 800px !important;
}
			
			#settings-menu {
  display: none;
  position: absolute;
  top: 40px;
  right: 0;
  z-index: 5;
  background-color: #fff;
  border: 1px solid #ccc;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.2);
  width: 200px;
  padding: 10px;
}			
.my-icons{
	color:firebrick;
}
.my-icon {
  color:#ffc000;
}

.my-iconz{
	color:cadetblue;
}
.myicons{
	color:lime;
}
.checkbox-group {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.checkbox-group input[type="checkbox"] {
  width: 20px;
  height: 20px;
  margin-right: 10px;
  cursor: pointer;
}

.checkbox-group input[type="checkbox"]:checked {
  transform: scale(1.2);
}

.checkbox-group label {
  cursor: pointer;
}
.checkbox-container {
  display: flex;
  flex-wrap: wrap;
}

.checkbox-group {
  width: 15.33%;
}
table tbody td:first-child {
    padding-left: 0rem;
   
}

.fc td, .fc th {
    border-style: solid;
    border-width: 1px;
    padding: 0;
    vertical-align: bottom;
                   
 
}
<!--              -->


.uploadBtn {
  display: block;
  width: 240px;
  height: 40px;
  background: Teal;
  color: #fff;
  border-radius: 3px;
  border: 0;
  box-shadow: 0 3px 0 0 rgb(2, 69, 69);
  transition: all 0.3s ease-in-out;
  font-size: 14px;
}

.uploadBtn:hover {
  background: SteelBlue;
  box-shadow: 0 3px 0 0 rgb(1, 86, 86);
}
.fc-day-grid .fc-row .fc-day.selected{
	font-size:1.4em;
}

.fc td, .fc th {
    border-style: solid;
    border-width: 0.002px;
    border-color: #d0baba;
    vertical-align: bottom;
}


.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}


.form-container {
		        max-width: 400px;
		        margin: 0 auto;
		        padding: 20px;
		        border: 1px solid #ccc;
		        border-radius: 5px;
		        background-color: #f9f9f9;
		    }

    .form-container label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        color: #333;
    }

    .form-container input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #fff;
    }

    .form-container .error-message {
        color: #ff0000;
        font-size: 12px;
        margin-top: 5px;
    }

    .form-container .submit-button {
        display: block;
        width: 40%;
        padding: 10px;
        margin-top: 20px;
        border: none;
        border-radius: 4px;
        background-color: Teal;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
    }

    .form-container .submit-button:hover {
        background-color: #ff69b4;
    }
    .button-group {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 20px;
    }

    .cancel-button {
        display: block;
        width: 25%;
        padding: 10px;
        margin-top: 20px;
        border: none;
        border-radius: 4px;
        background-color: SandyBrown;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
    }

    .cancel-button:hover,
    .submit-button:hover {
        background-color: #ff69b4;
    }
    </style>
    
    
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody">
    <input type="checkbox" id="menu-toggle">
	<div class="sidebar">
        
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(/images/clo.jpg)"></div>
                <h4>DAT</h4>
            </div>

            <div class="side-menu">
               <div th:replace="fragments :: s_header" ></div>
            </div>
        </div>
    </div>
    
    
     <div id="settings-menu" style="margin-left:200px;margin-right:500px;margin-top:400px;">
  <div class="settings-header">
    <h3>Settings</h3>
    <button id="close-settings">&times;</button>
  </div>
  <div class="settings-options">
    <div class="settings-option">
      <label for="change-password">Change Password<img src="/images/passwordicon.png" style="margin-left:5px;margin-top:15px;" height="15px" width="15px"></label>
    </div>
    <div class="settings-option">
      <label for="change-email">Change Email<img src="/images/mailicon.png" style="margin-left:5px;margin-top:15px;" height="15px" width="15px"></label>
    </div>
  </div>
</div>
    <div class="main-content">
        <div th:replace="fragments :: sub_header" ></div>
       <div id="fileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
        <button onclick="hideEmpUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
		<form id="employee_data" th:action="@{/uploadExcelToDatabase}" method="post" enctype="multipart/form-data">
		  
		  <div style="margin-bottom: 20px;" class="title">
		    <h1 style="text-align: center;margin-top: 20px;">Upload Employee</h1>
		  </div>
		  <div class="dropzone" style="margin-left:70px;">
		    <img style="margin-left:70px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
		    <input type="file" name="file" class="upload-input" />
		  </div>
		  <input id="employeefileupload" type="submit" style="margin-left:70px; margin-top: 15px;margin-bottom: 25px;" class="uploadBtn" value="Upload file" />
		</form>
      </div>
      </div>
      
      <div id="doorlogfileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
         <button onclick="hideDoorlogUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
		
        <h2 style="text-align: center;margin-top: 20px;color:DarkTurquoise">Upload Doorlog</h2>
        <img style="margin-left:120px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
       <form   action ="/api/excel/uploadDoorlogToDatabase" method = "POST" enctype = "multipart/form-data">
      
         <input style="padding:12px;" type = "file" name = "file" value = "Browse File" /> 
         <input style="border-radius:5%;background-color:DarkTurquoise;margin-left:70px;padding:8px 90px 8px 90px;" type = "submit" value = "upload" /> <br /> <br /> 
         
          </form>
      </div>
      </div>
      <div id="holidayfileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
        <button onclick="hideHolidayUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
		<h2 style="text-align: center;margin-top: 20px;color:DarkTurquoise">Upload Holiday</h2>
        <img style="margin-left:120px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
       
		<form   action ="/api/excel/uploadHolidayToDatabase" method = "POST" enctype = "multipart/form-data">
      <input style="padding:8px;" type = "file" name = "file" value = "Browse File" /> 
         <input style="border-radius:5%;background-color:DarkTurquoise;margin-left:70px;padding:8px 90px 8px 90px;" type = "submit" value = "upload" /> <br /> <br /> 
         
          </form>
      </div>
      </div>
        <div id="feedbackDialog" style="z-index:3" >
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please enter your feedback:</label><br>
                <textarea style="width:300px;height:100px;font-size:15px;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="button" class="btn btn-secondary" onclick="hideFeedbackDialog()">Cancel</button>
            </form>
        </div>
    </div>
        
        <main>           
           
          
            <div class="form-container">
            <h2 style="text-align:center;color:blue;"><b>Edit Employee</b></h2>
          <form th:object="${doorLog}" th:action="@{/doorlog/{doorlogtime}/{doorlogno}/update(doorlogtime=${doorLog.id.doorlogtime}, doorlogno=${doorLog.id.doorlogno})}" method="post">
    <!-- Form fields -->
    <input type="text" th:field="*{department}" />
    <input type="text" th:field="*{name}" />
    <button type="submit">Update</button>
</form>
</div>
                
            
        </main>
        
        
    </div>
    <script>
    window.onload = function() {
        // Perform form validation here
        
        // Example validation: Check if the name field is empty
        var nameInput = document.getElementById('name');
        if (nameInput.value.trim() === '') {
            alert('Name field cannot be empty');
            // Optionally, you can focus on the invalid field
            nameInput.focus();
        }
        
        // Add more validation logic for other fields if needed
    };
    	</script>
    <script>
    
  const form = document.getElementById('employee_data');

  form.addEventListener('submit', (event) => {
    event.preventDefault(); // Prevent the default form submission

    const fileUpload = document.querySelector('input[name="file"]');
    const file = fileUpload.files[0];

    //alert('file is uploaded to the database:', file);

    if (file) {
      const formData = new FormData();
      formData.append('file', file);

     // alert('Uploading the file...');

      fetch('/uploadExcelToDatabase', {
        method: 'POST',
        body: formData
      })
      .then(response => {
        if (response.ok) {
          alert('File uploaded successfully');
          return response.text();
        } else {
          alert('File upload failed');
          throw new Error('File upload failed');
        }
      })
      .then(data => {
        //alert('Server response:', data);
        // Handle the server response here
      })
      .catch(error => {
        console.error('Error:', error);
        // Handle errors here
      });
    } else {
      alert('Please select a file');
    }
  });
</script>
    <script>
    const bell = document.getElementById('bell');

    
    bell.addEventListener('click', () => {
        if (bell.classList.contains('highlight')) {
          bell.classList.remove('highlight');
          updateController(false); // Send false value to the controller via Ajax
        } else {
          bell.classList.add('highlight');
          updateController(true); // Send true value to the controller via Ajax
        }
      });

      function updateController(value) {
        $.ajax({
          url: '/updateEmailNoti',
          type: 'POST',
          data: { controllerValue: value },
          success: function(response) {
            // Handle the response from the server if needed
          },
          error: function(xhr, status, error) {
            // Handle errors if needed
          }
        });
      }
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
        function showEmpUploadBox() {
            document.getElementById("fileupload_box").style.display = "block";
        }
        function hideEmpUploadBox() {
            document.getElementById("fileupload_box").style.display = "none";
        }
        function showDoorlogUploadBox() {
            document.getElementById("doorlogfileupload_box").style.display = "block";
        }
        function hideDoorlogUploadBox() {
            document.getElementById("doorlogfileupload_box").style.display = "none";
        }
        function showHolidayUploadBox() {
            document.getElementById("holidayfileupload_box").style.display = "block";
        }
        function hideHolidayUploadBox() {
            document.getElementById("holidayfileupload_box").style.display = "none";
        }
        function showEmployeeUploadBox() {
            document.getElementById("employeefileupload_box").style.display = "block";
        }
        function hideEmployeeUploadBox() {
            document.getElementById("employeefileupload_box").style.display = "none";
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
            name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please supply your first name'
                    }
                }
            },
            payment_receiver: {
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
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});


        </script>
</body>
</html>