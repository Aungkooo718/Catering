<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>MENU</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>
 <link rel="stylesheet" type="text/css" href="/css/announcement.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    

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
#formWrapper {
    display: none;
}
.middark{
	background-color:rgb(45,45,45);
}
	
				.naw{
				font-size:300%;
				
				background-image:url("images/n.jpg");
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
    
    <div class="main-content">
        
       <div th:replace="fragments :: sub_header" ></div>
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
           
            
          <!--  
            <div class="page-header">
                <h1>Dashboard</h1>
                <small>Home / Dashboard</small>
            </div> -->  <div class="page-content">
            <h1>DashBoard</h1>
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
                
                
                <div class="naw">
                <h4 style="font-size: 90%;color: White">Today's Menu</h4>
                 
                </div>
                <br><br>
                
                <button type="button" onclick="toggleForm()" class="btn btn-success">Import</button>
             
    <div id="formWrapper">
    <form id="pdfForm" enctype="multipart/form-data">
        <input type="file" name="pdfFile" required style="color: red">
        <button type="submit" class="btn btn-info">Set</button>
        <button type="button" class="btn btn-success" onclick="location.href = '/';">
            Reset
        </button>
      
    </form>
    
    
</div>
 <script>
        function toggleForm() {
            var formWrapper = document.getElementById("formWrapper");
            if (formWrapper.style.display === "none") {
                formWrapper.style.display = "block";
            } else {
                formWrapper.style.display = "none";
            }
        }
    </script>


    <div id="imageContainer"></div>

    <script>
        const pdfForm = document.querySelector('#pdfForm');
        const imageContainer = document.querySelector('#imageContainer');

        pdfForm.addEventListener('submit', (event) => {
            event.preventDefault();
            const pdfFile = pdfForm.querySelector('[name="pdfFile"]').files[0];
            const formData = new FormData();
            formData.append('file', pdfFile);

            fetch('/convert-to-image', {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
            .then(imageString => {
                const image = document.createElement('img');
                image.src = 'data:images/png;base64,' + imageString;
                imageContainer.appendChild(image);
            })
            .catch(error => console.error(error));
        });
    </script>
    <br><br>
    
    
    
    
    
    
    
   <div id="post-to-instagram-modal">

        <div id="post-to-instagram-modal--text-container">

            <div id="post-to-instagram-modal--title" style="font-size:23px;color: black;">
                Announcement
            </div>

            <div id="post-to-instagram-modal--description" style="color: brown;">
                Next Month ..Free Lunch.jahsu 
             
               
            </div>

            <div id="post-to-instagram-modal--points">

                <!--<strong>Post everywhere from one place</strong>
			<p>Schedule and publish single images to Instagram in the same place you post to other social accounts.</p> -->

                <strong></strong>
                <p>
                    </p>

            </div>

            <div id="post-to-instagram-modal--connect-button">
                <!-- 	I hope you all use your own buttons and not this one. this is a hack	 -->
                <button type="button" class="md-btn md-btn-raised">Edit</button>
                <a href="https://wwww.y8.com" target="_blank"
                    rel="noopener noreferrer" id="post-to-instagram-modal--learn-more">Setting</a>
            </div>

        </div>

        <img id="post-to-instagram-modal--image"
            src="/image/an.jpg" width="200"
            height="200" alt="Instagram Screenshot">

    </div>
    
    

</body>
</html>