<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>View Cost</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <link rel="stylesheet" type="text/css" href="/css/viewcost.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- for doorlog table -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <!-- for doorlog table  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="https://cdn.datatables.net/plug-ins/1.10.15/dataRender/percentageBars.js"></script>

    <!-- for doorlog table -->
     <!-- Include Font Awesome JavaScript file -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');
     
            *{
            	font-family: 'Roboto Slab', serif;
            	
            }
    td{
  word-break:break;
  
}
.fa-solid, .fas {
    color: #f5ebeb;
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
      
      table thead th {
    padding: 1rem 0rem;
    text-align: left;
    color: #444;
    text-align:center;
    font-size: 1.2rem;
}


/*for pdf print */
@media print {
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

table tbody td {
    color: black;
}
table tbody td:first-child {
    font-size: 1.3rem;
    color: black;
}

.btn {
    font-size: 1.5rem;
    width: 155px;
    margin-top: 40px;
    height: 40px;
}


element.style {
    margin-right: 10px;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font-size: 14px;
    line-height: inherit;
    height: 30px;
    border-radius: 5px;
}
.dt-buttons a{
	background-color:green;
	margin:2px;
}
.dt-buttons a span{
	color:white;
}
 .buttons-pdf{
	display:none;
}

    </style>
    
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody" style="background-color:LightSlateGray;">

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
        
        
      
      
      
        <div id="feedbackDialog" style="z-index:3" >
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please Enter A Feedback:</label><br>
                <textarea style="width:300px;height:210px;font-size:15px;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <button type="button" style="margin-right:10px;" class="btn btn-secondary" onclick="hideFeedbackDialog()">Cancel</button>
           <button type="submit"  class="btn btn-primary">Submit</button>
                
            </form>
        </div>
    </div>
        
        <main>
            
            	 <!--  <label for="exportFormat">Select Export Format:</label>
				<select id="exportFormat">
				  <option value="pdf">PDF</option>
				  <option value="excel">Excel</option>
				  <option value="html">HTML</option>
				</select> 
				<button id="printPdfButton">Print Report</button> -->
			
 <h1 style="text-align:center;color:black;"><b>Search to view cost!</b></h1>
			
                <div class="records table-responsive" style="background-color:Lavender;" id="records">

                   

                    <div class="container">
<form method="post" th:action="@{/searchViewCost}">
  <div style="margin-top: 25px; margin-left: 23px;">
  
    <div class="row">
      <div class="col-sm-4" style="margin-top:35px;">
        <div class="input-group">
          
          <div class="input-group-append">
            <span class="input-group-text" >From</span>
          </div>
          <input style="border-radius:3px;width:100%;" type="date" id="fromDate" class="form-control" name="fromDate">
        
        <select class="form-select" aria-label="Select days" id="viewByDate" name="viewByDate" style="margin:40px 10px 0px 0px;"> 
            <option selected>Select days</option>
            <option value="day">Day</option>
            <option value="week">Week</option>
            <option value="month">Month</option>
          </select>
        
        </div>
      </div>
      <div class="col-sm-4" style="margin-top:35px;">
        <div class="input-group">
          <div class="input-group-append">
            <span class="input-group-text">To</span>
          </div>
          <input style="border-radius:3px;" type="date" id="toDate" class="form-control" name="toDate"><br><br>
          <div class="input-group-append" style="margin-left: 10px;">
            <button onclick="checkError(event)" id="checkBtn" width="100px;" class="btn btn-info" type="submit">Search</button>
          </div>          
        </div>       
      </div>
      
    </div>
  </div>
</form>




<!-- Modal -->
<div th:if="${errormessage}" class="modal fade show" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="errorModalLabel">Info Message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p style="color:red" th:text="${errormessage}"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 



<div style="margin-left:450px;color:red;font-size:14px;margin-top:20px;" th:if="${error}" class="error">
        <!-- Access the "error" attribute and display the error message -->
        <p th:text="${error}"></p>
    </div>
    
    
     
    
<div style="margin:30px 20px 400px 10px" th:if="${day != null and !#strings.isEmpty(day)}">
    <div class="container">
    <table id="myTable" class="table table-striped table-bordered" style="width:100%">
      <thead>
        <tr>
          <th class="date-column">Date</th>
          <th>Order Qty</th>
          <th>Company Price</th>
          <th>No. of Pax</th>
          <th>Employee Price</th>
          <th>Company Total Amt</th>
          <th>Employee Total Amt</th>          
          <th>Total Amount</th>
        </tr>
      </thead>
      <tbody>
        
        
          <tr>
            <td class="date-column" th:text="${doorlogTime}"></td>
            <td th:text="${orderQty}"></td>
            <td th:text="${comPrice}"></td>
            <td th:text="${doorlogCount}"></td>
            <td th:text="${empPrice}"></td>
            <td th:text="${companyPrice}"></td>
            <td th:text="${employeePrice}"></td>
            
            <td th:text="${totalPrice}"></td>
          </tr>
      </tbody>
    </table>
  </div>
</div>




<div style="margin:30px 20px 400px 10px" th:if="${weekmonth != null and !#strings.isEmpty(weekmonth)}">
	<div class="container">
  <table id="myTable" class="table table-striped table-bordered" style="width:100%">
  <thead>
    <tr>
      <th class="date-column">Order   Date</th>
      
      <th>Order Qty</th>
      <th>Company Price</th>
      <th>No. of Pax</th>
      <th>Employee Price</th>
      <th>Com Total Amt</th>
      <th>Emp Total Amt</th>
      
      <th>Total Amount</th>
    </tr>
  </thead>
  <tbody>
    <tr th:each="entry : ${resultList}">
        <td class="date-column" th:text="${entry.date}"></td>
        
        <td>
          <span th:each="amount : ${entry.orderQty}" th:text="${amount}"></span>
        </td>
        <td>
          <span th:each="comamount : ${entry.comPrice}" th:text="${comamount}"></span>
        </td>
        
        
        <td th:text="${entry.count}"></td>
        <td>
          <span th:each="empamount : ${entry.empPrice}" th:text="${empamount}"></span>
        </td>
        <td>
          <span th:each="price : ${entry.companyPrice}" th:text="${price}"></span>
        </td>
        <td>
          <span th:each="empamount : ${entry.empPrice}" th:text="${empamount*entry.count}"></span>
        </td>
        
        <td th:each="empamount : ${entry.empPrice}" th:text="${empamount*entry.count + #aggregates.sum(entry.companyPrice)}"></td>
    </tr>  
  </tbody>
</table>



  </div>
</div>

    </div>
        </div><!-- /.container -->

                </div>
            
            </div>
            
        </main>
        
    </div>
    
    
    <!-- JavaScript -->
    <script>
    function checkError(event) {
    	  

    	  // Get the values of the input fields
    	  var fromDate = document.getElementById("fromDate").value;
    	  var toDate = document.getElementById("toDate").value;
    	  var viewByDate = document.getElementById("viewByDate").value;

    	  // Check if any field is null or empty
    	  if (!fromDate && !toDate && viewByDate === "Select days") {
    	    // At least one field is null or empty
    	    alert("Please fill in all the fields.");
    	    event.preventDefault();
    	  } else {
    	    // All fields are filled
    	    alert("Performing search...");
    	    // Perform your search or further processing here
    	  }
    	}


    </script>
    <script>
  $(document).ready(function () {
	  $('#myTable').DataTable({
	    dom: 'lBfrtip',
	    lengthMenu: [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
	    buttons: [
	      'colvis',
	      {
	        extend: 'csvHtml5',
	        text: 'Export CSV',
	        exportOptions: {
	          columns: ':visible',
	        },
	      },
	      {
	        extend: 'excelHtml5',
	        text: 'Export Excel',
	        exportOptions: {
	          columns: ':visible',
	        },
	      },
	      {
	        extend: 'pdfHtml5',
	        text: 'Export PDF',
	        exportOptions: {
	          columns: ':visible',
	        },
	      },
	      'print',
	    ],
	  });
	});

  </script>
<!-- JavaScript -->
<!-- JavaScript -->
<script th:if="${errormessage}">
  $(document).ready(function() {
    $('#errorModal').modal('show');
    setTimeout(function() {
      $('#errorModal').modal('hide');
    }, 2000);
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

        
    </script>
</body>
</html>