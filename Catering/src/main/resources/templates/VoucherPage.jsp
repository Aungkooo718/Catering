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

<link href="css/mobiscroll.jquery.min.css" rel="stylesheet" />
<script src="js/mobiscroll.jquery.min.js"></script>
	

<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
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


.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    font-size: 15px;
}

/* Define the button style */
.button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  cursor: pointer;
  margin-left:270px;
}

/* Style the icon */
.button i {
  margin-right: 5px;
}

/* Hover effect */
.button:hover {
  background-color: #45a049;
}

/* Active effect */
.button:active {
  background-color: #3e8e41;
}

.close {
  font-size: 45px;
  font-weight: 600;
}
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #333C48;
	margin-top: 100px;
}

.container {
	max-width: 800px;
	max-height: 700px;
	font-size: 10px;
	color: black;
	paddind-top:5px;
}

.alert {
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
	width: 800px; height : 720px;
	min-width: 400px;
	animation: show-alert 2s ease-in-out forwards;}  
	.content { display : flex;
	align-items: center;
	height: 820px;
	
}
@keyframes show-alert {
	0% {
		opacity: 0;
		transform: translate(-50%, -50%) scale(0.5);
	}
	100% {
		opacity: 1;
		transform: translate(-50%, -50%) scale(1);
	}
}

.icon {
	padding: 0.5rem;
	margin-right: 1rem;
	border-radius: 39% 61% 42% 58%/50% 51% 49% 50%;
	box-shadow: 0px 3.2px 13.8px rgba(0, 0, 0, 0.02), 0px 7.6px 33.3px
		rgba(0, 0, 0, 0.028), 0px 14.4px 62.6px rgba(0, 0, 0, 0.035), 0px
		25.7px 111.7px rgba(0, 0, 0, 0.042), 0px 48px 208.9px
		rgba(0, 0, 0, 0.05), 0px 115px 500px rgba(0, 0, 0, 0.07)
}

.close {
	background-color: transparent;
	border: none;
	outline: none;
	transition: all 0.2s ease-in-out;
	padding: 0.75rem;
	border-radius: 0.5rem;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
}

.close:hover {
	background-color: #fff;
}

.info {
	background-color: rgba(0, 108, 227, 0.2);
	border: 2px solid #006CE3;
}

.info .icon {
	background-color: #006CE3;
}

.warning {
	background-color: rgba(239, 148, 0, 0.2);
	border: 2px solid white;
}

.warning .icon {
	background-color: white;
}
</style>
<style>
body {
	letter-spacing: 0.8px;
	background: linear-gradient(0deg, #fff, 50%, #74a0ff);
	background-repeat: no-repeat;
}

.container-fluid {
	margin-top: 80px !important;
	margin-bottom: 80px !important;
	
}

p {
	font-size: 14px;
	margin-bottom: 7px;
}

.cursor-pointer {
	cursor: pointer;
}

a {
	color: Black !important;
}

.bold {
	font-weight: 600;
}

.small {
	font-size: 12px !important;
	letter-spacing: 0.5px !important;
}

.Today {
	color: rgb(83, 83, 83);
}

.btn-outline-primary {
	background-color: #fff !important;
	color: #4bb8a9 !important;
	border: 1.3px solid #4bb8a9;
	font-size: 12px;
	border-radius: 0.4em !important;
}

.btn-outline-primary:hover {
	background-color: #4bb8a9 !important;
	color: #fff !important;
	border: 1.3px solid #4bb8a9;
}

.btn-outline-primary:focus, .btn-outline-primary:active {
	outline: none !important;
	box-shadow: none !important;
	border-color: #42A5F5 !important;
}

#progressbar {
	margin-bottom: 30px;
	overflow: hidden;
	color: #455A64;
	padding-left: 0px;
	margin-top: 30px
}

#progressbar li {
	list-style-type: none;
	font-size: 13px;
	width: 33.33%;
	float: left;
	position: relative;
	font-weight: 400;
	color: #455A64 !important;
}

#progressbar #step1:before {
	content: "1";
	color: #fff;
	width: 29px;
	margin-left: 15px !important;
	padding-left: 11px !important;
}

#progressbar #step2:before {
	content: "2";
	color: #fff;
	width: 29px;
}

#progressbar #step3:before {
	content: "3";
	color: #fff;
	width: 29px;
	margin-right: 15px !important;
	padding-right: 11px !important;
}

#progressbar li:before {
	line-height: 29px;
	display: block;
	font-size: 12px;
	background: #455A64;
	border-radius: 50%;
	margin: auto;
}

#progressbar li:after {
	content: '';
	width: 121%;
	height: 2px;
	background: #455A64;
	position: absolute;
	left: 0%;
	right: 0%;
	top: 15px;
	z-index: -1;
}

#progressbar li:nth-child(2):after {
	left: 50%;
}

#progressbar li:nth-child(1):after {
	left: 25%;
	width: 121%;
}

#progressbar li:nth-child(3):after {
	left: 25% !important;
	width: 50% !important;
}

#progressbar li.active:before, #progressbar li.active:after {
	background: #4bb8a9;
}

 .card-container1 {
        display: flex;
        flex-wrap: wrap;
        
    }

    

.card {
	background-color: #fff;
	box-shadow: 2px 4px 15px 0px rgb(0, 108, 170);
	z-index: 0;
	margin-left: 20px;
	width: 300px;
    margin-bottom: 20px;
}

small {
	font-size: 12px !important;
}

.a {
	justify-content: space-between !important;
}

.border-line {
	border-right: 1px solid rgb(226, 206, 226)
}

.card-footer img {
	opacity: 0.3;
}

.card-footer h5 {
	font-size: 1.1em;
	color: #8C9EFF;
	cursor: pointer;
}
</style>

<style>
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

.card:hover {
	background-color: #f0f0f0;
	border: 1px solid black;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	transform: scale(1.05);
	transition: all 0.3s ease;
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
					<br> <br>
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="button" class="btn btn-secondary"
						onclick="hideFeedbackDialog()">Cancel</button>
				</form>
			</div>
		</div>

		<main>



<form action="paidPage" method="get" th:if="${pa}">

<div style="display: flex; align-items: center;">
    <label>
        DATE
        <input id="demo-one-input" name="selectDate" mbsc-input data-input-style="outline" data-label-style="stacked" placeholder="Please select..." style="width:310px;" readonly="readonly"/>
    </label>
    <button type="submit" class="button" style="margin-left:0px"><i class="fas fa-search"></i></button>
    <a type="submit" href="/viewVoucher" style="margin-left: 800px;" class="button">BACK</a>
</div>



</form>

<form action="unpaidPage" method="get" th:if="${unpa}">

<div style="display: flex; align-items: center;">
    <label>
        DATE
        <input id="demo-one-input" name="selectDate" mbsc-input data-input-style="outline" data-label-style="stacked" placeholder="Please select..." style="width:310px;" readonly="readonly"/>
    </label>
    <button type="submit" class="button" style="margin-left:0px"><i class="fas fa-search"></i></button>
    <a type="submit" href="/viewVoucher" style="margin-left: 800px;" class="button">BACK</a>
</div>


</form>

			<div class="card-container1">
	
				<div class="card px-2" th:each="pa : ${page }" id="myDiv"
					onclick="showVoucher(this)" style="width:300px;" th:if=${pa.cashier!=''}>
				
					<div class="card-header bg-white">
						<div class="row justify-content-between">
							<div class="col">
								<p class="text-muted">
									Voucher ID <span class="font-weight-bold text-dark"
										th:data-id="1" th:text="${pa.id}"></span>
								</p>
								<p class="text-muted">
									Place On <span class="font-weight-bold text-dark"
										th:text="${pa.description }"></span>
								</p>
								<p class="text-muted">
									Status <span class="font-weight-bold text-dark"
										th:text="${pa.status }"></span>
								</p>
							</div>
							<input type="hidden" id="weeks" th:value="${pa.id }">

							<div class="flex-col my-auto">
								<h6 class="ml-auto mr-3">
									<a href="#">View Details</a>
								</h6>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="media flex-column flex-sm-row">
							<img class="align-self-center img-fluid"
								src="images/viewVoucher.png" width="300 " height="180">
						</div>
					</div>

					<div class="card-footer  bg-white px-sm-3 pt-sm-4 px-0">
						<div class="row text-center  ">
							<div class="col my-auto  border-line ">
								<h5>Track</h5>
							</div>
							<div class="col  my-auto  border-line ">
								<h5>Cancel</h5>
							</div>
							<div class="col my-auto   border-line ">
								<h5>Pre-pay</h5>
							</div>
							<div class="col  my-auto mx-0 px-0 ">
								<img class="img-fluid cursor-pointer"
									src="https://img.icons8.com/ios/50/000000/menu-2.png"
									width="30" height="30">
							</div>
						</div>

					</div>
								</div>

			</div>
			<!-- voucher show -->

			<div class="warning alert" id="alertBox" th:if="${mss!='a'}" >


		<span class="close" onclick="hideVoucher()">&times;</span>

				<div>



					<div class="container">
						<div class="page-content container">
							<div class="page-header text-blue-d2"
								style="padding-top: 5px; margin-top: 0px; margin-bottom: 0px;">
								<h1 class="page-title text-secondary-d1">
									Weekly Invoice <small class="page-info"> ID: #<i
										class="fa fa-angle-double-right text-80"
										th:text="${Wid}"></i>
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
														class="text-600 text-110 text-blue align-middle"
														th:text="${ResName }"> Restaurant</span>
												</div>
												<div class="text-grey-m2">

													<div class="my-1">
														<i class="fa fa-phone fa-flip-horizontal text-secondary"></i>
														Phone : <b
															class="text-600 text-110 text-blue align-middle"
															th:text="${Phone }"></b>
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
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
														ID:#<span class="text-600 text-90"
															th:text="${Wid}"></span>
													</div>
													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>Payment
														Date: 
														
														<span class="text-600 text-90" th:text="${today}" th:if="${voucher1.status!='Paid'}"></span> 
														<span class="text-600 text-90" th:text="${wVoucher.paymentDate}" th:if="${voucher1.status=='Paid'}"></span> 
													
													</div>
													<div class="my-2">
														<i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span
															class="text-600 text-90">Status:</span> <span
															class="badge badge-warning badge-pill px-25"
															th:text="${voucher1.status}"></span>
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

												<div class="row mb-2 mb-sm-0 py-25"
													th:each="lan,iterStat : ${order}">
													<div class="d-none d-sm-block col-1"
														th:text="${iterStat.count}"></div>
													<div class="col-3 col-sm-3" th:text="${lan.date}"></div>
													<div class="d-none d-sm-block col-sm-1"
														th:text="${lan.people}"></div>
													<div class="d-none d-sm-block col-sm-2"
														th:text="${lan.comAmount}"></div>
													<div class="d-none d-sm-block col-sm-2"
														th:text="${lan.peopleAmount}"></div>
													<div class="d-none d-sm-block col-sm-1"
														th:text="${lan.price}"></div>
													<div class="col-1" th:text="${lan.amount}"></div>
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
															<span class="text-150 text-success-d3 opacity-2"
																th:text="${totalAmount}"></span>
														</div>
													</div>
												</div>
											</div>

											<form action="paymentVoucher" method="post">
												<div class="container text-center">
													<div class="row">
														<div class="col">
															<br> <br> Signature <br> <br> <b>Cashier</b><br>

															<select name="cashier" th:if="${voucher1.status!='Paid'}">

																<option class="text-muted"
																	value=""
																	 selected>Select</option>
																<option class="text-muted" th:each="employee : ${emp }"
																	th:value="${employee.name}" th:text="${employee.name }"></option>

															</select>
															<p th:if="${voucher1.status=='Paid'}">
																<b th:text="${voucher1.cashier}"></b>
															</p>

														</div>
														<div class="col">
															<br> <br> Signature <br> <br> <b>Received
																by</b><br> <b th:text="${voucher1.received}"></b>
														</div>
														<div class="col">
															<br> <br> Signature <br> <br> <b>Approved
																by</b><br> <select name="approved"
																th:if="${voucher1.status!='Paid'}">
																<option value=""
																	selected>Select</option>
																<option th:each="employee : ${emp }"
																	th:value="${employee.name}" th:text="${employee.name }"></option>
															</select>
															<p th:if="${voucher1.status=='Paid'}">
																<b th:text="${voucher1.approved}"></b>
															</p>
															<input type="hidden" name="voucherID"
																th:value="${voucher1.id }" />
																<input type="hidden" name="voucherPage" th:value="${voucher1.status }"/>
														</div>
													</div>
												</div>
												<hr />
							
										
												<div>
																							
													<span class="text-secondary-d1 text-105">Thank you
														for your business</span> 
														  <input  onclick="showPayment()" value="Pay Now" class="btn btn-info btn-bold px-4 float-right mt-3 mt-lg-0" th:if="${voucher1.status!='Paid'}" >
											</div>
											
											<div class="pay" id="paymentBox" >
	
	
	<div class="gender_details">
              
              
              
            
              <span class="gender_title"> Payment Method :</span>
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
					<!-- /.container -->

				</div>
				<input type="hidden" id="voucherStatus"
					th:value="${voucher1.status}"> <input type="hidden"
					id="phone" th:value="${Phone }">











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
var myDiv = document.getElementById("myDiv");

myDiv.addEventListener("touchstart", function() {
  myDiv.classList.add("active");
});

myDiv.addEventListener("touchend", function() {
  myDiv.classList.remove("active");
});

</script>

	<script>
 
 function hideVoucher() {
	 alertBox.style.display = "none";
	 var voucherID2 = document.querySelector("#voucherStatus");
	    var Value =  voucherID2.value;
	 if(Value=='Paid'){
	 window.location.href = "/paidPage";
	 }
	 if(Value=='Unpaid'){
		 window.location.href = "/unpaidPage";
		 }
 }
    function showVoucher(element) {
    	 
        var weekId = element.querySelector("#weeks").value;
        console.log("Week ID: " + weekId);
        window.location.href = "/voucher?week=" + encodeURIComponent(weekId);
        }
    var phone1 = document.querySelector("#phone");
    var phoneValue = phone1.value;
    
    if(phoneValue!=''){
    	alertBox.style.display = "block";
    }
    
    
</script>

 <script>mobiscroll.setOptions({
    theme: 'ios',
    themeVariant: 'light'
});

$(function () {
    $('#demo-calendar').mobiscroll().datepicker({
        controls: ['calendar'],
        select: 'range',
        calendarType: 'month',
        pages: 2,
        display: 'inline'
    });

    $('#demo-date').mobiscroll().datepicker({
        controls: ['date'],
        select: 'range',
        display: 'inline'
    });
    
    $('#demo-range-presets').mobiscroll().datepicker({
         controls: ['calendar'],
        select: 'range',
        select: 'preset-range',
        display: 'inline',
        pages: 2,
        firstSelectDay: 2,
        selectSize: 10
    });

    $('#demo-one-input').mobiscroll().datepicker({
        controls: ['calendar'],
        select: 'range'
    });

    $('#demo-start-end').mobiscroll().datepicker({
        controls: ['calendar'],
        select: 'range',
        startInput: '#demo-start',
        endInput: '#demo-end'
    });
});</script>



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