<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Restaurant</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
    
    <!-- this is for edit and delete -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- for modal box -->
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
 
    


.side-menu a {
    display: block;
    padding: 1.9rem 0rem;
}
    
    @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');
     
            *{
            	font-family: 'Roboto Slab', serif;
            	margin-left: 5px;
    			margin-right: 5px;
            }
            body{
            	font-size: 1.3rem;
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
			.tooltip {
    position: relative;
    display: inline-block;
  }

  .tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: #000;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    transform: translateX(-50%);
    opacity: 0;
    transition: opacity 0.3s;
  }

  .tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
  }		
  
    
    /* td edit and delete a */
table.table td:last-child i {
    opacity: 0.9;
    font-size: 22px;
    margin: 0 5px;
}
    
    
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.settings {
        color: #2196F3;
    }
    table.table td a.delete {
        color: green;
    }
    table.table td i {
        font-size: 19px;
    }
    table.table td i:hover{
    	cursor:pointer;
    }
    table thead th {
    padding: 1rem 0rem;
    text-align: left;
    color: #444;
    font-size: 1.3rem;
}	
.btn-danger{
	width:80px;
}
.btn-warning{
	width:80px;
}



    
    .active-cell {
    color: blue;
}

.inactive-cell {
    color: red;
}

<!--            -->
/* CSS Code */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
  background-color: #fefefe;
  margin: 20% auto;
  padding: 20px;
  border: 1px solid #888;
  max-width: 400px; /* Adjust the width as needed */
}

.close-button {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
}

.close-button:hover,
.close-button:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

.success-icon {
  /* Add styles for your success icon here */
}

.info-message {
  /* Add additional styles for the info message here */
}


/*delete modal box*/
.alert-danger{
	height:100px;
}
.alert h4 {
    margin-top: 0;
    color: inherit;
    margin-bottom: 20px;
    text-align: center;
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

.fa-solid, .fas {
    color: #f5ebeb;
}
    
    
    #menu-toggle:checked ~ .sidebar .side-menu a span {
	font-size: 1.3rem;
	margin-left:-10px;
}
    </style>
    <style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: blue;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 5px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 2px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody">
   <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(images/DAT.png)"></div>
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
                <label for="feedback">Please enter your feedback:</label><br>
                <input type="hidden" name="employee" value="employee">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
    <div id="deleteConfirmDialog" style="z-index:3;border:2px solid black" >        
        <div class="dialogContent">
            <form th:action="@{/deleteRestaurant}" id="deleteForm">
			    <h3 style="text-align:center;">Restaurant Confirmation?</h3>
			    <h4 style="color:green;margin-left:10px;">Are you sure you want to change restaurant! </h4><br><br>
			    <button type="button" style="padding:5px 5px 5px 5px;margin-left:20px;" class="btn btn-warning" onclick="hideconfirmDelete()">Cancel</button>
			    <button type="submit"  style="padding:5px 7px 5px 7px;margin-left:150px;" class="btn btn-success">CHANGE</button>
			    <input type="hidden" id="empstaffid" name="staffId">
			</form>
        </div>
    </div>
        
        <main>
        
        <h2 style="color:blue;">Restaurant List</h2>
        
        <!-- start of delete modal box -->
      <!-- <div id="successModal" th:if="${param.infoMessage != null}" class="modal">
    <p th:text="${param.infoMessage}" class="info-message"></p>
</div>       


<div th:if="${param.infoMessage != null}">
    <p th:text="${param.infoMessage}" class="info-message"></p>
</div>
-->  

<div class="container p-5" id="infoDiv" th:if="${infoMessage}" style="position: absolute; z-index: 3; width: 700px;height:500px;margin-left:250px;">
    <div class="row no-gutters">
        <div class="col-lg-6 col-md-12 m-auto">
            <div class="alert alert-danger fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 style="color:blue;" class="alert-heading">Delete Status!</h3>
                <p style="color:green;display: inline;font-size:20px;" th:text="${infoMessage}"></p><img th:src="@{images/success-icon.png}" width="20px" height="20px;">
            </div>
        </div>
    </div>
</div>

        
        <!-- end delete success model box -->
            
            <div class="page-content">
            
                <div class="records table-responsive" id="records">

                    <div class="record-header">
                        
                        
                    </div>
					<!-- Add a confirmation dialog -->
					
                     <div class="container" style="margin-top:10px;">
                     <button class="button" style="vertical-align:middle" onclick="location.href='/addRestaurant'"><span>New Add</span></button>
                     <p></p>
        <table id="employeeTbl" class="table table-striped table-bordered" style="width:100%">
                <thead>
		            <tr>
		                <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Payment Receiver Name</th>
                        <th>Price</th>
                        <th>Status</th>
                
                        <th style="width:120px;">Action</th>
		            </tr>
		        </thead>
		        <tbody>
		            <tr th:each="restaurant,index : ${restaurants}">
                        <td scope="row" th:text="${index.index + 1}"></td>
                        <td th:text="${restaurant.name}"></td>
                        <td th:text="${restaurant.address}"></td>
                        <td th:text="${restaurant.city}"></td>
                        <td th:text="${restaurant.email}"></td>
                        <td th:text="${restaurant.phone}"></td>
                        <td th:text="${restaurant.paymentReceiveName}"></td>
                        <td th:text="${restaurant.price}"></td>
                        <td>
					    	<span th:if="${restaurant.status == 'OK'}" style="color:white; background-color: green;" class="badge badge-success rounded-pill d-inline">Now</span>
					    	<span th:if="${restaurant.status == 'Not OK'}" style="color:white; background-color: red;" class="badge badge-danger rounded-pill d-inline">Recent</span>
					    	
					    </td>
                        <td style="width:100px;">
                            <a th:href="@{/editRestaurant/{id}(id=${restaurant.id})}" class="settings" title="Settings" data-toggle="tooltip" ><i class="material-icons">&#xE8B8;</i></a>
                            
                            <a th:href="@{/deleteRestaurant(id=${restaurant.id})}"   class="delete" title="Change Restaurant" data-toggle="tooltip" ><i class="material-icons" style="font-size: 24px; font-weight: bold;">check</i></a>
                           
                        </td>
                        </tr>
                        
		        </tbody>
                
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Payment Receiver Name</th>
                        <th>Price</th>
                
                        <th style="width:120px;">Action</th>
                    </tr>
                </tfoot>
            </table>
        </div>

                </div>
            
            </div>
            
        </main>
        
    </div>
    <script>
        function showFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "block";
        }
        
        function hideFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "none";
        }
        function setHiddenFieldValue() {
            alert(document.getElementById("hiddenEmpStaffId").value);
        }
        function confirmDelete() {
            document.getElementById("deleteConfirmDialog").style.display = "block";
        }


        function hideconfirmDelete() {
            document.getElementById("deleteConfirmDialog").style.display = "none";
        }
        
        document.addEventListener('DOMContentLoaded', function () {
            var deleteLinks = document.getElementsByClassName('delete');
            
            for (var i = 0; i < deleteLinks.length; i++) {
                deleteLinks[i].addEventListener('click', showConfirmationForm);
            }
        });
        function showConfirmationForm(event) {
        	alert("hi");
        	event.preventDefault();
            var staffId = this.getAttribute('href').split('?id=')[1];
            document.getElementById('empstaffid').value = staffId;
            document.getElementById("deleteConfirmDialog").style.display = "block";
        }

    </script>
    <!-- JavaScript code to show the modal -->
    
    <script>
  $(document).ready(function () {
	  $('#employeeTbl').DataTable({
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
<script>
setTimeout(function() {
    document.getElementById('infoDiv').style.display = 'none';
}, 3000);
</script>
   <script>
  // JavaScript Code
  document.addEventListener("DOMContentLoaded", function() {
    showSuccessModal();
    setTimeout(hideModal, 3000);
  });

  function showSuccessModal() {
    var modal = document.getElementById("successModal");
    modal.style.display = "block";
  }

  function hideModal() {
    var modal = document.getElementById("successModal");
    modal.style.display = "none";
  }
</script>

    <script>
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
	
	</script>
	<script>
        function showFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "block";
        }
        
        function hideFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "none";
        }
        function setHiddenFieldValue() {
            alert(document.getElementById("hiddenEmpStaffId").value);
        }
        function confirmDelete() {
            document.getElementById("deleteConfirmDialog").style.display = "block";
        }


        function hideconfirmDelete() {
            document.getElementById("deleteConfirmDialog").style.display = "none";
        }
        
        document.addEventListener('DOMContentLoaded', function () {
            var deleteLinks = document.getElementsByClassName('delete');
            for (var i = 0; i < deleteLinks.length; i++) {
                deleteLinks[i].addEventListener('click', showConfirmationForm);
            }
        });
        function showConfirmationForm(event) {
        	event.preventDefault();
            var staffId = this.getAttribute('href').split('?id=')[1];
            document.getElementById('empstaffid').value = staffId;
            document.getElementById("deleteConfirmDialog").style.display = "block";
        }

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
</body>
</html>