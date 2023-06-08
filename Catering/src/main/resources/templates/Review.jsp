<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Review</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->

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

    
    <!-- for full calendar cdn end -->

    <style>
    .ggcalendar{
    margin-top: 100px;
}
    .fa-solid, .fas {
    color: #f5ebeb;
}
.card-intro-title{
    font-size: 25px;
    background: linear-gradient(
      to right,
      #19A6F1,
      #9619F1,
      #9619F1,
      #9619F1,
      rgba(0, 0, 0, 0)
    );
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    animation: h1anim 5s linear forwards;
    background-size: 300% auto;
    display: flex;
    background-position: 50% center;
    background-repeat: no-repeat;
    margin-: 10px;
     width: 150%;
  }

element.style {
    width: 130%;
}


  h2 {
    font-size: 40px;
    background: linear-gradient(
      to right,
      #19A6F1,
      #19A6F1,
      #9619F1,
      #9619F1,
      rgba(0, 0, 0, 0)
    );
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    animation: h1anim 5s linear forwards;
    background-size: 200% auto;
    display: inline-block;
    background-position: 100% center;
    background-repeat: no-repeat;
    margin: 20px;
  }




@keyframes h1anim {
  from {
    background-position: 150% center;
  }
  to {
    background-position: 0 center;
  }
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
<!--  -->


.fc-day:not(.selected):nth-child(7n+1),
.fc-day:not(.selected):nth-child(7n) {
  background-color: #f5f5f5;
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
                width: 100%;
            }
            .calendar-container .fc-day,
  .calendar-container .fc-day-top {
    font-size: 10px !important;
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
	color:#559FC7;
}
.my-icon {
  color:#F0E204;
}

.my-iconz{
	color:#06E37C;
}

.my-iconp{
	color:#8FD40D;
}

.my-iconq{
	color:#AD1AF6;
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
.fc-event, .fc-event:hover {
    color: black;
}
.fc-event {
    position: relative;
    display: block;
    padding:3px;
    font-size: 1.1em;
    line-height: 1.3;
    border-radius: 3px;
    border: 1px solid #3a87ad;
}


#date {
  width: 80px;
  height: 80px;
}

.magnifier {
  animation: zoom 4s infinite linear;
  transform-origin: 50% 50%;
  transform-box: fill-box;
}

@keyframes zoom {
  30% {
    transform: rotate(-10deg) translateX(-4px);
  }
  40% {
    transform: rotate(10deg);
  }
  60% {
    transform: translateY(3px) translateX(3px);
  }
  100% {
    transform: translateY(4px) translateX(4px) scale(1.1);
  }
}

@keyframes blink {
  20% {
    transform: scale(1.2);
  }
  40% {
    transform: rotate(8deg) scale(0.7);
  }
  100% {
    transform: scale(1.2);
  }
}

@keyframes blink2 {
  10% {
    transform: scale(1.1);
  }
  30% {
    transform: rotate(-12deg) scale(0.9);
  }
  90% {
    transform: scale(1.1);
  }
}

@keyframes blink3 {
  30% {
    transform: scale(1.1);
  }
  50% {
    transform: rotate(-10deg) scale(0.9);
  }
  80% {
    transform: scale(1.1);
  }
}

 .cl-1 {
              fill: #fefdf0;
            }
    
            .cl-2 {
              fill: #e84055;
            }
    
            .cl-3 {
              fill: #cdcbbe;
            }
    
            .cl-4 {
              fill: #efeee4;
            }
    
            .cl-5 {
              fill: #cbc9bc;
            }
    
            .cl-6 {
              fill: #89af45;
            }
    
            .cl-7 {
              fill: #d2dd84;
            }
    
            .cl-8 {
              fill: none;
            }
    
            .cl-9 {
              fill: #7ac8d0;
              opacity: 0.74;
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
 
		<form action="api/excel/uploadExcelToDatabase" id="employee_data" method="post" enctype = "multipart/form-data">
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
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please enter your feedback:</label><br>
                <input type="hidden" name="review" value="review">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
        
        <main>           
           
          
            <div class="page-content">          
               
			
				
                <div class="records table-responsive" id="records">
                   

                    <div class="container" style="margin-top:40px;margin-left:30px;">
					
       				 <div class="row">
       				  
						  	<svg id="date" data-name="Warstwa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 79.37 79.37">
    
        <g id="ggcalendar">
          <path class="cl-1" d="M21.79,12.2H57.07a4.66,4.66,0,0,1,4.66,4.66V57.1a1,1,0,0,1-1,1H18.13a1,1,0,0,1-1-1V16.85A4.66,4.66,0,0,1,21.79,12.2Z" />
          <path class="cl-2" d="M57.3,12.21l-35.59,0c-2.69,0-4.58,1.31-4.58,4.86V21.9h44.6V17.05C61.73,13.86,60,12.21,57.3,12.21Z" />
          <circle class="cl-1" cx="22.63" cy="17.37" r="1.29" />
          <circle class="cl-1" cx="56.24" cy="17.37" r="1.29" />
          <path class="cl-3" d="M55.27,14a.5.5,0,0,1-.5-.5V9.62a.5.5,0,0,1,.5-.5.51.51,0,0,1,.5.5V13.5A.5.5,0,0,1,55.27,14Z" />
          <path class="cl-3" d="M50.74,14a.5.5,0,0,1-.5-.5V9.62a.51.51,0,0,1,.5-.5.5.5,0,0,1,.5.5V13.5A.5.5,0,0,1,50.74,14Z" />
          <path class="cl-3" d="M46.22,14a.5.5,0,0,1-.5-.5V9.62a.5.5,0,0,1,.5-.5.51.51,0,0,1,.5.5V13.5A.5.5,0,0,1,46.22,14Z" />
          <path class="cl-3" d="M41.69,14a.5.5,0,0,1-.5-.5V9.62a.51.51,0,0,1,.5-.5.5.5,0,0,1,.5.5V13.5A.5.5,0,0,1,41.69,14Z" />
          <path class="cl-3" d="M37.17,14a.5.5,0,0,1-.5-.5V9.62a.5.5,0,1,1,1,0V13.5A.5.5,0,0,1,37.17,14Z" />
          <path class="cl-3" d="M32.64,14a.5.5,0,0,1-.5-.5V9.62a.51.51,0,0,1,.5-.5.5.5,0,0,1,.5.5V13.5A.5.5,0,0,1,32.64,14Z" />
          <path class="cl-3" d="M28.12,14a.5.5,0,0,1-.5-.5V9.62a.5.5,0,0,1,1,0V13.5A.5.5,0,0,1,28.12,14Z" />
          <path class="cl-3" d="M23.6,14a.5.5,0,0,1-.5-.5V9.62a.5.5,0,0,1,.5-.5.51.51,0,0,1,.5.5V13.5A.5.5,0,0,1,23.6,14Z" />
    
          <rect class="cl-4" x="34.26" y="28.04" width="3.88" height="3.88" />
          <rect class="cl-4" x="40.72" y="28.04" width="3.88" height="3.88" />
          <rect class="cl-4" x="47.19" y="28.04" width="3.88" height="3.88" />
          <rect class="cl-4" x="53.65" y="28.04" width="3.88" height="3.88" />
          <rect class="cl-4" x="27.8" y="34.51" width="3.88" height="3.88" />
          <rect class="cl-4" x="34.26" y="34.51" width="3.88" height="3.88" />
          <rect class="cl-4" x="40.72" y="34.51" width="3.88" height="3.88" />
          <rect class="cl-4" x="47.19" y="34.51" width="3.88" height="3.88" />
          <rect class="cl-4" x="53.65" y="34.51" width="3.88" height="3.88" />
          <rect class="cl-4" x="21.33" y="34.51" width="3.88" height="3.88" />
          <rect class="cl-4" x="27.8" y="40.97" width="3.88" height="3.88" />
          <rect class="cl-4" x="34.26" y="40.97" width="3.88" height="3.88" />
          <rect class="cl-4" x="40.72" y="40.97" width="3.88" height="3.88" />
          <rect class="cl-4" x="47.19" y="40.97" width="3.88" height="3.88" />
          <rect class="cl-4" x="53.65" y="40.97" width="3.88" height="3.88" />
          <rect class="cl-4" x="21.33" y="40.97" width="3.88" height="3.88" />
          <rect class="cl-4" x="27.8" y="47.43" width="3.88" height="3.88" />
          <rect class="cl-4" x="34.26" y="47.43" width="3.88" height="3.88" />
          <rect class="cl-4" x="21.33" y="47.43" width="3.88" height="3.88" />
          <rect class="cl-4" x="40.55" y="47.43" width="3.88" height="3.88" />
          <rect class="cl-4" x="27.8" y="28.04" width="3.88" height="3.88" />
    
          <g class="magnifier">
            <rect class="cl-5" x="35.46" y="53.63" width="4.31" height="2" transform="translate(-27.62 42.6) rotate(-45)" />
            <rect class="cl-6" x="26.49" y="53.45" width="6.15" height="18.45" rx="2.72" ry="2.72" transform="translate(52.98 -2.55) rotate(45)" />
            <path class="cl-7" d="M36.17,56.05C34.53,54.58,33.06,54.86,32,56l-.2.2.43.43,3.92,3.92.2-.2A2.83,2.83,0,0,0,36.17,56.05Z" />
            <line class="cl-8" x1="31.84" y1="56.69" x2="35.76" y2="60.6" />
            <circle class="cl-9" cx="48.73" cy="43.52" r="10.76" />
            <path class="cl-5" d="M58.27,34a13.53,13.53,0,1,0,0,19.13A13.51,13.51,0,0,0,58.27,34Zm-2,17.18a10.77,10.77,0,1,1,0-15.23A10.77,10.77,0,0,1,56.32,51.16Z" />
          </g>
        </g>
      </svg>
       				 
						  <h2 class="green"> <b>Review of Your Lunch Date</b>
						  
						  </h2> 
					
       				 <br>
       				 <hr>
       				 <br>
       				 
  <div id="calendar" class="col-lg-10"></div>
  <div class="col-lg-2" style="margin-top:50px; margin-left:50px;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-intro-title"><b>Review History</b></h4>

                                <div class="">
                                    <div id="external-events" class="my-3">
                                        <div style="margin-button:50px;" class="external-event" data-class="bg-primary"><i class="fa-solid fa-circle my-icon"></i>    Holidays</div>
                                        <div style="margin-button:50px;" class="external-event" data-class="bg-success"><i class="fa-solid fa-circle my-icons"></i>    Weekends
                                        <div style="margin-button:50px;" class="external-event" data-class="bg-success"><i class="fa-solid fa-circle my-iconz"></i>  Register-Eat
                                        <div style="margin-button:50px;" class="external-event" data-class="bg-success"><i class="fa-solid fa-circle my-iconp"></i>  Register-No-Eat
                                        <div style="margin-button:50px;" class="external-event" data-class="bg-success"><i class="fa-solid fa-circle my-iconq"></i>  Un-Register-Eat
                                        </div>
                                        
                                    
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                
  
</div>

<div class="col-lg-2" style="margin-top:50px; margin-left:50px;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-intro-title"><b>Advoid Meals</b></h4>

                                <div class="">
                                    <div id="external-events" class="my-3" th:each="meal : ${meat}">
                                        <div style="margin-button:50px;" class="external-event" data-class="bg-primary" th:text="${meal.name}"><i class="fa-solid fa-circle my-icon"></i></div>
                                        </div>
                                        
                                    
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                
  
</div>
  
  
</div>
 <br>
 <br>
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
    var redates =[];
    var rnedates =[];
    var uedates = [];
   
    $.ajax({
        type: 'GET',
        url: '/Holidays/redate',
        success: function (redates) {
            console.log(redates);
            $.ajax({
                type: 'GET',
                url: '/Holidays/holidays',
                success: function (holidays) {
                    console.log(holidays);
                    $.ajax({
                        type: 'GET',
                        url: '/Holidays/rnedate',
                        success: function (rnedates) {
                        	$.ajax({
                                type: 'GET',
                                url: '/Holidays/uedate',
                                success: function (uedates) {
                                	var events2 = [];
                                    for (var i = 0; i < uedates.length; i++) {
                                        var date = uedates[i].uedate;
                                        events2.push({
                                            title: 'Un-Register-Eat',
                                            start: date,
                                            backgroundColor: '#AD1AF6',
                                            color: '#24475A',
                                            fontSize: '14px',
                                            selectable: false
                                        });
                                    
                                }
                            var events1 = [];
                            for (var i = 0; i < rnedates.length; i++) {
                                var date = rnedates[i].rnedate;
                                events1.push({
                                    title: 'Register-No-Eat',
                                    start: date,
                                    backgroundColor: '#8FD40D',
                                    color: '#24475A',
                                    fontSize: '14px',
                                    selectable: false
                                });
                            }
                    var events = [];
                    for (var i = 0; i < redates.length; i++) {
                        var date = redates[i].redate;
                        events.push({
                            title: 'Register-Eat',
                            start: date,
                            backgroundColor: '#06E37C',
                            color: '#24475A',
                            fontSize: '14px',
                            selectable: false
                        });
                    }
                    for (var i = 0; i < holidays.length; i++) {
                        var date = holidays[i].date;
                        events.push({
                            title: holidays[i].holidays,
                            start: date,
                            backgroundColor: '#F0E204',
                            color: '#24475A',
                            fontSize: '100px',
                            padding:'7px',
                            selectable: false
                        });
                    }
                    $('#calendar').fullCalendar({
                        height: 600,
                        dayRender: function(date, cell) {
                            var day = date.day();
                            if (day === 0 || day === 6) {
                                cell.css('background-color', '#559FC7');
                                cell.addClass('disabled');
                                cell.data('selectable', false);
                            }
                        },
                        events: events.concat(events1,events2)
                    });
                        },
                        error: function (xhr, textStatus, errorThrown) {
                            console.log('Error retrieving holidays: ' + errorThrown);
                        }
                    });
                },
                error: function (xhr, textStatus, errorThrown) {
                    console.log('Error retrieving holidays: ' + errorThrown);
                }
            });
                },
                error: function (xhr, textStatus, errorThrown) {
                    console.log('Error retrieving holidays: ' + errorThrown);
                }
            });
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('Error retrieving Register-Eat: ' + errorThrown);
        }
    });


   
    
    
    
    $('#calendar').on('click', '.fc-day', function() {
      // Get the date of the clicked cell
      var date = $(this).attr('data-date');
      date = moment(date).format('YYYY-MM-DD');
      // Check if the cell is selectable
      if ($(this).data('selectable') !== false) {
        // Check if the date is already selected
        if ($(this).hasClass('selected')) {
          // Unselect the date
          $(this).removeClass('selected');
          // Remove the date from the selected dates list
          var index = selectedDates.indexOf(date);
          if (index !== -1) {
            selectedDates.splice(index, 1);
          }
        } else {
          // Select the date
          $(this).addClass('selected');
          // Add the date to the selected dates list, only if it's not a holiday or weekend day
          if (holidays.indexOf(date) === -1 && $(this).hasClass('disabled') === false) {
            selectedDates.push(date);
          }
        }
        // Log the current selection for debugging purposes
        console.log(selectedDates);
        // Update the hidden input value with the selected dates
        $('#registerlunch').val(selectedDates.join(','));
     
      }
    });


  </script>
  <script>
  	//upload file for upload
  	


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