 <!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
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
    
    <!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
    

    
    <style>
    
    .sidebar {
    position: fixed;
    height: 100%;
    width: 165px;
    left: 0;
    bottom: 0;
    top: 0;
    z-index: 100;
    background-color: black;
    transition: left 300ms;
}
 
    


.side-menu a {
    display: block;
    padding: 1.9rem 0rem;
}

    
  
</style>
    <!-- for full calendar cdn end -->
    <style>
    
    
    .selectAllButton{
	background-color:green;
	color:white;
	padding:3px 10px 3px 10px;
	border-radius:10px;
	margin-left:45px;
}
.selectAllButton:hover{
	background-color:yellow;
	color:black;
}
.unselectAllButton{
	background-color:green;
	color:white;
	padding:3px 10px 3px 10px;
	border-radius:10px;
}
.unselectAllButton:hover{
	background-color:yellow;
	color:black;
}
   


    
    
    
    *{
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
        

        /* Countdown styles */
        .countdown {
            font-size: 20px;
            color: #fff;
            margin-top: 10px;
             display: none;
        }
    </style>
    <style>
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
<!--  -->
.selected {
  background-color: rgb(223, 255, 249);
}
.fc-day.selected {
  background-color: rgb(223, 255, 249);
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
 .calendar-container {
            max-width: 100%;
            overflow-x: auto;
        }
        .calendar-day {
  font-size: 16px;
}

        /* Calendar table */
        #calendar {
            width: 75%;
            table-layout: fixed;
        }

        /* Calendar day cells */
        .fc-day {
       	
            width: 14.285714285714286%;
        }

        /* Responsive styles */
        @media screen and (max-width: 600px) {
            /* Reduce the width of day cells for small screens */
            .fc-day {
        		height:100%;
                width: 20%;
            }
            .calendar-container .fc-day,
  .calendar-container .fc-day-top {
    font-size: 6px !important;
  }
           
            
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
.cc {
  margin-left: 670px;
 
  @media screen and (max-width: 300px) {
   	
    margin-left: 20px; 
  }
}




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

@media screen and (max-width: 300px) {
        .checkbox-custom {
            width: calc(50% - 20px); /* Adjust the width to display 2 checkboxes per row */
        }
    }
    
    /* Styles for all checkboxes */
[type='checkbox'] {
  display: flex;
  appearance: none;
  background: linear-gradient(#777, #888);
  height: 2rem;
  width: 2rem;
  box-shadow: 0 2px 2px 1px rgba(0, 0, 0, 0.2) inset,
              0 1px 1px 1px rgba(255, 255, 255, 0.2);
}

[type='checkbox']::after {
  content: '✔';
  color: transparent;
  text-shadow: 0 0 0 transparent;
  margin: auto;
}

/* Styles when hovering over the checkbox */
[type='checkbox']:hover::after {
  box-shadow: 0 0 2px 0 #0C0, 0 0 2px 1px rgba(0, 0, 0, 0.25),
              0 0 1px 0 #0C0 inset, 0 0 2px 1px rgba(0, 0, 0, 0.35) inset;
  transition: all 200ms ease-in;
}

/* Styles for checked checkboxes */
[type='checkbox']:checked::after {
  color: #00C880;
  text-shadow: 2px 3px 2px rgba(0, 0, 0, 0.2);
  transition: all 200ms ease-in;
}
    </style>
    
    
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody">
    <input type="checkbox" id="menu-toggle">
	<div class="sidebar">
        
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(images/clo.jpg)"></div>
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
		<form   action ="api/uploadExcelToDatabase" method = "POST" enctype = "multipart/form-data">
				<button onclick="hideEmpUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
                <div style="margin-bottom: 20px;" class="title">
                    <h1 style="text-align: center;margin-top: 20px;">Upload Employee</h1>
                </div>
        
                <div class="dropzone" style="margin-left:70px;">
                    <img style="margin-left:70px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;"/><br>
                    <input type="file" class="upload-input" />
                </div>
        
                <button style="margin-left:70px; margin-top: 15px;margin-bottom: 25px;" type="submit" class="uploadBtn" name="uploadbutton">Upload file</button>
        
       
      </form>
      </div>
      </div>
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
           
          
    <div class="warning alert" id="alertBox">
    <div class="content">
      <div class="icon">
        <svg height="50" viewBox="0 0 512 512" width="50" xmlns="http://www.w3.org/2000/svg"><path fill="#fff" d="M449.07,399.08,278.64,82.58c-12.08-22.44-44.26-22.44-56.35,0L51.87,399.08A32,32,0,0,0,80,446.25H420.89A32,32,0,0,0,449.07,399.08Zm-198.6-1.83a20,20,0,1,1,20-20A20,20,0,0,1,250.47,397.25ZM272.19,196.1l-5.74,122a16,16,0,0,1-32,0l-5.74-121.95v0a21.73,21.73,0,0,1,21.5-22.69h.21a21.74,21.74,0,0,1,21.73,22.7Z"/></svg>
    </div>
      <p style="color: Red; font-weight: bold; font-size: 20px;" id="er"></p> <span class="countdown" id="countdown"></span>
    </div>
    <button class="close">
     <svg height="18px" id="Layer_1" style="enable-background:new 0 0 512 512;" version="1.1" viewBox="0 0 512 512" width="18px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#69727D" d="M437.5,386.6L306.9,256l130.6-130.6c14.1-14.1,14.1-36.8,0-50.9c-14.1-14.1-36.8-14.1-50.9,0L256,205.1L125.4,74.5  c-14.1-14.1-36.8-14.1-50.9,0c-14.1,14.1-14.1,36.8,0,50.9L205.1,256L74.5,386.6c-14.1,14.1-14.1,36.8,0,50.9  c14.1,14.1,36.8,14.1,50.9,0L256,306.9l130.6,130.6c14.1,14.1,36.8,14.1,50.9,0C451.5,423.4,451.5,400.6,437.5,386.6z"/></svg>
    </button>
  </div>
  
            <div class="page-content">          
               
			<div style="display: flex; align-items: center;margin:0px 0px 30px 45px;">
  <img src="/images/restaurantlogo.png" style="margin-left: 5px; margin-top: 15px;" height="50px" width="50px">
  <h2 style="text-align: center; margin-left: 10px;">LUNCH REGISTRATION</h2>
</div>
				<button class="selectAllButton" id="select-all-button" >Select All</button>
       				 <button class="unselectAllButton" id="unselect-all-button" >UnSelect All</button>
       				 <button class="unselectAllButton" onclick="location.href = '/review';" style=" margin-right:400px;">Review</button>
       				 
                <div class="calendar-container" id="records">
                   

                    <div class="container" style="margin-top:40px;margin-left:30px;">
					
       				 <div class="row">
       				 

  <div id="calendar"  class="col-lg-8"></div>
  <div class="col-lg-2" style="margin-top:50px; margin-left:50px;">
                        <div class="card" style="background:#f1f4f9;">
                            <div class="card-body">
                                <h4 class="card-intro-title"><b>update</b></h4>

                                <div class="">
                                    <div id="external-events" class="my-3">
                                       <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(167, 189, 230);" class="fa-solid fa-circle my-icon"></i>    Weekend days</div>
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(204, 204, 204);" class="fa-solid fa-circle my-icon"></i>    Current Week</div>
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(255, 205, 107);" class="fa-solid fa-circle my-icon"></i>    Holidays</div>
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(234, 231, 212);" class="fa-solid fa-circle my-icon"></i>    Unavailable</div>
                                        
                                        
                                        
                                        <div class="external-event" data-class="bg-warning"><i style="color:rgb(255, 255, 255);" class="fa-solid fa-circle myicons"></i>    Register Days</div>
                                     <div class="external-event" data-class="bg-warning"><i style="color:rgb(223, 255, 249);" class="fa-solid fa-circle myicons"></i>    Registerd Days</div>
                                    
                                    
                                    
                                    <form th:action="@{/updateLunch}" method="post" th:object="${avoid}">
	
       <h4 style="color: DodgerBlue; font-weight: bold; font-size: 20px; margin-bottom: 10px;">Avoid Meat</h4>

   <div style="margin-left: 2px; margin-right: 2px;" class="row">
        <th:block th:each="avoidmeat, status : ${avoidMeat}" >
        <div class="col-lg-4" style="display: inline-block;">
            <div class="checkbox-custom">
                <input style="margin:10px 10px 10px 10px;width:30px;height:30px;border-radius:10px;" type="checkbox" th:field="*{avoidMeatList}" name="avoidMeatId"  th:value="${avoidmeat.id}" id="cb1" />

                <label style="margin-top:1px;" for="cb1" th:text="${avoidmeat.name}"></label>
                </div>
            </div>
            <th:block th:if="${(status.index + 1) % 4 == 0}"><br /></th:block>
        </th:block>
    </div>

    <input id="registerlunch" type="hidden" name="lunchregister">
  
    <button id="updateBtn" style="margin:5px 40px 35px 30px;float:right;width:120px;height:40px;" type="submit" class="btn btn-primary registerBtn" disabled>UPDATE</button>
  </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                
  
</div>




<!-- /.container -->

                </div>
                
            
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
        function showEmpUploadBox() {
            document.getElementById("fileupload_box").style.display = "block";
        }
        function hideEmpUploadBox() {
            document.getElementById("fileupload_box").style.display = "none";
        }
        // Submit the feedback form using AJAX
        // ...

        // Display a thank you message to the user using an alert box
        //function displayThankYouMessage() {
          //  alert("Thank you for your feedback!");
        //    hideFeedbackDialog();
        //}
        
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
        	register: {
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
            noofpax: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your phone number'
                    }
                }
            },
            extrapax: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your phone number'
                    }
                }
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
         <script>
    var selectedDates = [];
    
    var holidays = [];
    var history = [];
    var reg=[];
    var currentDate = moment();
    var endOfMonth = moment(currentDate).endOf('month');
    var lastWeekStart = moment(endOfMonth).subtract(6, 'days').startOf('week');
    var lastWeekEnd = moment(endOfMonth).endOf('month');
    var isLastWeek = currentDate.isBetween(lastWeekStart, lastWeekEnd);
    
    
    var startOfWeek = moment().startOf('week'); // Get the start of the current week
      var endOfWeek = moment().endOf('week');
      var endOfCurrentWeek = moment().endOf('week').day(5).hour(14); // Friday 14:00 hours of the current week
      var startOfNextWeek = moment(endOfCurrentWeek).add(1, 'day').startOf('week').add(1, 'week');
      
      
      
    
   
    
    function getCalendarData() {
    	  $.when(
    	    $.ajax({
    	      type: 'GET',
    	      url: '/Holidays/holidays',
    	    }),
    	    $.ajax({
    	      type: 'GET',
    	      url: '/Holidays/history',
    	    })
    	  ).done(function(holidaysResult, historyResult) {
    	    var holidays = holidaysResult[0];
    	    var history = historyResult[0];
    	    
    	       	    
    	    $('#calendar').fullCalendar({
    	      height: 600,
    	      
    	      dayRender: function(date, cell) {
    	        var day = date.day();
    	        cell.addClass('calendar-day');
    	        
    	        for (var i = 0; i < selectedDates.length; i++) {
    	        	if (selectedDates[i] === date.format('YYYY-MM-DD') && selectedDates.includes(selectedDates[i])){
    	        	 cell.addClass('selected');
    	        	  cell.text('Registered');
    	        	  cell.css('color', 'grey');
    	      	      cell.css('font-size', '14px');
    	        	}
    	        }
    	       
    	        
    	        for (var i = 0; i < history.length; i++) {
    	        	var reg=history[i].regDate;
      	          if (history[i].regDate === date.format('YYYY-MM-DD') && !selectedDates.includes(reg) ) {
      	        	 selectedDates.push(reg);
      	            cell.addClass('selected');
      	          cell.text('Registered');
      	        cell.css('color', 'grey');
      	      cell.css('font-size', '14px');
      	         
      	           
      	            
      	            
      	            
      	          }
      	        }
    	        
    	        if (moment(date).format('YYYY-MM-DD') == moment().format('YYYY-MM-DD')) {
                    // Disable the date
                   cell.css('background-color', 'rgb(234 231 212)');
                   cell.addClass('disabled');
                    cell.data('selectable', false);
                    cell.on('click', function() {
      	        	  showAlertBox(5);
      	            });
      	        
                  }
    	        
    	        if(!isLastWeek){
                    if (moment(date).format('YYYY-MM') !== moment().format('YYYY-MM')) {
                          // Disable the date
                         cell.css('background-color', 'rgb(234 231 212)');
                         cell.addClass('disabled');
                          cell.data('selectable', false);
                          cell.on('click', function() {
            	        	  showAlertBox(5);
            	            });
            	        
                        }
                  }
    	        
    	        if(isLastWeek){
                    if (moment(date).format('YYYY-MM') !== moment().format('YYYY-MM')) {
                          // Disable the date
                         cell.css('background-color', 'rgb(234 231 212)');
                         cell.addClass('disabled');
                          cell.data('selectable', false);
                          cell.on('click', function() {
            	        	  showAlertBox(5);
            	            });
            	        
                        }
                  }
    	        
                  var nextMonth = moment().add(1, 'months');
                  if (isLastWeek && moment(date).isAfter(nextMonth, 'month')) {
                      cell.css('background-color', 'rgb(234 231 212)');
                      cell.addClass('disabled');
                      cell.data('selectable', false);
                      cell.on('click', function() {
        	        	  showAlertBox(5);
        	            });
        	        
                  }
                  
				if(moment(date).isSame(moment(), 'day')){
					cell.css('background-color', 'rgb(234 231 212)');
					cell.text('TODAY');
	      	        cell.css('color', 'BLACK');
	      	      cell.css('font-size', '14px');
				}
    	       

    	        if (moment(date).isBefore(moment(), 'day') || moment(date).isSame(moment(), 'day')) {
    	          cell.css('background-color', 'rgb(234 231 212)');
    	          cell.addClass('disabled');
    	          cell.data('selectable', false);
    	          cell.on('click', function() {
    	        	  showAlertBox(5);
    	        	  document.getElementById("er").innerHTML="this Date can't be selected";
    	            });
    	        
    	          
    	        
    	        }

    	        for (var i = 0; i < holidays.length; i++) {
    	          if (holidays[i].date === date.format('YYYY-MM-DD')) {
    	            cell.css('background-color', 'Orange');
    	            cell.addClass('selected');
    	            cell.data('selectable', false);
    	            cell.css('color', 'white');
    	            cell.css('font-size', '16px');
    	       
    	            $(this).css('padding-bottom', '25px');
    		        $(this).css('text-align', 'center');
    	            cell.text(holidays[i].holidays);
    	            cell.on('click', function() {
    	            	document.getElementById("er").innerHTML="Holiday can't be selected";
      	        	  showAlertBox(5);
      	            });
      	        
    	           }
    	        }
    	        
    	if (date.isBetween(startOfWeek, endOfWeek)){
  	        	cell.css('background-color', 'rgb(234 231 212)');
  	          cell.addClass('disabled');
  	          cell.data('selectable', false);
  	        cell.on('click', function() {
  	        	document.getElementById("er").innerHTML="Current week can't be selected";
	        	  showAlertBox(5);
	            });
	        
  	        }
    	 if (moment().day() > 5 || (moment().day() === 5 && moment().hour() >= 14)) {
     	    // Current day is after Friday or it is Friday after 2:00 PM
     	    // Disable selection for next week
     	   const nextWeekStart = moment().endOf('week').add(1, 'day');
        	        	    const nextWeekEnd = nextWeekStart.clone().endOf('week').add(1, 'day');

     	     if (date.isBetween(nextWeekStart, nextWeekEnd)) {
     	    	cell.css('background-color', '#ccc');
    	          cell.addClass('disabled');
    	          cell.data('selectable', false);
    	        cell.on('click', function() {
    	        	document.getElementById("er").innerHTML="This week can't be selected";
  	        	  showAlertBox(5);
	        	  
    	        });
	        	  // Append the box to the cell

     	     }
     	}

    	
    	        

    	        if (day === 0 || day === 6) {
    	          cell.css('background-color', 'rgb(167 189 230)');
    	          cell.addClass('disabled');
    	          cell.data('selectable', false);
    	          cell.on('click', function() {
    	        	  showAlertBox(5);
    	        	  document.getElementById("er").innerHTML="WeekEnd  can't be selected";
    	            });
    	          
    	          
    	          
    	          
    	         
    	          
    	          
    	         
    	        }
    	      }
    	    });
    	  }).fail(function(xhr, textStatus, errorThrown) {
    	    console.log('Error retrieving calendar data: ' + errorThrown);
    	  });
    	}

    	getCalendarData();
    	
    	 $(document).on('click', '#select-all-button', function() {
 	        $('.fc-day:not(.selected)').each(function() {
 	            var date = $(this).attr('data-date');
 	            date = moment(date).format('YYYY-MM-DD');

 	            if ($(this).data('selectable') !== false && !$(this).hasClass('disabled')) {
 	                $(this).addClass('selected');
 	                $(this).text('Registered');
 	                $(this).css('color', 'grey');
 	                $(this).css('font-size', '14px');
 	                if (selectedDates.indexOf(date) === -1) {
 	                    selectedDates.push(date);
 	                }
 	            }
 	            
 	           console.log(selectedDates+'koko');
 	    	    var update = document.getElementById("updateBtn");

 	    	    if (selectedDates === '') {
 	    	    	updateBtn.disabled = true; 
 	    	    } else {
 	    	    	updateBtn.disabled = false;
 	    	    } 
 	    	   $('#registerlunch').val(selectedDates.join(','));
 	    	  

 	        });
 	    });
    	 
    	 $(document).on('click', '#unselect-all-button', function() {
    		 
    		    $('.fc-day.selected').each(function() {
    		        var date = $(this).attr('data-date');
    		        date = moment(date).format('YYYY-MM-DD');
    		      // Fixed variable name

					if($(this).data('selectable') !== false && !$(this).hasClass('disabled')){
    		        $(this).removeClass('selected');
    		        $(this).text('');
    		        
					}else{
						
		 	                    selectedDates.push(date);
		 	               
					}
					
	 	            
    		        var index = selectedDates.indexOf(date);
    		        if (index !== -1) {
    		            selectedDates.splice(index, 1);
    		        }
    		        var updateBtn = document.getElementById("updateBtn"); 
    		        console.log(selectedDates+'koko');
    		       
    		        if (selectedDates.length === 0) { // Updated condition to check if selectedDates array is empty
    		            updateBtn.disabled = true; 
    		        } else {
    		            updateBtn.disabled = false;
    		        }
    		        
    		        $('#registerlunch').val(selectedDates.join(','));
    		    });
    		});


    	$('#calendar').on('click', '.fc-day', function() {
    	  var date = $(this).attr('data-date');
    	  date = moment(date).format('YYYY-MM-DD');

    	  if ($(this).data('selectable') !== false) {
    	    if ($(this).hasClass('selected')) {
    	      $(this).removeClass('selected');
    	      $(this).text('');
    	      var index = selectedDates.indexOf(date);
    	      if (index !== -1) {
    	        selectedDates.splice(index, 1);
    	      }
    	    } else {
    	      $(this).addClass('selected');
    	      $(this).text('Registered');
    	      $(this).css('color', 'grey');
    	      $(this).css('font-size', '14px');
    	      if (selectedDates.indexOf(date) === -1 && $(this).hasClass('disabled') === false) {
    	        selectedDates.push(date);
    	      }
    	    }
    	    
    	    
    	    
    	   
    	    console.log(selectedDates+'koko');
    	    var update = document.getElementById("updateBtn");

    	    if (selectedDates === '') {
    	    	updateBtn.disabled = true; 
    	    } else {
    	    	updateBtn.disabled = false;
    	    } 
    	    $('#registerlunch').val(selectedDates.join(','));
    	  }
    	  events: events.concat(events1,events2)
    	  
    	});

    	 var alertBox = document.getElementById("alertBox");
         var countdownElement = document.getElementById("countdown");
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
	        title: 'Payment Successfully',
	        text: success1,
	        showClass: {
	          popup: 'animateanimated animatefadeInDown'
	        },
	        hideClass: {
	          popup: 'animateanimated animatefadeOutUp'
	        }
	      });
	    }
	    
	    if (success !== "") {
	      Swal.fire({
	        icon: 'success',
	        title: 'Your Update Successfully',
	        text: success,
	        showClass: {
	          popup: 'animateanimated animatefadeOutUp'
	        }
	      }).then(function() {
	        logout();
	      });
	    }
	    
	    if (Delete !== "") {
	      Swal.fire({
	        icon: 'error',
	        title: 'Sorry',
	        text: Delete,
	        showClass: {
	          popup: 'animateanimated animatefadeInDown'
	        },
	        hideClass: {
	          popup: 'animateanimated animatefadeOutUp'
	        }
	      });
	    }
	    
	    if (Delete2 !== "") {
	      Swal.fire({
	        icon: 'warning',
	        title: 'Wait to order',
	        text: Delete2,
	        showClass: {
	          popup: 'animateanimated animatefadeInDown'
	        },
	        hideClass: {
	          popup: 'animateanimated animatefadeOutUp'
	        }
	      });
	    }
	  };
	</script>

  
  
  
  <script>
  document.getElementById("setting-icon").addEventListener("click", function() {
      document.getElementById("settings-menu").style.display = "block";
    });

    document.getElementById("close-settings").addEventListener("click", function() {
      document.getElementById("settings-menu").style.display = "none";
    });</script>
</body>
</html>