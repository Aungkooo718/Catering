

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head th:fragment="html_head">
</head>

<link th:href="@{css/test.css}" rel="stylesheet" />

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<body>
	<div th:fragment="sub_header" >

<div th:if="${session.role=='ADMIN' }">
		<header>
            <div class="header-content">
            
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>
                
                <div class="header-menu">
                
                           <div class="dropdown">          
                		<a href="chatMessage"></a>
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
                          <a href="/feedback">Feedback View</a>
                        </div>
                      </div>        
                      <div class="dropdown" th:if="${session.Doorlog!='555555'}">
                        <button class="dropbtn" onclick="showFeedbackDialog()">FeedBack</button>
                        
                      </div>           
                	<div class="dropdown">                        
                        <button class="dropbtn" onclick="location.href = '/about';">About</button>
                     </div>
                    
                    
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
                        <button class="dropbtn" onclick="location.href = '/chatMessage';"></button>
                        
                      </div>
                                     
                <div class="dropdown">
                        
                      </div>
                      
                      
                            
                      <div class="dropdown">
                        <button class="dropbtn" onclick="showFeedbackDialog()">FeedBack</button>
                        
                      </div>           
                <div class="dropdown">                        
                        <button class="dropbtn" onclick="location.href = '/about';">About</button>
                     </div>
                    
                   
                    
                    <div id="bell" th:if="${session.Doorlog!='555555'}" style="margin-right: 15px;" th:class="${session.emailNoti} ? 'highlight' : ''">
					  <span class="las la-bell la-2x" style="font-size: 25px;"></span>
					</div>
                    
                      
                    <div class="user">
                        <div class="bg-img" style="background-image: url(/images/DAT.png)"></div>
                        
                        <span class="las la-power-off"></span>
                      
                    </div>
                </div>
            </div>
        </header>
</div>
	</div>
	
	
	

	
	<div th:fragment="s_header" >
	
	<div th:if="${session.role=='ADMIN' and session.Doorlog=='555555'}">
	 <ul id="sidebar-menu">
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
	 <ul id="sidebar-menu">
                    <li>
                       <a href="/dashboard">
                           <span class="las la-home"></span> 
                           
                            
                            <small>Dashboard</small>
                        </a>
                       
                    </li>
                    <li>
                       <a href="/employees">
                             <span class="las la-user-alt"></span>
                            
                            
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
    
    
   
                <ul id="sidebar-menu">
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
    
    
    
    </div>

</body>
</html>