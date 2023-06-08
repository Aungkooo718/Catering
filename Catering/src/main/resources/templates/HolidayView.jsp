<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Holiday View</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->

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
 

    <link rel="stylesheet" href="css/order.css">

            <style>
            .fa-solid, .fas {
    color: #f5ebeb;
}
                body{
                    margin-top: 100px;
                    font-size: 18px;
           
                }
                img {
                    min-width: 30px;
                    max-width: 60px;
                    min-height: 30px;
                    padding: 3px;
                    border: 1px solid #146c7f;
                }
                @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');
     
            *{
              font-family: 'Roboto Slab', serif;
      
            }
                .button-70 {
  background-image: linear-gradient( #5adaff 0, #5468ff);
  border: 0;
  border-radius: 4px;
  box-shadow: rgba(0, 0, 0, .3) 0 5px 15px;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  font-family: Montserrat,sans-serif;
  font-size: .9em;
  margin: 5px;
  padding: 10px 15px;
  text-align: center;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  margin-left: 950px;
}

.table thead {
            background-color: #5498ff;
        }
        .badge-soft-primary {
            background-color: rgba(96, 93, 175, .2);
            color: #4d4ab6;
        }

            </style>
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

#deleteConfirmDialog {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            z-index: 5;
        }
        #deleteConfirmDialog .dialogContent {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 400px;
            background-color: AliceBlue;
            padding: 20px;
            border: 4px solid black;
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
table tbody td:first-child {
    padding-left: 1rem;
    color: var(--main-color);
    font-weight: 600;
    font-size: 1em;
}
table.dataTable thead th, table.dataTable tfoot th {
    font-weight: bold;
    font-size: 1em;
}


table td,
table th {
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
}
table tbody td{
	color:white;
}

.mask-custom {
  background: rgba(24, 24, 16, .2);
  border-radius: 2em;
  backdrop-filter: blur(25px);
  border: 2px solid rgba(255, 255, 255, 0.05);
  background-clip: padding-box;
  box-shadow: 10px 10px 10px rgba(46, 54, 68, 0.03);
}

/*for button resposnsive*/
.button-70 {
  width:150px;
  padding: 10px 20px;
  margin-left: 140px;
  margin-top: 60px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  background-color: #e0e0e0;
  color: #333;
  border-radius: 5px;
  position:right;
  transition: background-color 0.3s;
 
}

/* Media Query for Small Screens */
@media screen and (max-width: 767px) {
  .button-70 {
    padding: 8px 16px;
    font-size: 14px;
  }
}

/* Media Query for Medium Screens */
@media screen and (min-width: 768px) and (max-width: 991px) {
  .button-70 {
    padding: 10px 18px;
    font-size: 15px;
  }
}

/* Media Query for Large Screens */
@media screen and (min-width: 992px) {
  .button-70 {
    padding: 10px 20px;
    font-size: 16px;
  }
}

table tbody th{
	font-size:1.9rem;
}

label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
    color: yellow;
}

#dataTable_filter label{
	float:right;
}
#dataTable_length{
	color:black;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: black;
}

element.style {
}
input[type=search] {
    -webkit-appearance: none;
}
input[type=search] {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
input[type=search] {
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
    -webkit-appearance: textfield;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: black;
    height: 40px;
    border-radius: 10px;
}
.header-content label:first-child span {
    font-size: 1.3rem;
    color: black;
}
.dataTables_info{
	color:white;
}
.dataTables_paginate{
	float:right;
}
	.dataTables_paginate a{
		margin:2px;
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
    </style>
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody" style="  margin-top:0px;">
   <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(/images/DAT.png)"></div>
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
                <label style="color:black" for="feedback">Please enter your feedback:</label><br>
                <input type="hidden" name="holiday" value="holiday">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>  
    
    <div id="deleteConfirmDialog" style="z-index:3;border:2px solid black" >        
        <div class="dialogContent">
            <form th:action="@{/deleteHoliday}" method="post" id="deleteForm">
          <h3 style="text-align:center;">Delete Confirmation?</h3>
          <label style="color:red;">Are you sure you want to delete this! You can not get back after delete!. </label><br><br>
          <button type="button" style="padding:5px 5px 5px 5px;float:left;width:70px;" class="btn btn-warning" onclick="hideconfirmDelete()">Cancel</button>
          <button type="submit"  style="padding:5px 5px 5px 5px;float:right;width:70px;" class="btn btn-danger">Delete</button>
          <input type="hidden" id="empstaffid" name="staffId">
      </form>
      
        </div>
    </div>
        
        <main  >
            <!-- HTML !-->
            
       <section class="intro" >
    <div class="bg-image h-100"  >   
   <br>
    <a href="holidayAdd" class="button-70" role="button"  width="190px;">New Add</a>
    
      <div style="margin-top:30px;" class="mask d-flex align-items-center h-100">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="card mask-custom">
                <div class="card-body" >
                
             
                
                  <div class="table-responsive">
                    <table id="dataTable" class="table table-borderless text-white mb-0">
                      <thead>
                        <tr>
                          <th style="font-size:1.9rem;" scope="col">ID</th>
                          <th style="font-size:1.9rem;" scope="col">DATE</th>
                          <th style="font-size:1.9rem;" scope="col">DAY</th>
                          <th style="font-size:1.9rem;" scope="col">ABOUT</th>
                          <th style="font-size:1.9rem;" scope="col">ACTION</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr th:each="view,index: ${holiday}">
                          <td scope="row" th:text="${index.index + 1}"></td>
                        <td th:text="${view.date}"></td>
                        <td th:text="${view.day}"></td>
                        <td th:text="${view.holidays}"></td>
                          <td>
                            <a th:href="@{/updateHoliday/{id}(id=${view.id})}" class="table-link text-info" title="Update" data-toggle="tooltip">
                              <span class="fa-stack">
                             
                                  <i class="fa fa-pencil fa-stack-1x fa-inverse" ></i>
                              </span>
                          </a>
                          <a th:href="@{/deleteHoliday(id=${view.id})}" class="table-link danger delete" title="Delete" data-toggle="tooltip">
                              <span class="fa-stack">
                                  <span class="glyphicon glyphicon-trash"></span>
                                  <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                              </span>
                          </a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
               

        </main>
        
    </div>
    <script>
  $(document).ready(function () {
	  $('#dataTable').DataTable({
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