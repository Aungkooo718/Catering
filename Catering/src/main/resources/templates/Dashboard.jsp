 <!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <link rel="stylesheet" type="text/css" href="/css/viewcost.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://unpkg.com/simplebar@latest/dist/simplebar.min.css" />
<script src="https://unpkg.com/simplebar@latest/dist/simplebar.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
<script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
<script src="https://unpkg.com/html-docx-js/dist/html-docx.min.js"></script>
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
    
   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->


<!-- for excel model box -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Include Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/box.css">
    <script src="js/box.js"></script>
    
    
    <style>
    
    
    

body {
  display: grid;
  place-items: center;
  height: 100vh;
  margin: 0;
  background: #0f0514;
  font-family: monospace;
}

.loader {
  font-size: 25vmin;
  width: 1em;
  height: 1em;
  background-color: #21346e;
  border-radius: 1em;
  position: relative;
}
.loader::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  border: 0.1rem solid #21346e;
  border-radius: inherit;
}
.loader.loaded::after {
  opacity: 0;
  border-color: #3d7af5;
  transform: scale(1.6);
  transition: opacity 0.6s ease, transform 0.6s ease-out;
}
.loader .meter {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: inherit;
  overflow: hidden;
}
.loader .meter .fill {
position: fixed;
	top: 53%;
	left: 50%;
	
  background-color: #3d7af5;
  width: 100%;
  height: 0%;
  position: absolute;
  left: 0;
  bottom: 0;
  z-index: 10;
  transform: translateY(1.5vh);
  filter: drop-shadow(0 0 1rem black);
  transition: height 0.2s linear;
}
.loader .meter .fill svg {
  color: #3d7af5;
  position: absolute;
  transform: translateY(calc(-100% + 1px));
  width: 200%;
  animation: waves 4s ease-in-out infinite alternate;
}
@keyframes waves {
  0% {
    left: -10%;
    top: 2vh;
  }
  50% {
    top: 0vh;
  }
  100% {
    left: -60%;
    top: 1vh;
  }
}
.loader .meter .fill-text {
  position: absolute;
  z-index: 15;
  top: 50%;
  left: 50%;
  font-size: 1rem;
  transform: translate(-50%, -50%);
  color: rgba(15, 5, 20, 0.9);
  text-transform: uppercase;
  letter-spacing: 0.1em;
  font-weight: 900;
  pointer-events: none;
}
.loader .ball {
  position: absolute;
  background-color: #21346e;
  top: 50%;
  left: 0;
  border-radius: inherit;
}
.loader .ball.a {
  width: 0.25em;
  height: 0.25em;
  transform-origin: 1.5em;
  animation: rotate-a 4s linear infinite;
}
.loader .ball.b {
  width: 0.3em;
  height: 0.3em;
  transform-origin: 1em;
  animation: rotate-b 7s linear reverse infinite;
}
@keyframes rotate-a {
  from {
    transform: translate(-1em, -50%) rotate(0deg);
  }
  to {
    transform: translate(-1em, -50%) rotate(360deg);
  }
}
@keyframes rotate-b {
  from {
    transform: translate(-0.5em, -50%) rotate(0deg);
  }
  to {
    transform: translate(-0.5em, -50%) rotate(360deg);
  }
}

.reload-button {
  position: absolute;
  bottom: 1rem;
  left: 1rem;
  border: 0;
  background-color: #21346e;
  font-family: monospace;
  color: rgba(15, 5, 20, 0.9);
  border-radius: 8px;
  padding: 1rem 2rem;
  box-shadow: 0 0 1rem 0.25rem rgba(0, 0, 0, 0.5);
  text-transform: uppercase;
  letter-spacing: 0.1em;
  outline: none;
  font-weight: 900;
}
.reload-button:hover {
  background-color: #3d7af5;
  cursor: pointer;
  box-shadow: 0 0 0.5rem 0.125rem rgba(0, 0, 0, 0.5);
}
.reload-button:active {
  transform: translateY(0.5em);
}

.signature {
  position: absolute;
  bottom: 1rem;
  right: 1rem;
}
.signature a {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: #ffffff;
  font-family: monospace;
}
.signature img {
  height: 2rem;
  width: 2rem;
  margin-left: 1em;
  border-radius: 2rem;
}</style>

    
    <style>


.alert {
 	 position: fixed;
	top: 53%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 5;
	color: black;
	padding: 5px 20px 20px 10px;
	text-align: center;
	font-size: 18px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	display: none;
	border-radius: 1rem;
	width: 100%; height : 100%;
	min-width: 100%;
	animation: show-alert 2s ease-in-out forwards;}  
	.content { display : flex;
	align-items: center;
	height: 820px;
	
}
@keyframes show-alert {
	0% {
		opacity: 0;
		transform: translate(-50%, -50%) scale(0.5);
	}
	100% {
		opacity: 1;
		transform: translate(-50%, -50%) scale(1);
	}
}

.icon {
	padding: 0.5rem;
	margin-right: 1rem;
	border-radius: 39% 61% 42% 58%/50% 51% 49% 50%;
	box-shadow: 0px 3.2px 13.8px rgba(0, 0, 0, 0.02), 0px 7.6px 33.3px
		rgba(0, 0, 0, 0.028), 0px 14.4px 62.6px rgba(0, 0, 0, 0.035), 0px
		25.7px 111.7px rgba(0, 0, 0, 0.042), 0px 48px 208.9px
		rgba(0, 0, 0, 0.05), 0px 115px 500px rgba(0, 0, 0, 0.07)
}

.close {
	background-color: transparent;
	border: none;
	outline: none;
	transition: all 0.2s ease-in-out;
	padding: 0.75rem;
	border-radius: 0.5rem;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
}

.close:hover {
	background-color: #fff;
}

.info {
	background-color: rgba(0, 108, 227, 0.2);
	border: 2px solid #006CE3;
}

.info .icon {
	background-color: #006CE3;
}

.warning {
	background-color: black;
	border: 2px solid white;
}

.warning .icon {
	background-color: white;
}
</style>
    
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
.card:hover {
    background-color: #f0f0f0;
    border: 2px solid #858585;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    transform: scale(1.03);
    transition: all 0.3s ease;

}

  .simplebar-track {
        background-color: #303030;
        border-radius: 4px;
    }

    /* Scrollbar Thumb */
    .simplebar-scrollbar:before {
        background-color: red;
        border-radius: 4px;
    }

    /* Hovered Scrollbar Thumb */
    .simplebar-scrollbar:hover:before {
        background-color: #555;
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
.table {
  width: 65%;
  border: 2px solid #ddd;
  margin-right:200px;
  margin-button:30px;
}

* {
    margin: 0;
    padding: 0;
    text-decoration: none;
    list-style-type: none;
}
.btn{
	font-size:1.5rem
}
table tbody td:first-child{
	font-size:1.3rem
}
body{
	font-size:1.3rem;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font-size: 14px;
    line-height: inherit;
}
.input-group-text,.form-control{
font-size:1.5rem
}			
.card-progress small {
    color: #777;
    font-size: 1.2rem;
    font-weight: 600;
}
.small, small {
    font-size: 100%;
    font-weight: 400;
}		



table {
        width: 100%;
        border-collapse: collapse;
      }

      th,
      td {
        padding: 8px;
        text-align: center;
        border: 1px solid black;
      }

      /* Styles for PDF version */
      @media screen {
        /* Styles for HTML display */
        .myTable {
          display: none;
        }
      }

      @media print {
        /* Styles for PDF generation */
        table {
          width: 100%;
          border-collapse: collapse;
        }

        th,
        td {
          padding: 8px;
          text-align: center;
          border: 1px solid black;
        }

        th:nth-child(1) {
          /* Adjust width of the "Date" column */
          width: 250px;
        }

        td {
          /* Center-align all columns */
          text-align: center;
        }
      }
      
      table thead th {
    padding: 1rem 0rem;
    text-align: left;
    color: #444;
    text-align:center;
    font-size: 1.2rem;
}


.imgannounce{

					
  width: 520px;
  height: 660px;


    border: 1px solid black;

}
/*for model file upload  box*/
.modal-dialog {
            margin-top: 200px;
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
               <!--<div th:replace="fragments :: s_header" ></div>  -->
               <div th:if="${session.role=='ADMIN' and session.Doorlog=='555555'}">
	 <ul id="sidebar">
                    <li>
                       <a href="/dashboard">
                            <span class="las la-home"></span>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                       <a href="/employees">
                            <span class="las la-user-alt"></span>
                            <small>People</small>
                        </a>
                    </li>
                    <li>
                       <a href="/doorlog">
                            <span class="fa-solid fa-door-closed"></span><br>
                            <small>Doorlog</small>
                        </a>
                    </li>
                    <hr>
                    <li>
                       <a href="/viewProfile">                       
                            <span class="fa-solid fa-gear" id="setting-icon" ></span>
                            <small>Profile</small>
                        </a>
                    </li>
                    <li>
                       <a href="/logout">
                            <span class="fa-solid fa-right-from-bracket"></span>
                            <small>Logout</small>
                        </a>
                    </li>

                </ul>
    </div>
    <div th:if="${session.role=='ADMIN' and session.Doorlog!='555555'}">
	 <ul id="sidebar">
                    <li>
                       <a href="/dashboard">
                            <span class="las la-home"></span>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                       <a href="/employees">
                            <span class="las la-user-alt"></span>
                            <small>People</small>
                        </a>
                    </li>
                    <li>
                       <a href="/doorlog">
                            <span class="fa-solid fa-door-closed"></span><br>
                            <small>Doorlog</small>
                        </a>
                    </li>
                    <li>
                       <a href="/register">
                            <span class="fa-solid fa-calendar"></span>
                            <small>Let's Eat</small>
                        </a>
                    </li>
                    <hr>
                    <li>
                       <a href="/viewProfile">                       
                            <span class="fa-solid fa-gear" id="setting-icon" ></span>
                            <small>Profile</small>
                        </a>
                    </li>
                    <li>
                       <a href="/logout">
                            <span class="fa-solid fa-right-from-bracket"></span>
                            <small>Logout</small>
                        </a>
                    </li>

                </ul>
    </div>
    
    
    <div th:if="${session.role=='Operator' }">
    
    
   
                <ul id="sidebar">
                    <li>
                       <a href="/dashboard">
                            <span class="las la-home"></span>
                            <small>Menu</small>
                        </a>
                    </li>
                   
                    <li>
                       <a href="/register">
                            <span class="fa-solid fa-calendar"></span>
                            <small>Let's Eat</small>
                        </a>
                    </li>
                    <hr>
                    <li>
                      <a href="/viewProfile"> 
                            <span class="fa-solid fa-gear" id="setting-icon" ></span>
                            <small>Profile</small>
                        </a>
                    </li>
                    <li>
                       <a href="/logout">
                            <span class="fa-solid fa-right-from-bracket"></span>
                            <small>Logout</small>
                        </a>
                    </li>
                    
                </ul>
            
    </div>
    <!-- end of side bar -->
    
            </div>
        </div>
    </div>
    
    <div class="main-content">
        <!-- <div th:replace="fragments :: sub_header" ></div>  -->
        
        <div th:if="${session.role=='ADMIN' }">
		<header>
            <div class="header-content">
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>
                <div class="header-menu">
                
                <div class="dropdown">
                        <a href="/chatMessage" class="review"></a>
                        
                      </div>                        
                <div class="dropdown">
                        <button class="dropbtn">Import</button>
                        <div class="dropdown-content">
                          <a onclick="showFileImport(this)">Menu Import</a>
                          <a onclick="showAnnoImport(this)">Announce Import</a>
                          
                          
                          <!--href="api/excel/uploadHoliday" href="uploadExcel" href="api/excel/uploadEmp" href="api/excel/uploadDoorlogData"-->
                          <a onclick="showEmpUploadBox()">Employee Import</a>
                          <a onclick="showDoorlogUploadBox()">Doorlog Import</a>
                          <a onclick="showHolidayUploadBox()">Holiday Import</a>
                        </div>
                      </div>
                      <div class="dropdown">
                        <button class="dropbtn">Voucher</button>
                        <div class="dropdown-content">
                          <a href="/viewVoucher">View Voucher</a>
                          <a href="/monthlyVoucher">Monthly Voucher</a>
                        </div>
                      </div>
                      <div class="dropdown">
                        <button class="dropbtn">History</button>
                        <div class="dropdown-content">
                          <a href="/lunchInfo">Doorlog Info </a>
                          <a href="/last-date-doorlogNos">View Cost</a>
                        </div>
                      </div>      
                      <div class="dropdown">
                        <button class="dropbtn">LunchSetting</button>
                        <div class="dropdown-content">
                          <a href="/restaurants">Restaurant</a>
                          <a href="/order">Lunch Order</a>
                          <a href="/PriceTime">Lunch Info</a>
                          <a href="/avoidMeat">Avoid Meat</a>
                          <a href="/holidayView">Holiday View</a>
                          <a href="/feedback" >Feedback View</a>
                        </div>
                      </div>        
                      <div class="dropdown" th:if="${session.Doorlog!='555555'}">
                        <button class="dropbtn" onclick="showFeedbackDialog()">FeedBack</button>
                        
                      </div>           
                	<div class="dropdown">                        
                        <button class="dropbtn" onclick="location.href = '/about';">About</button>
                     </div>
                    <!-- <div th:if="${session.emailNoti==true}">
					<span>I am true</span>
					</div>
                    
                    <div  id="bell" style="margin-right: 15px;">
					  <span class="las la-bell la-2x" style="font-size: 25px;"></span>
					</div>  -->
					
					
					<div id="bell" th:if="${session.Doorlog!='555555'}" style="margin-right: 15px;" th:class="${session.emailNoti} ? 'highlight' : ''">
					  <span class="las la-bell la-2x" style="font-size: 25px;"></span>
					<span class="tooltip">Tooltip text goes here</span>
					</div>
					
				
					
					
                </div>
            </div>
        </header>
</div>

<div th:if="${session.role=='Operator' }">
		<header>
            <div class="header-content">
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>
                <div class="header-menu">
                <div class="dropdown">
                        <button onclick="location.href = '/chatMessage';" class="dropbtn">
                        </button>
                        
                      </div>                        
                
                      
                      
                      <div class="dropdown">
                        <button class="dropbtn" onclick="showFeedbackDialog()">FeedBack</button>
                        
                      </div>           
                <div class="dropdown">                        
                        <button class="dropbtn" onclick="location.href = '/about';">About</button>
                     </div>
                    
					<div id="bell" style="margin-right: 15px;" th:class="${session.emailNoti} ? 'highlight' : ''">
					  <span class="las la-bell la-2x" style="font-size: 25px;"></span>
					  <span class="tooltip">Tooltip text goes here</span>
					</div>
					
                    
                      
                    <div class="user">
                        <div class="bg-img" style="background-image: url(/images/DAT.png)"></div>
                        
                        <span class="las la-power-off"></span>
                      <a href="/logout">  <span>LogOut </span></a>
                    </div>
                </div>
            </div>
        </header>
</div>
        
        <!-- end of header -->
         
        
         <div style="z-index:3;display:none;" >        
        <div class="fileupload_dialogContent">
         <button onclick="hideDoorlogUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
		
        <h2 style="text-align: center;font-family: 'Roboto Slab', serif;margin-top: 20px;">Upload Doorlog</h2>
        <img style="margin-left:120px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
       <form>
      
         <input style="padding:12px;" type = "file" name = "file" value = "Browse File" /> 
         <input style="border-radius:5%;background-color:DarkTurquoise;margin-left:70px;margin-top:20px;padding:8px 90px 8px 90px;" value = "upload" /> <br /> <br /> 
         
          </form>
      </div>
      </div>
         
         
      
      <div id="doorlogfileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
         <button onclick="hideDoorlogUploadBox()" style="margin-left:330px;width:20px;"><i class="fa-solid fa-xmark"></i></button>
		
        <h2 style="text-align: center;font-family: 'Roboto Slab', serif;margin-top: 20px;">Upload Doorlog</h2>
        <img style="margin-left:120px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
       <form   action ="/api/excel/uploadDoorlogToDatabase" method = "POST" enctype = "multipart/form-data">
      
         <input style="padding:12px;" type = "file" name = "file" value = "Browse File" /> 
         <input style="border-radius:5%;background-color:DarkTurquoise;margin-left:70px;margin-top:20px;padding:8px 90px 8px 90px;" type = "submit" value = "upload" /> <br /> <br /> 
         
          </form>
      </div>
      </div>
      
      
      
      <div id="fileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
        <button onclick="hideEmpUploadBox()" style="margin-left:330px;width:20px;" ><i class="fa-solid fa-xmark"></i></button>
		<form th:action="@{/uploadExcelToDatabase}" method="post" enctype="multipart/form-data">
		  
		  <div style="margin-bottom: 20px;" class="title">
		    <h1 style="text-align: center;font-family: 'Roboto Slab', serif;margin-top: 20px;">Upload Employee</h1>
		  </div>
		  <div class="dropzone" style="margin-left:70px;">
		    <img style="margin-left:70px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
		    <input type="file" name="file" class="upload-input"/>
		  </div>
		  <input type="submit"  onclick="showVoucher(this)" style="border-radius:5%;background-color:DarkTurquoise;margin-left:50px;margin-top:20px;padding:8px 90px 8px 90px;" value="Upload file" />
		</form>
      </div>
      </div>
      
      <div id="holidayfileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
        <button onclick="hideHolidayUploadBox()" style="margin-left:330px;width:20px"><i class="fa-solid fa-xmark"></i></button>
		<h2 style="text-align: center;font-family: 'Roboto Slab', serif;margin-top: 20px;">Upload Holiday</h2>
        <img style="margin-left:120px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
       
		<form   action ="/api/excel/uploadHolidayToDatabase" method = "POST" enctype = "multipart/form-data">
      <input style="padding:8px;" type = "file" name = "file" value = "Browse File" /> 
         <input style="border-radius:5%;background-color:DarkTurquoise;margin-left:70px;margin-top:20px;padding:8px 90px 8px 90px;" type = "submit" value = "upload" /> <br /> <br /> 
         
          </form>
      </div>
      </div>
      
      
        
        
 
        
        
    
    <div id="feedbackDialog" style="z-index:3" >
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please enter your feedback:</label><br>
                <input type="hidden" name="dashboard" value="lunchRegist">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>   
    
    
            <div class="page-header">
                <h1>Dashboard</h1>
                <small>Home / Dashboard</small>
				
				  <p th:text="${message}"></p>
				  <input type="hidden" th:value="${message}" id="message"/>
            
            
                <div class="analytics">
<!--        -->
                    <div class="card" style="background-color: #85d9cf;border-radius:10px;">
                        <div class="card-head">
                            <h2 th:text="${totalEmpCost }+'ks'"></h2><a style="text-decoration:none;font-size:20px;" th:href="@{/individualCost}">Detail--></a>
                            <i class="fa-solid fa-dollar-sign"></i>
                        </div>
                        <div class="card-progress">
                            <small>Your Cost This Month</small>
                            
                        </div>
                    </div>

                    <div class="card" style="background-color: #c6e077;border-radius:10px;" th:if="${session.role!='Operator' }">
                        <div class="card-head">
                            <h2 th:text="${datCost }+'ks'"></h2>
							<i class="fa-solid fa-dollar-sign"></i>
                        </div>
                        <div class="card-progress">
                            <small>Total DAT Cost For This Month</small>
                            
                        </div>
                    </div>

                    <div class="card" style="background-color: #f1df7c;border-radius:10px;" th:if="${session.role!='Operator' }">
                        <div class="card-head">
                            <h2 th:text="${annualCost}+'ks'"></h2>
                            <i class="fa-solid fa-dollar-sign"></i>
                        </div>
                        <div class="card-progress">
                            <small>Total DAT Cost For This Year</small>
                            
                        </div>
                    </div>

                     <div class="card" style="background-color: #8caeff;border-radius:10px;" th:if="${session.role!='Operator' }">
                        <div class="card-head">
                            <h2 th:text="${orderCount}"></h2>
                            <i class="fa-solid fa-list-ol"></i>
                        </div>
                        <div class="card-progress">
                            <small>Total Register For Next Week</small>
                            
                        </div>
                    </div>

                </div>
    
				
    <!-- Modal -->
    <div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="messageModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" style="color:blue;" id="messageModalLabel"><b>File Upload Status</b></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p th:text="${param.message}"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
        
        <main>
        
          
<!--  Another Upload -->



<div id="Announcement" class="warning box" style="margin-top:20px;width: 360px;height:540px;display: none;background-color:white;" align="center">
  <br>
   <div class="card" style="width: 340px;height:500px;padding-top:0px;margin-top:0px;" align="center">
      <div class="card-body" align="center">
        <h4 class="card-body"  style="
      background:#9d6e7e;
      color:white;
       text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)">Announcement</h4>
      
               
        <div class="mb-3" >
          <form th:action="@{/announce}" method="post" id="form" enctype="multipart/form-data">
          <input
              class="form-control" name="file2" type="file" id="formFile"><br />
              
          
              
                
<textarea class="form-control" id="text" name="text" placeholder="Announce here...." required></textarea><br>
  <label for="days" style="background-color: #fff4d3;font-family: Lithos Pro;">How many days you want to Announce?</label>

              <input type="number"
              class="form-control" name="days" id="days" value="1" required="required"><br />
    
      
           
  
<h6 style="font-family: Lithos Pro;">Your Announcement will be expired</h6>
<h6 style="font-family: Lithos Pro;">after your import days.</h6>

          
       
  <input  id="save-button" type="submit" value="Announce" class="btn btn-warning" >
            <button  type="button" class="btn btn-primary" onclick="hideAnnoImport()">Back</button>
            
            
        <div>
          
        </div>
          
          </form>
          
          
          
          
   

        </div>  
      </div>
        
     </div>
  </div>
        
         <!-- file Import -->
        <div id="box" class="warning box" style="width: 360px;height:250px;display: none;background-color:white;" align="center">
        <div class="card"  style="width: 340px;height:240px;" align="center">
      <div class="card-body" align="center">
     <h4 class="card-body"  style="
      background:#beae65;
      color:white;
       text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)">Menu Upload</h4>
      
     
             
        <div class="mb-3">
          <form th:action="@{/upload}" method="post" enctype="multipart/form-data">
            <input
              class="form-control" name="file" type="file" id="formFile"><br />
            <input type="submit" value="Upload" class="btn btn-warning">
            <button type="button" class="btn btn-primary" onclick="hideFileImport()">Cancel</button>
            
          </form>
    
  

        </div>  
      </div>
        
     </div>
        </div>
       
        
         <!-- loading -->
                <div  class="warning alert" id="loader" style="color:black"> 
                <div >
                <div class="loader" style="margin-top:250px;margin-left:700px;">
  <div class="ball a"></div>
  <div class="ball b"></div>
  <div class="meter">
    <div class="fill"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="currentColor" d="M0,128L34.3,138.7C68.6,149,137,171,206,176C274.3,181,343,171,411,154.7C480,139,549,117,617,144C685.7,171,754,245,823,234.7C891.4,224,960,128,1029,106.7C1097.1,85,1166,139,1234,165.3C1302.9,192,1371,192,1406,192L1440,192L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path>
      </svg></div>
    <span class="fill-text">Loading</span>
  </div>
</div>

  </div> </div>
        
        
       
            
            	 <!--  <label for="exportFormat">Select Export Format:</label>
				<select id="exportFormat">
				  <option value="pdf">PDF</option>
				  <option value="excel">Excel</option>
				  <option value="html">HTML</option>
				</select> 
				<button id="printPdfButton">Print Report</button> -->
			   
     <div class="container mt-5"> 
      <div >
  <div class="card-body">   
   
  <div class="row">
  
<th:block th:each="studList: ${session.list}">
            <div class="menu-item">
                <h1 style="padding-left: 130px; font-family: Bahnschrift; color:#305FBE ; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">Today's Menu</h1>
                <img class="card" th:src="@{'/image?id='+ ${studList.id}}" style="margin-top: 30px;height:666px;width:530px; box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.5);">
              
            </div> 
        </th:block>
   
   
         <th:block th:each="announce: ${session.announce}" >
       
     <div style="padding-left: 20px">
    
      
    <h1 style="
    padding-left: 110px;
    font-family: Bahnschrift;
    color:grey ;
    
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
   ">Announcement</h1>
  
  
  
  
   
   
   <div style=""  >  
   <div class="photo-container" style=" 
    background-image: url('/images/bba.jpg');
   background-size:460px;
    width: 450px;
    height: 658px;   
        margin-top: 35px;
                position: absolute;
        
    
    ">
    
   
   <img  th:src="@{'/image2?id='+ ${announce.id}}" style="
       width: 350px;
    height: 230px;
    margin-top: 37px;
    border: 1px solid white;
     box-shadow: 0px 3px 3px rgba(0,0,0,0.3);
     
    margin-left: 56px;">
     

    

 
 

<div data-simplebar style="margin-left: 10px; overflow: auto;max-height: 370px;margin-top: 10px; ">
<div style="max-width:429px;">
  <p1 th:text="${announce.text}" style="
    font-size: 18px;
    font-family: Comic Sans MS;
    color: #f4f4f5;
    max-height: 50px;
     max-width: 45px;

    white-space: pre-line;
    margin: 0;
    padding: 15px;
  
  "/>
</div>

</div>

 
 
 
       
   </div>
     
     

   </div>
  
  
  
   
     
    </div> 
    
     </th:block> 
 
   
  </div>
</div>
  </div>
    

                </div>
            
            
        </main>
       <script type="text/javascript">
 // Add event listener to trigger animation on page load
    window.addEventListener('load', function() {
      var photoContainer = document.querySelector('.photo-container');
      photoContainer.classList.add('animate');
    });

    </script>
        <script th:inline="javascript">
    // Check if the message is not null
    var message = /*[[${param.message}]]*/ null;
    if (message) {
        // Show the modal
        $(document).ready(function () {
            $('#messageModal').modal('show');
        });
    }
</script>
    
   
	<script>
  $(document).ready(function() {
    // Event listener for the "Print PDF" button
    $('#printPdfButton').click(function() {
      // Extract table data
      var tableData = [];
      $('#myTable tbody tr').each(function() {
        var rowData = {
          date: $(this).find('td:nth-child(1)').text(),
          orderQty: $(this).find('td:nth-child(2)').text(),
          companyPrice: $(this).find('td:nth-child(3)').text(),
          noOfPax: $(this).find('td:nth-child(4)').text(),
          employeePrice: $(this).find('td:nth-child(5)').text(),
          totalAmount: $(this).find('td:nth-child(6)').text()
        };
        tableData.push(rowData);
      });
      
      // Prompt the user to select the export format
      // var selectedFormat = prompt("Please enter the export format (pdf or excel or html):");
      var selectedFormat = $('#exportFormat').val();
      if (selectedFormat === "pdf" || selectedFormat === "excel" || selectedFormat === "html") {
        // Send table data as a request to the controller with the selected format
        $.ajax({
          type: 'POST',
          url: '/viewCostReport/' + selectedFormat,
          data: JSON.stringify(tableData),
          contentType: 'application/json',
          success: function(response) {
            // Handle the response if needed
          },
          error: function(xhr, status, error) {
            // Handle errors if needed
          }
        });
      } else {
        // Handle invalid format input
        alert("Invalid export format. Please enter 'pdf' or 'excel'.");
      }
    });
  });
</script>

	
	
	
     <script>
      function printPDF() {
        const element = document.getElementById("myTable");
        const opt = {
          margin: 10,
          filename: "table.pdf",
          image: { type: "jpeg", quality: 0.98 },
          html2canvas: { scale: 2 },
          jsPDF: { unit: "mm", format: "a4", orientation: "portrait" },
        };

        html2pdf().from(element).set(opt).save();
      }
    </script>
    
    
    <script>
      function exportToExcel() {
        const table = document.getElementById("myTable");
        const workbook = XLSX.utils.table_to_book(table, { sheet: "Sheet 1" });
        const worksheet = workbook.Sheets["Sheet 1"];

        // Adjust cell width
        const colWidths = [
          { wch: 15 }, // Date
          { wch: 10 }, // No. of Pax
          { wch: 15 }, // Company Price
          { wch: 15 }, // Employee Price
          { wch: 15 }, // Total Amount
        ];

        worksheet["!cols"] = colWidths;

        // Center-align cells
        const cellStyles = {
          alignment: {
            horizontal: "center",
            vertical: "center",
          },
        };

        const range = XLSX.utils.decode_range(worksheet["!ref"]);

        for (let row = range.s.r + 1; row <= range.e.r; row++) {
          for (let col = range.s.c; col <= range.e.c; col++) {
            const cellAddress = XLSX.utils.encode_cell({ r: row, c: col });
            worksheet[cellAddress].s = cellStyles;
          }
        }

        const excelBuffer = XLSX.write(workbook, {
          bookType: "xlsx",
          type: "array",
        });

        saveAsExcelFile(excelBuffer, "table.xlsx");
      }

      function saveAsExcelFile(buffer, fileName) {
        const data = new Blob([buffer], { type: "application/octet-stream" });
        const link = document.createElement("a");
        link.href = window.URL.createObjectURL(data);
        link.download = fileName;
        link.click();
      }
    </script>
    
    
    <script>
    $(document).ready(function() {
      // Event listener for the export button
      $('#exportBtn').click(function() {
        // Get the table element
        const table = document.getElementById('myTable');

        // Convert the table to HTML string
        const tableHtml = table.outerHTML;

        // Create a temporary link element
        const downloadLink = document.createElement('a');
        document.body.appendChild(downloadLink);

        // Set the download attributes
        downloadLink.href = 'data:application/msword,' + encodeURIComponent(tableHtml);
        downloadLink.download = 'table.doc';

        // Programmatically click the link to trigger the download
        downloadLink.click();

        // Clean up
        document.body.removeChild(downloadLink);
      });
    });
  </script>
    
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
     <script>
    var message = document.querySelector("#message");
    var messageValue = message.value;
    if(messageValue!=''){
    	loader.style.display = "none";
    }

    function showVoucher(element) {
    	loader.style.display = "block";
    	
    }
    	  
    
    
</script>

<script>

window.onload = function() {
    var success1 = "[[${success1}]]";
    var success = "[[${success}]]";
    var Delete = "[[${Delete}]]";
    var Delete2 = "[[${Delete2}]]";
    
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
          popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
          popup: 'animate__animated animate__fadeOutUp'
        }
      });
    }
    
    if (Delete !== "") {
      Swal.fire({
        icon: 'error',
        title: 'Please Choose File',
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
        title: 'Please Choose File',
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