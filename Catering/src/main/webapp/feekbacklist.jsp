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

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
<script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
<script src="https://unpkg.com/html-docx-js/dist/html-docx.min.js"></script>


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
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    

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
        
         <div id="fileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
        <button onclick="hideEmpUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
		<form id="employee_data" th:action="@{/uploadExcelToDatabase}" method="post" enctype="multipart/form-data">
		  
		  <div style="margin-bottom: 20px;" class="title">
		    <h1 style="text-align: center;font-family: 'Roboto Slab', serif;margin-top: 20px;">Upload Employee</h1>
		  </div>
		  <div class="dropzone" style="margin-left:70px;">
		    <img style="margin-left:70px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
		    <input type="file" name="file" class="upload-input"/>
		  </div>
		  <input id="employeefileupload" type="submit" style="border-radius:5%;background-color:DarkTurquoise;margin-left:50px;margin-top:20px;padding:8px 90px 8px 90px;" class="uploadBtn" value="Upload file" />
		</form>
      </div>
      </div>
      
      <div id="doorlogfileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
         <button onclick="hideDoorlogUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
		
        <h2 style="text-align: center;font-family: 'Roboto Slab', serif;margin-top: 20px;">Upload Doorlog</h2>
        <img style="margin-left:120px;" src="http://100dayscss.com/codepen/upload.svg" width="100px;" height="100px;" /><br>
       <form   action ="/api/excel/uploadDoorlogToDatabase" method = "POST" enctype = "multipart/form-data">
      
         <input style="padding:12px;" type = "file" name = "file" value = "Browse File" /> 
         <input style="border-radius:5%;background-color:DarkTurquoise;margin-left:70px;margin-top:20px;padding:8px 90px 8px 90px;" type = "submit" value = "upload" /> <br /> <br /> 
         
          </form>
      </div>
      </div>
      <div id="holidayfileupload_box" style="z-index:3" >        
        <div class="fileupload_dialogContent">
        <button onclick="hideHolidayUploadBox()" style="margin-left:330px;"><i class="fa-solid fa-xmark"></i></button>
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
                <textarea style="width:300px;height:100px;font-size:15px;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <button type="button" style="margin-right:10px;" class="btn btn-secondary" onclick="hideFeedbackDialog()">Cancel</button>
           <button type="submit"  class="btn btn-primary">Submit</button>
                
            </form>
        </div>
    </div>
        
        <h1>Feedback List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Feedback</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="feedback : ${feedbackList}">
                <td th:text="${feedback.id}"></td>
                <td th:text="${feedback.employeeId}"></td>
                <td th:text="${feedback.employeeName}"></td>
                <td th:text="${feedback.feedback}"></td>
            </tr>
        </tbody>
    </table>
        
    </div>
    
   
    
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
</body>
</html>