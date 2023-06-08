<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Modern Admin Dashboard</title>
<link rel="stylesheet" type="text/css" href="/css/test.css">
<link rel="stylesheet" type="text/css" href="/css/payment.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

	<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
	integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- jQuery CDN -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- Bootstrap Validator CDN -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

<!-- DataTables CDN -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css" />
<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	<link rel="stylesheet" href="css/selectBox.css">
	<link rel="stylesheet" type="text/css" href="/css/box.css">
    <script src="js/box.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
	
	
<!-- payment.css -->

<style>


.gender_title {
	color:blue;
  font-weight: bold;
}

.category {
  display: flex;
  flex-direction: column;
}

.category label {
  display: flex;
  color:blue;
  
  align-items: center;
  margin: 10px 0;
}



.gender {
  font-weight: bold;
}

.btn {
  margin-top: 10px;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.btn-warning {
  background-color: #ff9900;
  color: #fff;
}

.btn-primary {
  background-color: #007bff;
  color: #fff;
}

    .disabled-option {
        color: gray;
    }
</style>
<style>
.pay {
 	 position: fixed;
	top: 53%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 5;
	color: #fff;
	
	padding: 5px 20px 20px 10px;
	text-align: center;
	font-size: 18px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	display: none;
	border-radius: 1rem;
	  margin: 20px;
  padding: 20px;
  background-color: #f1f1f1;
  border: 1px solid #ccc;
	min-width: 400px;
	animation: show-alert 2s ease-in-out forwards;}  
	.content { display : flex;
	align-items: center;
	height: 250px;
	
}
@keyframes pay {
	0% {
		opacity: 0;
		transform: translate(-50%, -50%) scale(0.5);
	}
	100% {
		opacity: 1;
		transform: translate(-50%, -50%) scale(1);
	}
}

*{
font-size: 16px;
}
.page-content {
    padding: 0rem 1rem;
    background: #f1f4f9;
}
td {
	word-break: break;
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

.dropdown:hover .dropbtn {
	background-color: LightSeaGreen;
}

.highlight {
	color: red;
}

.checkboxdark {
	appearance: none;
	position: relative;
	background-color: rgb(216, 216, 216);
	height: 1.6rem;
	width: 3rem;
	border-radius: 1rem;
	cursor: pointer;
	transition: 0.3s ease;
	opacity: 0.5;
}

.checkboxdark::before {
	content: "";
	height: 1.2rem;
	width: 1.4rem;
	background-color: black;
	border-radius: 50%;
	transition: 0.3s ease;
	top: 2px;
	position: absolute;
	left: 3px;
}

.checkboxdark:checked {
	background-color: rgb(197, 136, 255);
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

.dark {
	background-color: rgb(17, 17, 17);
}

.middark {
	background-color: rgb(45, 45, 45);
}

.table {
	width: 65%;
	border: 2px solid #ddd;
	margin-right: 200px;
	margin-button: 30px;
}
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
</style>


<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body class="mainbody">
	<input type="checkbox" id="menu-toggle">
	<div class="sidebar">


		<div class="side-content">
			<div class="profile">
				<div class="profile-img bg-img"
					style="background-image: url(images/DAT.png)"></div>
				<h4>DAT</h4>
			</div>

			<div class="side-menu">
				<div th:replace="fragments :: s_header"></div>
			</div>
		</div>
	</div>

	<div class="main-content">

		<div th:replace="fragments :: sub_header"></div>
		<div id="feedbackDialog" style="z-index: 3">
			<div class="dialogContent">
				<h2>Feedback</h2>
				<form>
					<label for="feedback">Please enter your feedback:</label><br>
					<textarea style="width: 300px; height: 100px; font-size: 15px;"
						id="feedback" name="feedback" rows="4" cols="50"></textarea>
					<br>
					<br>
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="button" class="btn btn-secondary"
						onclick="hideFeedbackDialog()">Cancel</button>
				</form>
			</div>
		</div>

		<main>
		
		
		
		  <!-- file Import -->
        <div id="box" class="warning box" style="width: 25rem;display: none" align="center">
        <div class="card"  style="width: 25rem;" align="center">
      <div class="card-body" align="center">
     <h4 class="card-body"  style="
      background:#beae65;
      color:white;
       text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)">Menu Upload</h4>
      
     
             
        <div class="mb-3">
          <form th:action="@{/upload}" method="post" enctype="multipart/form-data">
            <input
              class="form-control" name="file" type="file" id="formFile"><br />
            <input type="submit" value="Upload" class="btn btn-warning">
            <button type="button" class="btn btn-primary" onclick="hideFileImport()">Cancel</button>
            
          </form>
    
  

        </div>  
      </div>
        
     </div>
        </div>
        
		


 <form action="viewVoucher" method="get" >
 
        <div class="sel sel--black-panther">
  <select name="week" id="select-profession">
    <option value="" disabled>WEEK</option>
    <option th:each="week : ${select }" th:value="${week.id}" th:text="${week.description }"></option>
   
  </select>
</div>
<button type="submit" class="btn btn-warning btn-lg">
							Search
						</button>
						<div onclick="location.href = '/paidPage';" class="btn btn-warning btn-lg">
							Paid Voucher
						</div>
						<div onclick="location.href = '/unpaidPage';" class="btn btn-warning btn-lg">
							Unpaid Voucher
						</div>
						
     </form>

						
			<div class="page-contenthhjkdsjd" th:if="${voucher1.weeklyVoucher=='true' }">




				<div class="records table-responsive" id="records">



					<div class="container">
						<div class="page-content container" id="yourTableId">
							<div class="page-header text-blue-d2">
								<h1 class="page-title text-secondary-d1">
									Weekly Invoice <small class="page-info">  ID: #<i
										class="fa fa-angle-double-right text-80" th:text="${Wid}"></i>
									</small>
								</h1>
								<div class="page-tools">
									<div class="action-buttons">
									
										
										<button class="btn bg-white btn-light mx-1px text-95" id="generatePDFButton"><i
                      class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>Export</button>

										
									</div>
								</div>
							</div>
							<div class="container px-0" id="paymentVoucher">
								<div class="row mt-4">
									<div class="col-12 col-lg-12">
										<div class="row">
											<div class="col-12">
												<div class="text-center text-150">
													<img th:src="@{images/datLogo.png}" alt="dat" width="100px"><br>
													<span class="text-default-d3"><h3>Payment
															Vouncher</h3></span>
												</div>
											</div>
										</div>

										<hr class="row brc-default-l1 mx-n1 mb-4" />
										<div class="row">
											<div class="col-sm-6">
												<div>
													<span class="text-sm text-grey-m2 align-middle">Catering
														Service Name : </span> <span
														class="text-600 text-110 text-blue align-middle" th:text="${ResName }"> Restaurant</span>
												</div>
												<div class="text-grey-m2">

													<div class="my-1">
														<i class="fa fa-phone fa-flip-horizontal text-secondary"></i>
														Phone : <b
															class="text-600 text-110 text-blue align-middle" th:text="${Phone }"></b>
													</div>
												</div>
											</div>

											<div
												class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
												<hr class="d-sm-none" />
												<div class="text-grey-m2">
													<div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
														Invoice</div>
													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> ID:#<span
															class="text-600 text-90" th:text="${Wid}"></span> 
													</div>
													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>Payment Date: 
														<span class="text-600 text-90" th:text="${today}" th:if="${voucher1.status!='Paid'}"></span> 
														<span class="text-600 text-90" th:text="${wVoucher.paymentDate}" th:if="${voucher1.status=='Paid'}"></span> 
													
													</div>
													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span
															class="text-600 text-90">Status:</span> <span
															class="badge badge-warning badge-pill px-25" th:text="${voucher1.status}"></span>
													</div>
												</div>
											</div>

										</div>
										<div class="mt-4">
											<div class="row text-600 text-white bgc-default-tp1 py-25">
												<div class="d-none d-sm-block col-1">Sr.No</div>
												<div class="col-3 col-sm-3">Particular Description</div>
												<div class="d-none d-sm-block col-sm-1">No.Pax</div>
												<div class="d-none d-sm-block col-sm-2">Company Price</div>
												<div class="d-none d-sm-block col-sm-2">employee Price</div>
												<div class="d-none d-sm-block col-sm-1">Price</div>
												<div class="col-2">Amount</div>
											</div>
											<div class="text-95 text-secondary-d3">
											
												<div class="row mb-2 mb-sm-0 py-25" th:each="lan,iterStat : ${order}">
													<div class="d-none d-sm-block col-1"  th:text="${iterStat.count}"></div>
													<div class="col-3 col-sm-3"  th:text="${lan.date}"></div>
													<div class="d-none d-sm-block col-sm-1"  th:text="${lan.people}"></div>
													<div class="d-none d-sm-block col-sm-2"  th:text="${lan.comAmount}"></div>
													<div class="d-none d-sm-block col-sm-2"  th:text="${lan.peopleAmount}"></div>
													<div class="d-none d-sm-block col-sm-1"  th:text="${lan.price}"></div>
													<div class="col-1"  th:text="${lan.amount}"></div>
													<div th:attr="data-count=${iterStat.count}"></div>
												</div>
																
																</div>
											<div class="row border-b-2 brc-default-l2"></div>


											<div class="row mt-3">
												<div
													class="col-12 col-sm-7 text-grey-d2 text-95 mt-2 mt-lg-0">
													Extra note such as company or payment information...</div>
												<div
													class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last">
													<div class="row my-2 align-items-center bgc-primary-l3 p-2">
														<div class="col-7 text-right">Total Amount</div>
														<div class="col-5">
															<span class="text-150 text-success-d3 opacity-2" th:text="${totalAmount}"></span>
														</div>
													</div>
												</div>
											</div>
											
														 <form action="paymentVoucher" method="post" >
											<div class="container text-center">
												<div class="row">
													<div class="col">
														<br> <br> Signature <br> <br> <b>Cashier</b><br>
														
														<select name="cashier" th:if="${voucher1.status!='Paid'}" >
														
   				<option class="text-muted" value=""  selected>Select</option>
   			 	<option class="text-muted" th:each="employee : ${emp }" th:value="${employee.name}" th:text="${employee.name }"></option>
    		
                        </select>
                        <p th:if="${voucher1.status=='Paid'}">
                        <b th:text="${voucher1.cashier}"></b></p>
                        
													</div>
													<div class="col" >
														<br> <br> Signature <br> <br> <b>Received
															by</b><br> <b th:text="${voucher1.received}"></b>
													</div>
													<div class="col">
														<br> <br> Signature <br> <br> <b>Approved
															by</b><br> 
															<select name="approved" th:if="${voucher1.status!='Paid'}">
															<option value=""  selected >Select</option>
   			 	<option th:each="employee : ${emp }" th:value="${employee.name}" th:text="${employee.name }"></option>
   			 	 </select>
   			 	  <p th:if="${voucher1.status=='Paid'}">
                        <b th:text="${voucher1.approved}"></b></p>
   			 	 <input type="hidden" name="voucherID" th:value="${voucher1.id }" />
													</div>
												</div>
											</div>
											<hr />
											
											<div>
												<span class="text-secondary-d1 text-105">Thank you
													for your business</span> 
													  <input  onclick="showPayment()" value="Pay Now1" class="btn btn-info btn-bold px-4 float-right mt-3 mt-lg-0" th:if="${voucher1.status!='Paid'}" >
											</div>
											
											<div class="pay" id="paymentBox" >
	
	
	<div class="gender_details">
              
              
              
            
              <span class="gender_title">Choose Payment Method :</span>
              <div class="category">
                  <label for="dot-1">
                  <input type="radio" name="payment" id="dot-1" value="Cash">
                      <span class="dot one"></span>
                      <span class="gender">Cash</span>
                  </label>
                  <label for="dot-2">
                  <input type="radio" name="payment" id="dot-2" value="K-pay">
                      <span class="dot two"></span>
                      <span class="gender">K-pay</span>
                  </label>
                  <label for="dot-3">
                   <input type="radio" name="payment" id="dot-3" value="wave-pay">
                      <span class="dot three"></span>
                      <span class="gender">Wave-pay</span>
                  </label>
              </div>
              <input type="hidden" id="voucherID" th:value="${voucher1.id}" />
              
            <input type="submit" value="Pay Now" class="btn btn-warning">
            <button type="button" class="btn btn-primary" onclick="hidePayment()">Cancel</button>
            
          
          </div>
</div>
		
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
				<!-- /.container -->

			</div>
	</div>

	</main>

	</div>
	
	
	 <script>
    const generatePDFButton = document.querySelector('#generatePDFButton');
    generatePDFButton.addEventListener('click', generatePDF);

    function generatePDF() {
    
      const div = document.querySelector('#paymentVoucher');
      html2pdf()
        .from(div)
        .save();
    }
  </script>
	
	
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
    
     <script>

window.onload = function() {
    var success1 = "[[${success}]]";
    var success = "[[${message}]]";
    var Delete = "[[${message2}]]";
    var Delete2 = "[[${errorMessage3}]]";
    
    if (success1 !== "") {
      Swal.fire({
        icon: 'success',
        title: 'Payment Successfully',
        text: success1,
        showClass: {
          popup: 'animateanimated animatefadeInDown'
        },
        hideClass: {
          popup: 'animateanimated animatefadeOutUp'
        }
      });
    }
    
    if (success !== "") {
      Swal.fire({
        icon: 'success',
        title: 'Successfully',
        text: success,
        showClass: {
          popup: 'animateanimated animatefadeOutUp'
        }
      }).then(function() {
        logout();
      });
    }
    
    if (Delete !== "") {
      Swal.fire({
        icon: 'error',
        title: 'Sorry',
        text: Delete,
        showClass: {
          popup: 'animateanimated animatefadeInDown'
        },
        hideClass: {
          popup: 'animateanimated animatefadeOutUp'
        }
      });
    }
    
    if (Delete2 !== "") {
      Swal.fire({
        icon: 'warning',
        title: 'Wait to order',
        text: Delete2,
        showClass: {
          popup: 'animateanimated animatefadeInDown'
        },
        hideClass: {
          popup: 'animateanimated animatefadeOutUp'
        }
      });
    }
  };
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('select[name="cashier"]').change(function() {
            var selectedCashier = $(this).val();
            $('select[name="approved"] option').prop('disabled', false).removeClass('disabled-option');
            if (selectedCashier) {
                $('select[name="approved"] option[value="' + selectedCashier + '"]').prop('disabled', true).addClass('disabled-option');
            }
        });
        
        $('select[name="approved"]').change(function() {
            var selectedApproved = $(this).val();
            $('select[name="cashier"] option').prop('disabled', false).removeClass('disabled-option');
            if ( selectedApproved) {
                $('select[name="cashier"] option[value="' + selectedApproved + '"]').prop('disabled', true).addClass('disabled-option');
            }
        });
    });
</script>
<script>
// Add a click event listener to a button
const generatePDFButton = document.querySelector('#generatePDFButton');
generatePDFButton.addEventListener('click', generatePDF);

// Function to generate the PDF from the table
function generatePDF() {
	
  const table = document.querySelector('#yourTableId');

  // Create a new jsPDF instance
  const doc = new jsPDF();

  // Convert the table to a PDF
  doc.autoTable({ html: table });

  // Save the PDF
  doc.save('table.pdf');
}
</script>

<script>
        function showPayment() {
            paymentBox.style.display = "block";
           
        }
        
        var voucherID1 = document.querySelector("#voucherID");
        var voucherIDValue = voucherID1.value;
        function hidePayment() {
            paymentBox.style.display = "none";
            
           
        }
        
        </script>
        
       
    
      <script src="js/selectBox.js"></script>
</body>
</html>