<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Modern Admin Dashboard</title>
<link rel="stylesheet" type="text/css" href="/css/test.css">
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
	<link rel="stylesheet" href="css/order.css">
	
	<link rel="stylesheet" href="css/orderShow.css">
	
	<link href="css/mobiscroll.jquery.min.css" rel="stylesheet" />
<script src="js/mobiscroll.jquery.min.js"></script>
	
	 
	
	<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

			<style th:if="${Vcashier!=null }">
	.plan.active {
  transform: scale(1.1);
}
    
    
    .animate-text {
    position: relative;
    animation-name: slide;
    animation-duration: 2s;
    animation-fill-mode: forwards;
    
}

@keyframes slide {
    from { left: 0; }
    to { left: 20%; }
    
}
    
    
	</style>
	
			
<!-- payment.css -->
<style type="text/css">

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

    .FieldLabel
    {
        font-weight: bold;
        padding: 4px;
        width: 90px;
    }
    .RightAlignedInputs input
    {
        text-align: right;
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


<div class="card" style="height:auto" >
 
 <button style="color:blue;width:100px;margin-left:700px;" id="generatePDFButton" th:if="${Vcashier!=null }"><i
                      class="mr-1 fa fa-print text-primary-m1 text-120 w-2"></i>Export</button>
 
            <div class="row" id="paymentVoucher">
            
            
                <div class="col-md-8 cart" >
                <div class="animate-text" style="width:700px;" th:if="${Vcashier!=null }">
                    <div class="title" >
                        <div class="row" >
                            <div class="col"><h4><b>Order List</b></h4></div>
                            <div class="col align-self-center text-right text-muted" th:text="${count3+' '+'items' }"> </div>
                        </div>
                    </div>    
                    <div class="row border-top border-bottom">
                        <div class="row main align-items-center" th:each="lan : ${orderlist }">
                            <div class="col-2"><img class="img-fluid" src="images/foodicon.png" alt="IMG"></div>
                            <div class="col">
                                <div class="row text-muted">NoPax</div>
                                <div class="row" th:text="${lan.people }"></div>
                            </div>
                            <div class="col">
                            <div class="row text-muted">Price</div>
                                <div class="row" th:text="${lan.amount }" ></div>
                            </div>
                            <div class="col">
                             <div class="row text-muted">Date</div>
                                <div style="width:100px;" th:text="${lan.date }" ></div>
                                
                            </div>
                            <div class="col">
                              <div class="row text-muted">Avoid Meat</div>
                                <div style="width:200px;" th:text="${lan.avoid}"></div>
                            </div>
                        
                        </div>
                        
                    </div>
                    
                    <div class="back-to-shop"   th:if="${Vcashier==null }" ><a th:href = "@{/cancelOrder(ID=${voucherID})}">&leftarrow;</a><span class="text-muted">Cancel to Order</span></div>
                </div>
                <div class="row" style="width:1000px;"  th:if="${Vcashier!=null }">
    <div style="padding-left:100px;" class="col">
        <div   class="row text-muted">Sign</div>
        <div   style="width:100px;" th:text="${Vcashier}"></div>
    </div>
    <div  style="padding-left:450px;" class="col">
        <div  class="row text-muted">Sign</div>
        <div style="width:100px;"  th:text="${Approved}"></div>
    </div>
</div>

                
                
                 <div th:if="${Vcashier==null }">
                    <div class="title" >
                        <div class="row" >
                            <div class="col"><h4><b>Order List</b></h4></div>
                            <div class="col align-self-center text-right text-muted" th:text="${count3+' '+'items' }"> </div>
                        </div>
                    </div>    
                    <div class="row border-top border-bottom">
                        <div class="row main align-items-center" th:each="lan : ${orderlist }">
                            <div class="col-2"><img class="img-fluid" src="images/foodicon.png" alt="IMG"></div>
                            <div class="col">
                                <div class="row text-muted">NoPax</div>
                                <div class="row" th:text="${lan.people }"></div>
                            </div>
                            <div class="col">
                            <div class="row text-muted">Price</div>
                                <div class="row" th:text="${lan.amount }" ></div>
                            </div>
                            <div class="col">
                             <div class="row text-muted">Date</div>
                                <div class="row" th:text="${lan.date }" ></div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <div class="back-to-shop"  th:if="${Vcashier==null }" ><a th:href = "@{/cancelOrder(ID=${voucherID})}">&leftarrow;</a><span class="text-muted">Cancel to Order</span></div>
                </div>
 
                </div>
                
                <div class="col-md-4 summary" th:if="${Vcashier==null }">
                    <div><h5>Order ID<b th:text="${' '+voucherID }"></b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;" th:text="${'ITEMS'+' '+count3 }"></div>
                        <div class="col text-right" th:text="${totalAmount+'MMK' }"></div>
                    </div>
                     <form action="UpdateVoucher" method="post" th:object="${voucher}">
                        <p>OrderBY<p>
                        <select name="cashier">
                        <option class="text-muted" value="" >Select</option>
                        <option class="text-muted" th:each="lan: ${emp}" th:value="${lan.name}" th:text="${lan.name}"></option>
 
                        </select>
                        <input type="hidden" name="id" th:value="${voucherID}"/>
                        <p>Approved By</p>
                        <select name="approved">
                        <option class="text-muted" value="" >Select</option>
                        <option class="text-muted" th:each="lan: ${emp}" th:value="${lan.name}" th:text="${lan.name}"></option>
 
                       
                        
                       
                        <input type="hidden" name="received" th:value="${ReceivedName }"/>
                        
 
                        
 
 <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right" th:text="${totalAmount+'MMK' }"></div>
                    </div>
                    
                   
                <input type="submit" value="Order Now" class="btn">
           
           
                    </form>
                         </div>
            </div>
            
        </div>
	</main>

	</div>
	<script>
    const generatePDFButton = document.querySelector('#generatePDFButton');
    generatePDFButton.addEventListener('click', generatePDF);

    function generatePDF() {
    
      const div = document.querySelector('#paymentVoucher');
      div.style.width = '100%';
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
      <script src="js/selectBox.js"></script>
      
      
      
      <script>

window.onload = function() {
    var success1 = "[[${success}]]";
    var success = "[[${message}]]";
    var Delete = "[[${message2}]]";
    var Delete2 = "[[${errorMessage3}]]";
    
    if (success1 !== "") {
      Swal.fire({
        icon: 'success',
        title: 'Successfully',
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
        title: 'Order FAILED',
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



      
      
      
      
</body>
</html>