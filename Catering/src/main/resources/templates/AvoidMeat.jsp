<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Avoid Meat</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
    
   .side-menu a {
	display: block;
	padding: 1.2rem 0rem;
}
.side-menu a:hover{
	background-color:blue;
}

.side-menu a.active {
	background: #2B384E;
}

.side-menu a.active span, .side-menu a.active small {
	color: #fff;
}

.side-menu a span {
	display: block;
	text-align: center;
	font-size: 0.9rem;
}

.side-menu a span, .side-menu a small {
	color: #899DC1;
}

#menu-toggle:checked ~ .sidebar {
	width: 60px;
}
       
    
        body {
            background: #e5edf3;
            margin-top: 120px;
            margin-left: 180px;
             margin-top: 130px;
        background-image: url("images/avmeat.jpg");
             background-size:fix;
    
        }
.fa-solid, .fas {
    color: #f5ebeb;
}
        .card {
            border: none;
            -webkit-box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
            box-shadow: 1px 0 20px rgba(96, 93, 175, .05);
            margin-bottom: 30px;
        }

        .table th {
            font-weight: 500;
            color: #090e15;
        }

        .table thead {
            background-color: #42a5e2;
        }

        .table>tbody>tr>td,
        .table>tfoot>tr>td,
        .table>thead>tr>td {
            padding: 14px 12px;
            vertical-align: middle;
        }

        .table tr td {
            color: #0d77a4;
        }

        .thumb-sm {
            height: 32px;
            width: 32px;
        }

        .badge-soft-warning {
            background-color: rgba(248, 201, 85, .2);
            color: #f8c955;
        }

        .badge {
            font-weight: 500;
        }

        .badge-soft-primary {
            background-color: rgba(96, 93, 175, .2);
            color: #4d4ab6;
        }
        .button-70 {
  background-image: linear-gradient(#0dccea, #0d70ea);
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
}

img{
    min-width: 50px;
    max-width: 80px;
   min-height: 50px;
    padding: 3px;
    border: 1px solid #28a745;
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
        
            .modern-heading {
        font-family: "Arial", sans-serif;
        font-size: 32px;
        color: #555;
        text-align: center;
        margin-bottom: 20px;
        text-transform: uppercase;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
       
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
                <input type="hidden" name="avoidmeat" value="avoidmeat">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>  
        
    <div id="deleteConfirmDialog" style="z-index:3;border:2px solid black" >        
        <div class="dialogContent">
            <form th:action="@{/deleteMeat}" method="post" id="deleteForm">
          <h3 style="text-align:center;">Delete Confirmation?</h3>
          <label style="color:red;">Are you sure you want to delete this! You can not get back after delete!. </label><br><br>
          <button type="button" style="padding:5px 5px 5px 5px;margin-left:20px;" class="btn btn-warning" onclick="hideconfirmDelete()">Cancel</button>
          <button type="submit"  style="padding:5px 5px 5px 5px;margin-left:150px;" class="btn btn-danger">Delete</button>
          <input type="hidden" id="empstaffid" name="staffId">
      </form>
        </div>
    </div>
        <main>
            
            
            
           <div class="container">
        <div class="row">
            <div class="col-xl-8">
                <div class="card" style="background-image: linear-gradient(to bottom, #b5b5b5 0%, #e5e5e5 100%);opacity: 0.9;height:auto;">
                    <div class="card-body">
      <h3 class="modern-heading">Avoid Meat List</h3>
                        <div class="table-responsive">
                            <table id="myTable" class="table table-hover mb-0">
                                <thead>
                                    <tr class="align-self-center">
                                        <th>Id</th>
                                        <th>Meat</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody th:each="lan,index: ${avoid}" style="font-weight: bold;" >
                                    <tr>
                                        <td th:text="${index.index + 1}"></td>
                                        <td th:text="${lan.name }"></td>
                                        <td>
                                            <a th:href="@{/updateMeat/{id}(id=${lan.id})}" class="table-link text-info" title="Update" data-toggle="tooltip">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                            <a th:href="@{/deleteMeat(id=${lan.id})}" class="table-link danger delete" title="Delete" data-toggle="tooltip">
                                                <span class="fa-stack">
                                                    <i class="fa fa-square fa-stack-2x"></i>
                                                    <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                                </span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>

                        <div class="pt-3 border-top text-right"><a href="AvoidMeatAdd" class="text-primary">
                                <!-- HTML !-->
                                <a href="AvoidMeatAdd" class="button-70" role="button">New</a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </main>
        
    </div>
     
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
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
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
    $(document).ready(function() {
        $('#myTable').DataTable();
    });
</script>
</body>
</html>