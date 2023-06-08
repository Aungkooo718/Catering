<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>DoorLog Info</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--DataTables    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css" />
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>-->
	
	<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
	
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	
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
  font-size:12px;
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

 body{
            margin-top: 100px;
            background-color:#D5D6EA;
        }
div.container {
	padding: 30px;
	width: 100%;
	font-size: 14px !important;
}
.table-container {
	width: 100%;
}

thead {
	background: #007C80;
	color: #007C80;
	font-size: 12px;
}

table#dataTable {
	border-bottom: none !important;
}

/* WHITE SORTING ARROWS */
table.dataTable thead .sorting_asc {
	background-color:#7FFFD4;
	font-size: 12px;
}

table.dataTable thead .sorting_desc {
	background-color:#7FFFD4;
	font-size: 12px;
}
table tbody td:first-child {
    padding-left: 1rem;
    color: var(--main-color);
    font-weight: 600;
    font-size: 1.5rem;
}
table thead th {
    padding: 1rem 0rem;
    text-align: left;
    color: #444;
    font-size: 1.9rem;
}
td {
    word-break: break;
    font-size: 15px;
}

.button-8 {
  background-color: #e1ecf4;
  border-radius: 3px;
  border: 1px solid #7aa7c7;
  box-shadow: rgba(255, 255, 255, .7) 0 1px 0 0 inset;
  box-sizing: border-box;
  color: #39739d;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI","Liberation Sans",sans-serif;
  font-size: 13px;
  font-weight: 400;
  line-height: 1.15385;
  margin: 0;
  outline: none;
  padding: 8px .8em;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: baseline;
  white-space: nowrap;
}

.button-8:hover,
.button-8:focus {
  background-color: #b3d3ea;
  color: #2c5777;
}

.button-8:focus {
  box-shadow: 0 0 0 4px rgba(0, 149, 255, .15);
}

.button-8:active {
  background-color: #a0c7e4;
  box-shadow: none;
  color: #2c5777;
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
  a[title="See Details"]:hover{
  background-color: none; /* Change this to the desired background color */
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                <input type="hidden" name="dashboard" value="lunchRegist">
                <textarea  style="width: 355px; height: 256px; font-size: 15px;resize: none;" id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                
                <button style="padding:5px 20px 5px 20px" type="button" class="btn btn-warning" onclick="hideFeedbackDialog()">Cancel</button>
            	<button style="padding:5px 20px 5px 20px" type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>  

	<main>
		<div class="table-container">
	<!-- TABLE 1 -->
	<div class="container">
		<h2><b>History of Doorlog Access</b></h2>
		<hr>
		<table id="dataTable" class="table table-striped table-bordered table-hover display">
			<thead>
				<tr>
					<th>Date</th>
					<th>Register-Eat</th>
					<th>Register-NoEat</th>
					<th>UnRegister-Eat</th>
				</tr>
			</thead>
			<tbody>
			
				<tr th:each="view : ${session.lunchView}" >
					<td th:text="${view.ldate}" ></td>
					<td ><a  title="See Details" th:href="@{/registerEat/{date}(date=${view.ldate})}" class="button-8" role="button" th:text="${view.re}"></a></td>
					<td ><a  title="See Details" th:href="@{/registerNoEat/{date}(date=${view.ldate})}" class="button-8 " role="button" th:text="${view.rne}"></a></td>
					<td ><a  title="See Details" th:href="@{/unregisterEat/{date}(date=${view.ldate})}" class="button-8" role="button" th:text="${view.ue}"></a></td>
				</tr>
				
			</tbody>
		</table>
		<div class="row">
		 <div class="col-lg-6">
		<h2>Lunch Report For [[${date}]]</h2>
		<div id="chart"></div>
		</div>
		<div class="col-lg-6">
		<h2>5 days Report For Lunch Info</h2>
		<div id="line"></div>
		</div>
		</div>
	</div>
	<br />

</div><!-- /TABLE CONTAINER -->
<br />
<br />
	</main>


    </div>
    <script>

window.onload = function() {
    var success1 = "[[${success1}]]";
    var success = "[[${success}]]";
    var Delete = "[[${Delete}]]";
    var Delete2 = "[[${Delete2}]]";
    
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
          popup: 'animate__animated animate__fadeInDown'
        },
        hideClass: {
          popup: 'animate__animated animate__fadeOutUp'
        }
      });
    }
    
    if (Delete !== "") {
      Swal.fire({
        icon: 'error',
        title: 'Please Choose File',
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
        title: 'Please Choose File',
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
    
    
    <script th:inline="javascript">
    var re = [[${re}]];
    var rne = [[${rne}]];
    var ue = [[${ue}]];
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

        
    </script>
  

<script th:inline="javascript">
var re = [[${re}]];
var rne = [[${rne}]];
var ue = [[${ue}]];

var options = {
        series: [re,rne,ue],
        chart: {
        width: '70%',
        type: 'pie',
      },
      labels: ["Register-Eat", "Register-No-Eat", "UnRegister-Eat"],
      theme: {
        monochrome: {
          enabled: true
        }
      },
      plotOptions: {
        pie: {
          dataLabels: {
            offset: -5
          }
        }
      },
      title: {
        text: "Monochrome Pie"
      },
      dataLabels: {
        formatter(val, opts) {
          const name = opts.w.globals.labels[opts.seriesIndex]
          return [name, val.toFixed(1) + '%']
        }
      },
      legend: {
        show: false
      }
      };

      var chart = new ApexCharts(document.querySelector("#chart"), options);
      chart.render();
</script>
<script th:inline="javascript">

var options = {
        series: [{
        name: 'Register-Eat',
        data: [[${relist}]]
      }, {
        name: 'Register-NoEat',
        data: [[${rnelist}]]
      },{
    	  name: 'Unregister-Eat',
          data: [[${uelist}]]
      }],
        chart: {
        height: 350,
        type: 'area'
      },
      dataLabels: {
        enabled: false
      },
      stroke: {
        curve: 'smooth'
      },
      xaxis: {
        type: 'datetime',
        categories: [[${dates}]]
      },
      tooltip: {
        x: {
          format: 'dd/MM/yy '
        },
      },
      };

      var chart = new ApexCharts(document.querySelector("#line"), options);
      chart.render();
</script>
</body>
</html>