<!doctype html>
<html xmlns:th="http://www.thymeleaf.org">
  <head>
  	<title>Sidebar 01</title>
    
  
  <style>
  @import url("https://cdnjs.cloudflare.com/ajax/libs/roboto-fontface-kit/0.5.0/css/roboto/roboto-fontface.css");

	*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family: 'Roboto', sans-serif;
}
.body{
	overflow-x:hidden;
}
.mainbody{
	min-height:100vh;
	background:#e4e9f7;
	width:100vw;
}
.slider{
	background-color:white;
	min-height:100vh;
	width:18.2rem;
	position:relative;
	padding-top:1rem;
	transition:0.3s ease;
}
.image{
	border-radius:50%;
	height:6rem;
	width:6rem;
	cursor:pointer;
	margin-right:1rem;
}
.maintext{
	font-size:1.3rem;
	font-weight:700;
}
.arrow{
	background-color:rgb(170,111,225);
	border-radius:50%;
	height:1.7rem;
	width:1.7rem;
	display:flex;
	justify-content:center;
	align-items:center;
	cursor:pointer;
	position:absolute;
	right:-0.8rem;
	top:3rem;
}
.fa-arrow-right-long{
	font-size:1rem;
	color:white;
}
.profile{
	display:flex;
	padding-left:2rem;
	align-items:center;
	width:18rem;
}
.search,.notifications,.dashboard,.messages,.heart,.logout,.coins{
	height:3.5rem;
	margin:1rem;
	display:flex;
	border-radius:0.4rem;
	width:16rem;
	padding-left:0.5rem;	
	cursor:pointer;
	align-items:center;
	font-size:1.1rem;
}
.toggle{
	height:3.5rem;
	display:flex;
	border-radius:0.4rem;
	width:16rem;
	cursor:pointer;
	display:flex;	
	align-items:center;
	justify-content:center;
	font-size:1.1rem;
	padding-left:0.5rem;
}
.childs{
	transition:0.15s ease;
}
.slider.close .icons{
	margin-left:0.8rem;
}
.slider.close img{
	margin-left:0.8rem;
}
.childs:hover{
	background-color:rgb(150,57,252);
	color:white;
}
.text{
	margin-left:1.8rem;
}
.search{
	background-color:rgb(244,235,250)
}
.searchbtn{
	background-color:transparent;
	height:3rem;
	width:16rem;
	border:none;
	outline:none;
	font-size:1rem;
	margin-left:0.8rem;
	
}
::-webkit-search-cancel-button{
	display:none;
}
hr{
	border:0.5px solid rgb(115,115,115);
	background-color:rgb(105,105,105);
}
.checkbox{
	appearance:none;
	position:relative;
	background-color:rgb(216,216,216);
	height:1.6rem;
	width:3rem;
	border-radius:1rem;
	cursor:pointer;
	transition:0.3s ease;
}
.toggle{
	padding-left:0.5rem;
	width:17rem;
	/*border:2px solid black;*/
}
.toggle:hover{
	background-color:transparent;
	color:black;
}
#toggleText{
	margin-left:0.8rem;
	margin-right:5.7rem;
}
.checkbox::before{
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
.checkbox:checked{
	background-color:rgb(197,136,255);
	
}
input.checkbox:checked::before {
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
.color{
	color:white;
}
.searchcolor{
	color:rgb(38,38,38);
}
.close{
    width: 7.7rem;
}
.slider.close .text{
    opacity: 0;
}
.slider.close .childs{
    width: 4rem;
    margin-left: 1.4rem;
}
.slider.close .toggle{
    margin-left: 0.6rem;
}
.slider.close .searchbtn{
    opacity: 0;
}
.slider.close .search{
    width: 4rem;
    margin-left: 1.4rem;
}
.slider.close .profile{
    padding-left: 0.5rem;
}

a {
	text-decoration: none;
}
li {
	list-style: none;
}


nav {
  float: right;
}
nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
nav ul li {
  float: left;
  position: relative;
}
nav ul li a {
  display: block;
  padding: 0 20px;
  line-height: 70px;
  background: #ffffff;
  color: #463f3f;
  text-decoration: none;
  /*
  The full path of this code is nav ul li a:not(:only-child):after. This means that the code will apply to any a tag in our nav list that is NOT an only child, aka any dropdown. The :after means it comes after the output of the tag. I’ve decided that to specify any nav item as a dropdown, it will be followed by a unicode arrow – ▾ (#9662).
  */
}
nav ul li a:hover {
  background: #f2f2f2;
  color: #fb5958;
}
nav ul li a:not(:only-child):after {
  padding-left: 4px;
  content: ' ▾';
}
nav ul li ul li {
  min-width: 190px;
}
nav ul li ul li a {
  padding: 15px;
  line-height: 20px;
}

.nav-dropdown {
  position: absolute;
  z-index: 1;
  /* Guarantees that the dropdown will display on top of any content. */
  box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
  display: none;
}

.nav-mobile {
  display: none;
  position: absolute;
  top: 0;
  right: 0;
  background: #fff;
  height: 70px;
  width: 70px;
}

@media only screen and (max-width: 800px) {
  .nav-mobile {
    display: block;
  }

  nav {
    width: 100%;
    padding: 70px 0 15px;
  }
  nav ul {
    display: none;
  }
  nav ul li {
    float: none;
  }
  nav ul li a {
    padding: 15px;
    line-height: 20px;
  }
  nav ul li ul li a {
    padding-left: 30px;
  }
}
#nav-toggle {
  position: absolute;
  left: 18px;
  top: 22px;
  cursor: pointer;
  padding: 10px 35px 16px 0px;
}
#nav-toggle span,
#nav-toggle span:before,
#nav-toggle span:after {
  cursor: pointer;
  border-radius: 1px;
  height: 5px;
  width: 35px;
  background: #463f3f;
  position: absolute;
  display: block;
  content: '';
  transition: all 300ms ease-in-out;
}
#nav-toggle span:before {
  top: -10px;
}
#nav-toggle span:after {
  bottom: -10px;
}
#nav-toggle.active span {
  background-color: transparent;
}
#nav-toggle.active span:before, #nav-toggle.active span:after {
  top: 0;
}
#nav-toggle.active span:before {
  transform: rotate(45deg);
}
#nav-toggle.active span:after {
  transform: rotate(-45deg);
}

@media screen and (min-width: 800px) {
  .nav-list {
    display: block !important;
  }
}
/* 
.navigation – the outer wrapper for the navbar. Specifies the height and color, and will stretch the full width of the viewport.
*/
.navigation {
  height: 70px;
  background: #ffffff;
}

/*
.nav-container – the inner wrapper for the navbar. Defines how far the actual content should stretch.
*/
.nav-container {
  max-width: 1000px;
  margin: 0 auto;
}

.brand {
  position: absolute;
  padding-left: 20px;
  float: left;
  line-height: 70px;
  text-transform: uppercase;
  font-size: 1.4em;
}
.brand a,
.brand a:visited {
  color: #463f3f;
  text-decoration: none;
}



#settings-menu {
  display: none;
  position: absolute;
  top: 40px;
  right: 0;
  z-index: 1;
  background-color: #fff;
  border: 1px solid #ccc;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.2);
  width: 200px;
  padding: 10px;
}

.settings-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 10px;
}

.settings-header h3 {
  margin: 0;
}

.settings-options {
  margin-bottom: 10px;
}

.settings-option {
  display: flex;
  flex-direction: column;
  margin-bottom: 10px;
}

.settings-option label {
  margin-bottom: 5px;
}

.settings-option input {
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
  
  </style>
  </head>
  <body>
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
	<div class="mainbody">
	<div class="slider close">
		<div class="profile">
			<img src="/images/elonmusk.jpg" height="100px" width="100px" class="image">
			<div class="profileText">
				<p class="maintext text">
					Elon Musk
				</p>
			</div>			
		</div>
		<div class="arrow">
			<i class="fa-solid fa-arrow-right-long"></i>
		</div>
		<div class="link">
			<div class="search">
				<i class="fa-solid fa-magnifying-glass icons"></i><input type="search" class="searchbtn" placeholder="search">
			</div>
			<div class="dashboard childs">
				<i class="fa-solid fa-house icons"></i><p class="text">Dashboard</p>
			</div>
			<div class="notifications childs">
				<i class="fa-solid fa-people-line icons"></i><p class="text">Employee</p>
			</div>
			<div class="notifications childs">
				<i class="fa-solid fa-door-closed icons"></i><p class="text">Doorlock</p>
			</div>
			<div class="notifications childs">
				<img src="/images/holiday.png" height="20px" width="20px"><p class="text">Holiday</p>
			</div>
			<div class="notifications childs">
				<i class="fa-solid fa-bell icons"></i><p class="text">Notifications</p>
			</div><hr>
			<div class="logout childs" id="setting-icon">
  <img src="/images/setting.png" height="20px" width="20px">
  <p class="text">Setting</p>
</div>
			
			

			<div class="logout childs">
				<i class="fa-solid fa-right-from-bracket icons"></i><p class="text">Log out</p>
			</div>
			<div class="toggle">
				<input type="checkbox" class="checkbox">
				<p class="text" id="toggleText">Dark Mode</p>
			</div>
		</div>
	</div>
	
	</div>
		
		<h1>Employee List</h1>
    <table >
        <thead>
            <tr>
                <th>ID</th>
                <th>Department</th>
                <th>Division</th>
                <th>Door Log No</th>
                <th>Email</th>
                <th>Name</th>
                <th>Role</th>
                <th>Staff ID</th>
                <th>Status</th>
                <th>Team</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="employee : ${employees}">
                <td th:text="${employee.id}"></td>
                <td th:text="${employee.department}"></td>
                <td th:text="${employee.division}"></td>
                <td th:text="${employee.doorLogNo}"></td>
                <td th:text="${employee.email}"></td>
                <td th:text="${employee.name}"></td>
                <td th:text="${employee.role}"></td>
                <td th:text="${employee.staffId}"></td>
                <td th:text="${employee.status}"></td>
                <td th:text="${employee.team}"></td>
            </tr>
        </tbody>
    </table>
  </body>
</html>