<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    

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
							
    </style>
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody">
   <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        <div class="side-header">
            <h3>D<span>AT</span></h3><br>
            <h4 style="color:aliceblue">Catering Service</h4>
        </div>
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(images/DAT.png)"></div>
                <h4>DAT</h4>
            </div>

            <div class="side-menu">
                <ul>
                    <li>
                       <a href="" class="active">
                            <span class="las la-home"></span>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                       <a href="">
                            <span class="las la-user-alt"></span>
                            <small>People</small>
                        </a>
                    </li>
                    <li>
                       <a href="">
                            <span class="fa-solid fa-door-closed"></span><br>
                            <small>Doorlog</small>
                        </a>
                    </li>
                    <li>
                       <a href="">
                            <span class="fa-solid fa-calendar"></span>
                            <small>Calendar</small>
                        </a>
                    </li>
                    <hr>
                    <li>
                       <a href="">
                            <span class="fa-solid fa-gear"></span>
                            <small>Settings</small>
                        </a>
                    </li>
                    <li>
                       <a href="">
                            <span class="fa-solid fa-right-from-bracket"></span>
                            <small>Logout</small>
                        </a>
                    </li>
                    <div class="toggle">
				<input type="checkbox" class="checkboxdark"><br>
				<small style="color: #fff; opacity:0.5">Dark Mode</small>
			</div>

                </ul>
            </div>
        </div>
    </div>
    
    <div class="main-content">
        
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
                        <button class="dropbtn">Import<i class="fa fa-caret-down" aria-hidden="true"></i></button>
                        <div class="dropdown-content">
                          <a href="#">Menu</a>
                          <a href="#">Employee Data</a>
                          <a href="#">Doorlog Data</a>
                          <a href="#">Holiday</a>
                        </div>
                      </div>
                      <div class="dropdown">
                        <button class="dropbtn">Voucher<i class="fa fa-caret-down" aria-hidden="true"></i></button>
                        <div class="dropdown-content">
                          <a href="#">Add Voucher</a>
                          <a href="#">View Voucher</a>
                          <a href="#">Monthly Voucher</a>
                        </div>
                      </div>
                      <div class="dropdown">
                        <button class="dropbtn">History<i class="fa fa-caret-down" aria-hidden="true"></i></button>
                        <div class="dropdown-content">
                          <a href="#">Lunch Status</a>
                          <a href="#">View Cost</a>
                        </div>
                      </div>      
                      <div class="dropdown">
                        <button class="dropbtn">LunchSetting<i class="fa fa-caret-down" aria-hidden="true"></i></button>
                        <div class="dropdown-content">
                          <a href="#">Restaurant</a>
                          <a href="#">Lunch Order</a>
                          <a href="#">Price Info</a>
                          <a href="#">Avoid Meat</a>
                        </div>
                      </div>        
                      <div class="dropdown">
                        <button class="dropbtn" onclick="showFeedbackDialog()">FeedBack</button>
                        
                      </div>           
                
                    
                    <div class="notify-icon" style="margin-left:30px;">
                        <span class="las la-envelope"></span>
                        <span class="notify">4</span>
                    </div>
                    
                    <div id="bell" style="margin-right:15px;width:20px;" >
                        <span class="las la-bell" style="height:20px;"></span>
                    </div>
                    
                      
                    <div class="user">
                        <div class="bg-img" style="background-image: url(images/DAT.png)"></div>
                        
                        <span class="las la-power-off"></span>
                        <span>Logout</span>
                    </div>
                </div>
            </div>
        </header>
        <div id="feedbackDialog">
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form>
                <label for="feedback">Please enter your feedback:</label><br>
                <textarea id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <button type="submit">Submit</button>
                <button type="button" onclick="hideFeedbackDialog()">Cancel</button>
            </form>
        </div>
    </div>
        
        <main>
            
            <div class="page-header">
                <h1>Dashboard</h1>
                <small>Home / Dashboard</small>
            </div>
            
            <div class="page-content">
            
                <div class="analytics">

                    <div class="card">
                        <div class="card-head">
                            <h2>200</h2>
                            <span class="las la-user-friends"></span>
                        </div>
                        <div class="card-progress">
                            <small>Register Eat This Month</small>
                            <div class="card-indicator">
                                <div class="indicator one" style="width: 60%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                            <h2>34</h2>
                            <span class="las la-user-friends"></span>
                        </div>
                        <div class="card-progress">
                            <small>No Register Eat This Month</small>
                            <div class="card-indicator">
                                <div class="indicator two" style="width: 80%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                            <h2>40</h2>
                            <span class="las la-user-friends"></span>
                        </div>
                        <div class="card-progress">
                            <small>Register No Eat This Month</small>
                            <div class="card-indicator">
                                <div class="indicator three" style="width: 65%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-head">
                            <h2>47,500</h2>
                            <span class="las la-envelope"></span>
                        </div>
                        <div class="card-progress">
                            <small>Total Cost This Month</small>
                            <div class="card-indicator">
                                <div class="indicator four" style="width: 90%"></div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="records table-responsive" id="records">

                    <div class="record-header">
                        <div class="add">
                            <span>Entries</span>
                            <select name="" id="">
                                <option value="">ID</option>
                            </select>
                            <button>Add record</button>
                        </div>

                        
                    </div>

                    <div class="container">

        <form class="well form-horizontal" action=" " method="post"  id="contact_form">
    <fieldset>
    

    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label">Restaurant Name</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="first_name" placeholder="Restaurant Name" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
   
    
    <!-- Text input-->
           <div class="form-group">
      <label class="col-md-4 control-label">E-Mail</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
    
    <!-- Text input-->
           
    <div class="form-group">
      <label class="col-md-4 control-label">Phone #</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input name="phone" placeholder="(09)793586567" class="form-control" type="text">
        </div>
      </div>
    </div>
    <div class="form-group">
        <label class="col-md-4 control-label">Payment Receiver Name</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input  name="payment_receiver" placeholder="Payment Receiver Name" class="form-control"  type="text">
          </div>
        </div>
      </div>
    
    <!-- Text input-->
          
    <div class="form-group">
      <label class="col-md-4 control-label">Address</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <input name="address" placeholder="Address" class="form-control" type="text">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
     
    <div class="form-group">
      <label class="col-md-4 control-label">City</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <input name="city" placeholder="city" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
    
    
    
    
   
    
    
    
    <!-- Success message -->
    <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>
    
    <!-- Button -->
    <div class="form-group">
      <label class="col-md-4 control-label"></label>
      <div class="col-md-4">
        <button type="submit" class="btn btn-primary" >Send <span class="glyphicon glyphicon-send"></span></button>
      </div>
    </div>
    
    </fieldset>
    </form>
    </div>
        </div><!-- /.container -->

                </div>
            
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
</body>
</html>