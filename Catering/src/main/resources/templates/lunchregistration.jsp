<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <link rel="stylesheet" type="text/css" href="/css/modalbox.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">



<!-- for full calendar cdn end -->
    
<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
     <!-- jQuery CDN -->

<!-- Bootstrap Validator CDN -->
    
   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- for full calendar cdn -->
     <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
 
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css' rel='stylesheet' />
  <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js'></script>
   
    
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
	color:rgb(255, 170, 170);
}
.my-icon {
  color:rgb(106, 121, 218);
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
    border-color: #a7a0a0;
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

/*for model box*/
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

.modal-content {
  background-color: white;
  color:red;
  margin: 15% auto; /* 15% from the top and centered */
  margin-right:1500px;
  padding: 20px;
  border: 1px solid #888;
  width: 10%; /* Could be modified to desired width */
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}


.custom-modal {
      background-color: #f8f9fa;
    }

    .custom-modal .modal-title {
      color: #007bff;
    }

    .custom-modal .modal-footer {
      border-top: none;
    }




.alert{
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
  background-color: Azure;
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
}
.fa-solid, .fas {
    color: #f5ebeb;
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
/*for calendar*/

/*for responsive media query*/
 /* Default styles for the checkboxes */
    
  
   
        

</style>
   <style>
        /* Alert box styles */
        

        /* Countdown styles */
        .countdown {
            font-size: 20px;
            color: #fff;
            margin-top: 10px;
             display: none;
        }
        
        .registerBtn:hover{
        	background-color:blue;
        	color:white;
        }
        
        
        .h2, h2 {
    font-size: 30px;
    color: green;
    font-weight: 900;
}
.card{
	    font-size: 13px;
	    background-color:none;
}

#selectAllButton{
	background-color:green;
	color:white;
	padding:3px 10px 3px 10px;
	border-radius:10px;
	margin-left:45px;
}
#selectAllButton:hover{
	background-color:yellow;
	color:black;
}
#unselectAllButton{
	background-color:green;
	color:white;
	padding:3px 10px 3px 10px;
	border-radius:10px;
}
#unselectAllButton:hover{
	background-color:yellow;
	color:black;
}




/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 3; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

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
 
    

@media screen and (max-width: 768px) {
  .sidebar {
    width: 100%;
    left: -100%;
  }
}

.side-menu a {
    display: block;
    padding: 1.9rem 0rem;
}

/* Modal Content */

.modal-content {
    background-color: #483838;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 25%;
    height: auto;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
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
        
         <div class="warning alert" id="alertBox">
    <div class="content">
      <div class="icon">
        <svg height="50" viewBox="0 0 512 512" width="50" xmlns="http://www.w3.org/2000/svg"><path fill="#fff" d="M449.07,399.08,278.64,82.58c-12.08-22.44-44.26-22.44-56.35,0L51.87,399.08A32,32,0,0,0,80,446.25H420.89A32,32,0,0,0,449.07,399.08Zm-198.6-1.83a20,20,0,1,1,20-20A20,20,0,0,1,250.47,397.25ZM272.19,196.1l-5.74,122a16,16,0,0,1-32,0l-5.74-121.95v0a21.73,21.73,0,0,1,21.5-22.69h.21a21.74,21.74,0,0,1,21.73,22.7Z"/></svg>
    </div>
      <p style="color: Red; font-weight: bold; font-size: 20px;" id="errorShow"></p> <span class="countdown" id="countdown"></span>
    </div>
   
  </div>
        
        
       
      
      
      <div id="feedbackDialog" style="z-index:3" >
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please enter your feedback:</label><br>
                <input type="hidden" name="lunchregist" value="lunchregist">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div> 
      
      
        
      
        <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <h3>You have to choose at least one registration date..</h3>
  </div>
</div>       

        <main>           
           
            <div class="page-content">          
               
				<div style="display: flex; align-items: center;margin:0px 0px 30px 45px;">
  <img src="/images/restaurantlogo.png" style="margin-left: 5px; margin-top: 15px;" height="50px" width="50px">
  <h2 style="text-align: center; margin-left: 10px;">LUNCH REGISTRATION</h2>
</div>
				
				   <button id="selectAllButton">Select All</button>
                   <button id="unselectAllButton">UnSelect All</button>
<form onsubmit="return validateForm()" th:action="@{/addRegister}" method="post">
                    <div class="container" style="margin:40px 0px 100px 30px">					
       				 <div class="row">
       				 
  <div id="calendar" class="col-lg-5"></div>
  
  <div class="col-lg-2" style="margin-top:50px; margin-left:50px;">
                        <div class="card" style="background:#f1f4f9;">
                            <div class="card-body">
                                <h4 class="card-intro-title"><b>Register</b></h4>

                                <div class="">
                                    <div id="external-events" class="my-3">
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(167, 189, 230);" class="fa-solid fa-circle my-icon"></i>    Weekend days</div>
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(204, 204, 204);" class="fa-solid fa-circle my-icon"></i>    Current Week</div>
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(255, 205, 107);" class="fa-solid fa-circle my-icon"></i>    Holidays</div>
                                         <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i style="color:rgb(234, 231, 212);" class="fa-solid fa-circle my-icon"></i>    Unavailable</div>
                                        
                                        
                                        
                                        <div class="external-event" data-class="bg-warning"><i style="color:rgb(255, 255, 255);" class="fa-solid fa-circle myicons"></i>    Register Days</div>
                                     <div class="external-event" data-class="bg-warning"><i style="color:rgb(223, 255, 249);" class="fa-solid fa-circle myicons"></i>    Registerd Days</div>
                                   
                                   
                                    <hr>
                                    <h5 style="color:RoyalBlue"><b>Email Notification</b></h5><br>
                                   <label class="switch">
									  <input name="emailnoti" type="checkbox">
									  <span class="slider round"></span>
									</label>	
									
									    <h4 style="color: DodgerBlue; font-weight: bold; font-size: 20px; margin-bottom: 10px;">Choose Avoid Meat</h4>

   
    
<div style="margin-left: 2px; margin-right: 2px;" class="row">
  <th:block th:each="avoidmeat, status : ${avoidMeat}">
    <div class="col-lg-4" style="display: inline-block;">
      <div class="checkbox-custom">
        <input style="margin:10px 10px 10px 10px;width:30px;height:30px;border-radius:10px;" type="checkbox" th:value="${avoidmeat.id}" name="avoidMeatId" id="cb1" />
        <label style="margin-top:1px;" for="cb1" th:text="${avoidmeat.name}"></label>
      </div>
    </div>
    <th:block th:if="${(status.index + 1) % 4 == 0}"><br /></th:block>
  </th:block>
</div>





    
    
    
    <input id="registerlunch" type="hidden" name="lunchregister">
    <button id="register" style="margin:5px 40px 35px 30px;float:right;width:120px;height:40px;" type="submit" class="btn btn-primary registerBtn">Register</button>
 
															
                                    </div>                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
              



  
  
     </form>
  
</div>
</div>

<!-- /.container -->

                
            
        </main>
        
        
    </div>
    
    <script>
// Get the modal
var modal = document.getElementById("myModal");


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}


</script>
    <script>
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
    var modal = document.getElementById("myModal");

    function validateForm() {
      var selectedRegisterDate = $('#registerlunch').val().split(',');

      if ($('#registerlunch').val() === '' || selectedRegisterDate.length === 0) {
        modal.style.display = "block"; // Show the modal box

        // Hide the modal after 3 seconds
        setTimeout(function(){
        	modal.style.display="none";
        }, 3000);

        return false;
      }

      // Rest of your validation logic or form submission code
    }

    	

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

       
    </script>
    	
         <script>
         $(document).ready(function() {
        	  var selectedDays = [];
        	  var selectedDates = [];
        	  var holidays = [];
        	  var currentDate = moment();
        	  var endOfMonth = moment(currentDate).endOf('month');
        	 // var lastWeekStart = moment(endOfMonth).subtract(6, 'days').startOf('week');
        	 //var lastWeekStart = moment(endOfMonth).subtract(1, 'week');
        	  var lastWeekStart = moment(endOfMonth).subtract(6, 'days');
        	  var lastWeekEnd = moment(endOfMonth).endOf('month');
        	  var isLastWeek = currentDate.isBetween(lastWeekStart, lastWeekEnd);
        	  var thirdWeekStart = moment(endOfMonth).subtract(12, 'days').startOf('week');
			  var isLastThirdWeek=currentDate.isBetween(thirdWeekStart, lastWeekEnd);
			  var formattedStartDate = lastWeekStart.format('YYYY-MM-DD');
			  var formattedEndDate = lastWeekEnd.format('YYYY-MM-DD');
			  var targetDate = moment(currentDate).date(21);
			  
			  var startOfWeek = currentDate.clone().startOf('isoWeek');
			  var endOfWeek = currentDate.clone().endOf('isoWeek').subtract(2, 'days');
			  var currentMonday=startOfWeek.format('YYYY-MM-DD');
			  var currentFriday=endOfWeek.format('YYYY-MM-DD');
			  var isCurrentWeek=currentDate.isBetween(startOfWeek,endOfWeek);
			  
			  
				  if (currentDate._d.getDay() === 0) {
					  var nextMonday = moment().day('monday').add(0, 'days');
			          var nextFriday = moment().day('friday').add(3, 'days');
			          var nxtMonday=nextMonday.format('YYYY-MM-DD');
					  var nxtFriday=nextFriday.format('YYYY-MM-DD');
					}
				  if (currentDate._d.getDay() === 6) {
					  console.log("It's Saturday!");
					  var nextMonday = moment().day('monday').add(5, 'days');
					  var nextFriday = moment().day('friday').add(8, 'days');
					  var nxtMonday = nextMonday.format('YYYY-MM-DD');
					  var nxtFriday = nextFriday.format('YYYY-MM-DD');
					}
				  if (currentDate._d.getDay() === 5) {
					  console.log("It's friday!");
					  var nextMonday = moment().day('monday').add(6, 'days');
					  var nextFriday = moment().day('friday').add(9, 'days');
					  var nxtMonday = nextMonday.format('YYYY-MM-DD');
					  var nxtFriday = nextFriday.format('YYYY-MM-DD');
					}

			  


			  
        	  $.ajax({
        	    type: 'GET',
        	    url: '/Holidays/holidays', // Replace with the actual controller name and action method to retrieve the holidays array list
        	    success: function(data) {
        	      holidays = data;
        	      // Use the holidays array list in your JavaScript code here
        	      $('#calendar').fullCalendar({
        	        // options...

        	        dayRender: function(date, cell) {
        	          var day = date.day();
        	          var dateString = date.format('YYYY-MM-DD');

        	          // Add background color for selected dates
        	          if (selectedDates.includes(dateString)) {
        	            cell.addClass('selected');
        	            cell.text('Registered');
        	            cell.css('padding-bottom', '25px');
        	            cell.css('text-align', 'center');
        	          }

        	          // Apply other styling rules based on your conditions...
        	          if (holidays.find(function(holiday) {
        	              return holiday.date === dateString;
        	            })) {
        	            // Apply holiday styling
        	          } else if (moment(date).isBefore(moment(), 'day')) {
        	            // Apply styling for past dates
        	          } else if (moment(date).isSame(moment(), 'day')) {
        	            // Apply styling for the current day
        	          } else if (moment(date).isSame(moment(), 'month')) {
        	            // Apply styling for dates in the current month
        	          } else if (isLastWeek && moment(date).isAfter(lastWeekEnd)) {
        	            // Apply styling for dates in the next month if current date is in the last week of the current month
        	          } else {
        	            // Apply styling for other dates
        	          }

        	          // set selectable to true for all other dates
        	          cell.data('selectable', true);
        	          var nextMonth = moment().add(1, 'months');
        	          var currentMonth=moment(date).isSame(moment(), 'month');
        	          
        	         
        	          
        	          //var nextMonday = moment().day(1 + 7 - moment().day() % 7);
    	        	  // Find the next Friday
    	        	  //var nextFriday = moment(nextMonday).add(4, 'days').day(5);
        	          
        	          
						
        	          

        	          
        	          
        	          var startOfWeek = moment().startOf('week'); // Get the start of the current week
        	          var endOfWeek = moment().endOf('week');
        	          var endOfCurrentWeek = moment().endOf('week').day(5).hour(14); // Friday 14:00 hours of the current week
        	          var startOfNextWeek = moment(endOfCurrentWeek).add(1, 'day').startOf('week').add(1, 'week');

        	          if (currentDate < targetDate && !moment(date).isSame(moment(), 'month')) {
        	        	  // Disable the date
        	        	  cell.css('background-color', 'OldLace');
        	        	  cell.css('color', 'DarkSlateGray');
        	        	  cell.css('padding-left', '10px');
        	        	  cell.css('padding-bottom', '25px');
        	        	  cell.addClass('disabled');
        	        	  cell.data('selectable', false);

        	        	  // Append the box to the cell
        	        	  cell.empty().append(box);
        	        	  
        	        	  cell.on('click', function() {
        	        		  document.getElementById("errorShow").innerHTML="You can't select Next month!";
          	        		showAlertBox(1);
        	            	});
        	        	}
        	          if (currentDate > targetDate && moment(date).isSame(moment(), 'month')) {
        	        	  // Disable the date
        	        	  cell.css('background-color', 'OldLace');
        	        	  cell.css('color', 'DarkSlateGray');
        	        	  cell.css('padding-left', '10px');
        	        	  cell.css('padding-bottom', '25px');
        	        	  cell.addClass('disabled');
        	        	  cell.data('selectable', false);

        	        	  // Append the box to the cell
        	        	  cell.empty().append(box);
        	        	  
        	        	  cell.on('click', function() {
        	        		  document.getElementById("errorShow").innerHTML="You can't select this month!";
          	        		showAlertBox(1);
        	            	});
        	        	}else if(currentDate > targetDate && moment(date).isAfter(nextMonth, 'month')){
        	        		cell.css('background-color', 'rgb(234, 231, 212)');
          	        	  cell.css('color', 'DarkSlateGray');
          	        	  cell.css('padding-left', '10px');
          	        	  cell.css('padding-bottom', '25px');
          	        	  cell.addClass('disabled');
          	        	  cell.data('selectable', false);

          	        	  // Append the box to the cell
          	        	  cell.empty().append(box);
          	        	  
          	        	cell.on('click', function() {
        	        		  document.getElementById("errorShow").innerHTML="You can't select next month!";
        	        		showAlertBox(1);
      	            	 
      	            	});
        	        	}
        	          
						
        	          //com
        	          // Check if the date belongs to the previous month
        	          if (date.isSame(moment(currentDate).subtract(1, 'month'), 'month')) {
        	        	// Create a box around the cell.text using a <div> element
        	        	  cell.css('background-color', 'LightYellow');
        	        	  cell.css('color', 'DarkSlateGray');
        	        	  cell.css('padding-left', '10px');
        	        	  cell.css('padding-bottom', '25px');
        	        	  cell.addClass('disabled');
        	        	  cell.data('selectable', false);

        	        	  

        	        	  // Append the box to the cell
        	        	  cell.empty().append(box);
        	        	  
        	          }
        	          

        	          
        	          if (moment(date).isBefore(moment(), 'day')) {
          	        	// Create a box around the cell.text using a <div> element
          	        	  cell.css('background-color', 'rgb(234 231 212)');
          	        	  cell.css('color', 'DarkSlateGray');
          	        	  cell.css('padding-left', '10px');
          	        	  cell.css('padding-bottom', '25px');
          	        	  cell.addClass('disabled');
          	        	  cell.data('selectable', false);

          	        	  

          	        	  // Append the box to the cell
          	        	  cell.empty().append(box);
          	        	cell.on('click', function() {
      	        		  document.getElementById("errorShow").innerHTML="This day is not available!";
      	        		showAlertBox(1);
    	            	 
    	            	});
          	        	  
                          }
        	          
        	          
        	         
        	          
        	          
        	          
        	          

        	         
        	          if (
                	            (moment().day() === 5 && moment().hour() >= 14) ||
                	            (moment().day() === 6 || moment().day() === 0)
                	          ) {
          	        	  if (moment(date).isBefore(nxtFriday) && moment(date).isAfter(nxtMonday)) {
                	              cell.css('background-color', '#ccc');
                	              cell.css('color', 'DarkSlateGray');
                	              cell.css('padding-left', '10px');
                	              cell.css('padding-bottom', '25px');
                	              cell.addClass('disabled');
                	              cell.data('selectable', false);

                	              // Append the box to the cell
                	              cell.empty().append(box);

                	              cell.on('click', function() {
                	                document.getElementById("errorShow").innerHTML = "You can't select next week!";
                	                showAlertBox(3);
                	              });
                	            }
                	          }
        	         
					
        	          
        	          
        	          if (date>=startOfWeek && date<=endOfWeek) {
        	        	  // Create a box around the cell.text using a <div> element
        	        	  cell.css('background-color', 'rgb(234, 231, 212)');
      	        	    cell.addClass('selected');
      	        	    cell.data('selectable', false);
      	        	    cell.css('color', 'black');
      	        	    cell.css('font-size', '10px');
      	        	    cell.css('font-weight', '70px');
      	        	    cell.css('padding-bottom', '25px');
      	        	    cell.css('text-align', 'center');
      	        	    
      	        	    
      	        	  cell.on('click', function() {
      	        		  document.getElementById("errorShow").innerHTML="You can't select current week!";
      	        		showAlertBox(1);
    	            	 
    	            	});
        	        	}
        	          
        	         
        	          
        	          if (day === 6) {
        	        	  // Create a box around the cell.text using a <div> element
        	        	  cell.css('background-color', 'rgb(167 189 230)');
      	        	    cell.addClass('selected');
      	        	    cell.data('selectable', false);
      	        	    cell.css('color', 'black');
      	        	    cell.css('font-size', '10px');
      	        	    cell.css('padding-left','0px')
      	        	    cell.css('text-align', 'center');
      	        	    
      	        	    
      	        	  cell.on('click', function() {
      	        		  document.getElementById("errorShow").innerHTML="You can't select saturday!";
      	        		showAlertBox(1);
    	            	 
    	            	});
        	        	}
        	          if (day === 0) {
        	        	  // Create a box around the cell.text using a <div> element
        	        	  cell.css('background-color', 'rgb(167 189 230)');
      	        	    cell.addClass('selected');
      	        	    cell.data('selectable', false);
      	        	    
      	        	    
      	        	  cell.on('click', function() {
      	        		  document.getElementById("errorShow").innerHTML="You Can't select sunday";
      	        		showAlertBox(1);
    	            	 
    	            	});
      	        	    
        	        	}
        	          

        	          if (day === 0 || day === 6) {
        	            cell.addClass('disabled');
        	            cell.data('selectable', false);
        	          }
        	          
        	       // Apply holiday styling and handle click event
        	          for (var i = 0; i < holidays.length; i++) {
        	            if (holidays[i].date === dateString) {
        	              cell.css('background-color', 'rgb(255 205 107)');
        	              cell.addClass('selected');
        	              cell.data('selectable', false);
        	              cell.css('font-size', '10px');
        	              cell.css('font-weight', '70px');
        	              cell.css('padding-bottom', '25px');
        	              cell.css('padding-left', '7px');
        	              // Create a box around the cell.text using a <div> element
        	              var box = $('<div>')
        	                .css('padding', '5px')
        	                .css('color', 'black')
        	                .css('margin-right', '5px')
        	                .css('margin-top','55px')
        	                .css('display', 'inline-block');
        	              
        	              // Set the text of the box
        	              box.text(holidays[i].holidays);
        	              
        	              // Append the box to the cell
        	              cell.empty().append(box);
							
        	              cell.on('click', function() {
          	        		  document.getElementById("errorShow").innerHTML="You can't select holiday!";
          	        		showAlertBox(1);
        	            	 
        	            	}); 	              
        	              
        	              
        	            }
        	          }
        	          
if (cell.data('selectable') !== false && cell.text()!=='Registered'){
        	        	  
        	        	  cell.css('background-color', '#fff');
        	        	  
        	        	  
    	        	    
    	        	    // Append the box to the cell
    	        	    cell.empty().append(box);
        	        	  
        	          }
if (moment(date).isSame(moment(), 'day')) {
    // Disable the date
    //cell.css('background-color', 'rgb(241 203 237)');
    cell.addClass('disabled');
    cell.data('selectable', false);
    cell.text('TODAY');
    cell.css('margin-top','55px');
    cell.on('click', function() {
		  document.getElementById("errorShow").innerHTML="You can't select today!";
		showAlertBox(1);
  	 
  	}); 
  }
        	          
        	        }
        	      });
        	    },
        	    error: function(xhr, textStatus, errorThrown) {
        	      console.log('Error retrieving holidays: ' + errorThrown);
        	    }
        	  });

        	  $('#calendar').on('click', '.fc-day', function() {
        		  var date = $(this).attr('data-date');
        		  date = moment(date).format('YYYY-MM-DD');

        		  if ($(this).data('selectable') !== false) {
        		    if ($(this).hasClass('selected')) {
        		      $(this).removeClass('selected');
        		      $(this).text('');
        		      $(this).css('background-color', '#fff');
        		      $(this).css('color', 'black');
        		      $(this).css('font-size', '15px');
        		      var index = selectedDates.indexOf(date);
        		      if (index !== -1) {
        		        selectedDates.splice(index, 1);
        		      }
        		    } else {
        		      if (!$(this).hasClass('disabled')) {
        		        
        		        
        		        $(this).addClass('selected');
        		        $(this).text('Registered');
        		        $(this).css('background-color', 'rgb(223 255 249)');
        		        $(this).css('color', 'black');
        		        $(this).css('font-size', '15px');
        		        $(this).css('padding-bottom', '25px');
        		        $(this).css('text-align', 'center');
        		        
        		        if (holidays.findIndex(function(holiday) {
        		            return holiday.date === date;
        		          }) === -1 && !$(this).hasClass('disabled')) {
        		          selectedDates.push(date);
        		        }
        		      }
        		    }
        		    console.log(selectedDates);
        		    $('#registerlunch').val(selectedDates.join(','));
        		  } 
        		});
        	  
        	  
        	  function selectAllDates() {
        		  $('.fc-day').each(function() {
        		    var date = $(this).attr('data-date');
        		    date = moment(date).format('YYYY-MM-DD');

        		    if ($(this).data('selectable') !== false && !$(this).hasClass('disabled')) {
        		      if (!$(this).hasClass('selected')) {
        		        $(this).addClass('selected');
        		        $(this).text('Registered');
        		        $(this).css({
        		          'background-color': 'rgb(223 255 249)',
        		          'color': 'black',
        		          'font-size': '15px',
        		          'padding-bottom': '25px',
        		          'text-align': 'center'
        		        });

        		        if (holidays.findIndex(function(holiday) {
        		            return holiday.date === date;
        		          }) === -1) {
        		          selectedDates.push(date);
        		        }
        		      }
        		    }
        		  });

        		  console.log(selectedDates);
        		  $('#registerlunch').val(selectedDates.join(','));
        		}
        	  
        	  
        	  
        	  function unselectAllDates() {
        		  $('.fc-day.selected').each(function() {
        		    if ($(this).data('selectable') !== false && !$(this).hasClass('disabled')) {
        		      var date = $(this).attr('data-date');
        		      date = moment(date).format('YYYY-MM-DD');

        		      $(this).removeClass('selected');
        		      $(this).text('');
        		      $(this).css({
        		        'background-color': 'rgb(255, 255, 255)',
        		        'color': '',
        		        'font-size': '',
        		        'padding-bottom': '',
        		        'text-align': ''
        		      });

        		      var index = selectedDates.indexOf(date);
        		      if (index !== -1) {
        		        selectedDates.splice(index, 1);
        		      }
        		    }
        		  });

        		  console.log(selectedDates);
        		  $('#registerlunch').val(selectedDates.join(','));
        		}

        	  
        	  
        	  $('#unselectAllButton').on('click', function() {
        		  unselectAllDates();
        		});
        	  

        		$('#selectAllButton').on('click', function() {
        		  selectAllDates();
        		});

        	  
        	  






        	  
        	  


        	});
         

       
  </script>
  <script>
  	

  </script>
  <script>
  document.getElementById("setting-icon").addEventListener("click", function() {
      document.getElementById("settings-menu").style.display = "block";
    });

    document.getElementById("close-settings").addEventListener("click", function() {
      document.getElementById("settings-menu").style.display = "none";
    });</script>
    
     <script>

window.onload = function() {
    var success1 = "[[${success}]]";
    var success = "[[${message}]]";
    var Delete = "[[${Delete}]]";
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