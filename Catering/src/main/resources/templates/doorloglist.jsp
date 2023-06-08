<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Doorlog</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
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

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300;500&display=swap');

        * {
            font-family: 'Roboto Slab', serif;
        }

        td {
            word-break: break;

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
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: LightSeaGreen;
        }

        .dropdown:hover .dropdown-content {
  display: block;
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

table thead th{
	font-size:16px;
}
table tbody td:first-child{
	font-size:1.4rem;
}
</style>
</head>
<body>
  <div class="container">
    <h1>Welcome to the Admin Dashboard</h1>
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
    
    <div th:replace="fragments :: sub_header" ></div>  
    
    
    <div id="feedbackDialog" style="z-index:3" >
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form th:action="@{/addFeedback}" method="post">
                <label for="feedback">Please enter your feedback:</label><br>
                <input type="hidden" name="doorlog" value="doorlog">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>  
    
    
    <table id="doorlog" class="table table-striped table-bordered">
      <thead>
        <tr>
                <th>Door Log Number</th>
                <th>Door Log Time</th>
                <th>Department</th>
                <th>Name</th>
            </tr>
      </thead>
      <tbody>
      
      <tr th:each="doorLog : ${doorLogList}">
                <td th:text="${doorLog.id.doorlogno}"></td>
                <td th:text="${doorLog.id.doorlogtime}"></td>
                <td th:text="${doorLog.department}"></td>
                <td th:text="${doorLog.name}"></td>
                 <!--  <td><a th:href="@{/doorlog/{doorlogtime}/{doorlogno}/edit(doorlogtime=${doorLog.id.doorlogtime}, doorlogno=${doorLog.id.doorlogno})}">Edit</a></td>
			    <td>
			        <form th:action="@{/doorlog/{doorlogtime}/{doorlogno}/delete(doorlogtime=${doorLog.id.doorlogtime}, doorlogno=${doorLog.id.doorlogno})}" method="get">
			            <button type="submit">Delete</button>
			        </form>
			    </td>  -->
			    
			    </tr>
      
        
        <!-- Add more rows as needed -->
      </tbody>
    </table>
  </div>
  <script>
    $(document).ready(function() {
        $('#sidebar-menu a').click(function() {
            // Remove active class from all links
            $('#sidebar-menu a').removeClass('active');
            
            // Add active class to the clicked link
            $(this).addClass('active');
        });
    });
</script>
  
  <script>
  $(document).ready(function () {
	  $('#doorlog').DataTable({
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
        
