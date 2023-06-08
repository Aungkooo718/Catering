<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>FeedBack List</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    
   

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />




 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

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
    


<!-- for excel model box -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Include Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


    <!-- for doorlog table -->
     <!-- Include Font Awesome JavaScript file -->
     
     <!-- DataTables CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.css">

<!-- DataTables JS -->
<script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/line-awesome/1.3.0/css/line-awesome.min.css">

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
table thead th{
	background-color:black;
	color:white;
	font-size:1.6rem
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



    </style>
    
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
                           <!-- <span class="las la-home"></span> --> 
                            <i class="fa-solid fa-house-user"></i><br><br>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                       <a href="/employees">
                            <!-- <span class="las la-user-alt"></span>  -->
                            <i style="margin-bottom:5px;" class="fa-solid fa-people-group"></i><br>
                            
                            <br><small style="margin-top:8px !important">People</small>
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
                           <!-- <span class="las la-home"></span> --> 
                            <i class="fa-solid fa-house-user"></i><br><br>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                       <a href="/employees">
                            <!-- <span class="las la-user-alt"></span>  -->
                            <i style="margin-bottom:5px;" class="fa-solid fa-people-group"></i><br>
                            
                            <br><small style="margin-top:8px !important">People</small>
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
          
        <div th:if="${session.role=='ADMIN' }">
		<header>
            <div class="header-content">
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>
                <div class="header-menu">
                <div class="dropdown">
                        <a href="/review" class="review">Review</a>
                        
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
                          <a href="/restaurant">Restaurant</a>
                          <a href="/order">Lunch Order</a>
                          <a href="/PriceTime">Lunch Info</a>
                          <a href="/avoidMeat">Avoid Meat</a>
                          <a href="/holidayView">Holiday View</a>
                          <a href="/feedback">Feedback View</a>
                        </div>
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
                        <button class="dropbtn">Home</button>
                        
                      </div>                        
                <div class="dropdown">
                        
                      </div>
                      
                      <div class="dropdown">
                        <button class="dropbtn">History<i class="fa fa-caret-down" aria-hidden="true"></i></button>
                        <div class="dropdown-content">
                          <a href="/lunchInfo">Doorlog Info </a>
                          <a href="/viewCost">View Cost</a>
                        </div>
                      </div>      
                      <div class="dropdown">
                        <button class="dropbtn">LunchSetting<i class="fa fa-caret-down" aria-hidden="true"></i></button>
                        <div class="dropdown-content">
                          <a href="/restaurant">Restaurant</a>
                          <a href="/order">Lunch Order</a>
                          <a href="/priceInfo">Price Info</a>
                          <a href="/avoidMeat">Avoid Meat</a>
                        </div>
                      </div>           
                <div class="dropdown">                        
                        <button class="dropbtn" onclick="location.href = '/about';">About</button>
                     </div>
                    
					<div id="bell" style="margin-right: 15px;" th:class="${session.emailNoti} ? 'highlight' : ''">
					  <span class="las la-bell la-2x" style="font-size: 25px;"></span>
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
      
        
        <div style="margin:100px 5px 5px 20px;">
        <h1 style="margin-bottom:10px">Feedback List</h1>
    <table id="feedback" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Employee ID</th>
            <th>Employee Name</th>
            <th>Feedback</th>
        </tr>
    </thead>
    <tbody>
        <tr th:each="feedback : ${feedbackList}">
            <td th:text="${feedback.id}"></td>
            <td th:text="${feedback.date }"></td>
            <td th:text="${feedback.employeeId}"></td>
            <td th:text="${feedback.employeeName}"></td>
            <td th:text="${feedback.feedback}"></td>
        </tr>
    </tbody>
</table>

        </div>
    </div>
    
  
    
    <script>
   $(document).ready(function() {
      $('#feedback').DataTable();
   });
</script>

	
    
</body>
</html>