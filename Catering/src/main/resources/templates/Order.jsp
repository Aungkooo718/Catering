<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
   
    <!-- DataTables CDN -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.11.3/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/order.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>


<link href="css/mobiscroll.jquery.min.css" rel="stylesheet" />
<script src="js/mobiscroll.jquery.min.js"></script>



 
    <style>
    
     body {
  font-family: sans-serif;
  display: grid;
  height: 100vh;
  place-items: center;
}

.base-timer {
  position: relative;
  width: 100px;
  height: 100px;
}

.base-timer__svg {
  transform: scaleX(-1);
}

.base-timer__circle {
  fill: none;
  stroke: none;
}

.base-timer__path-elapsed {
  stroke-width: 7px;
  stroke: grey;
}

.base-timer__path-remaining {
  stroke-width: 7px;
  stroke-linecap: round;
  transform: rotate(90deg);
  transform-origin: center;
  transition: 1s linear all;
  fill-rule: nonzero;
  stroke: currentColor;
}

.base-timer__path-remaining.green {
  color: rgb(65, 184, 131);
}

.base-timer__path-remaining.orange {
  color: orange;
}

.base-timer__path-remaining.red {
  color: red;
}

.base-timer__label {
  position: absolute;
  width: 100px;
  height: 100px;
  top: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 28px;
}


.plan.active {
  transform: scale(1.1);
}
    
    
    .animate-text {
    position: relative;
    animation-name: slide;
    animation-duration: 40s;
    animation-iteration-count: infinite;
    
}

@keyframes slide {
    from { left: 0; }
    to { left: 100%; }
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
					  color: red;
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
		.plan:hover {
        background-color: #f0f0f0;
        border: 2px solid #ff0000;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        transform: scale(1.05);
        transition: all 0.3s ease;
    }
    </style>
    
   <style>
@keyframes slide-in {
  0% {
    transform: translateX(100%);
  }
  50% {
    transform: translateX(0%);
  }
  100% {
    transform: translateX(-100%);
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
        <div id="feedbackDialog">
        <div class="dialogContent">
            <h2>Feedback</h2>
            <form>
                <label for="feedback">Please enter your feedback:</label><br>
                <textarea id="feedback" name="feedback" rows="4" cols="50"></textarea><br><br>
                <button type="submit">Submit</button>
                <button type="button" onclick="hideFeedbackDialog()">Cancel</button>
            </form>
        </div>
    </div>
        
        <main>
        
        
       <div style="text-align: center;">
  <h1 style="font-size: 48px; color: green; font-weight: bold; animation: slide-in 4s ease-in-out;">
    You Can Order Now
  </h1>
</div>
<div id="app" style="margin-left:80%;width:50px;height:50px;"></div>
            
       


<form action="selectOrder" method="get" th:if="${date4==null && date3==null && date2==null && date1==null && date==null }">
<div >
<label>
    Range
    
    <input id="demo-one-input" name="selectDate" mbsc-input data-input-style="outline" data-label-style="stacked" placeholder="Please select..." />

</label>
<button type="submit"><i class="fa fa-search"></i></button>
</div>

</form>
          
            <form action="orderAfter" method="post" th:object="${order}" >
         <input type="hidden" name="select" th:value="${select}">
            <div th:if="${notOrder }">  
            <div style="background-color: Blue;">            <h1 class="animate-text" style="background: linear-gradient(to right, #ff00cc, #00a8ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; " th:text="${notOrder }"></h1>
            </div></div>
            <div th:else>
            <div th:if="${date4==null && date3==null && date2==null && date1==null && date==null }">
            <div style="background-color: orange;">            <h1 class="animate-text" style="background: linear-gradient(to right, #ff00cc, #00a8ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; ">You have orderd successfully for this week.Wait to order for next week..</h1>
            </div>
            
    </div></div>
   
  
   
   
           <div id="pricing-table" class="clear">
          
    <div class="plan" id="myDiv" th:if="${date!=null }">
        <h3><b th:text="${date }"></b> <span id="quantity-value"></span></h3>
        
        
           <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus1 btn btn-danger btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="hidden" id="price"  th:value="${price }" >
                                    <input type="text" id="quantity1" name="quantity" class="form-control input-number" th:value="${count }" th:min="${count }" max="1000">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus1 btn btn-success btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>
                                <input type="hidden" name="date"  th:value="${date }" >
        <ul>
       			 <b >Avoid Meat</b>
       			 <div th:each="lan: ${avoid}">
       			  <li><b th:text="${lan.avoidName }"></b> <b th:text="${lan.count}"> </b> People </li>
       			   <input type="hidden" name="avoid"  th:value="${lan.avoidName+lan.count }" >
       			 </div>
       			  <p>Total Price: <span id="total-price"></span></p>
       			  
       			  
       			  
   				
        </ul> 
    </div>
    
    
    <div class="plan" id="myDiv"  th:if="${date1!=null }">
        <h3 ><b th:text="${date1 }"></b><span id="quantity-value2"></span></h3>
        <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus2 btn btn-danger btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="hidden" id="price"  th:value="${price }" >
                                    <input type="text" id="quantity2" name="quantity" class="form-control input-number" th:value="${count1}" th:min="${count1 }" max="1000">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus2 btn btn-success btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>      
                                <input type="hidden" name="date1"  th:value="${date1 }" >
        <ul>
             <b >Avoid Meat</b>
            			 <div th:each="lan: ${avoid1}">
       			  <li><b th:text="${lan.avoidName }"></b> <b th:text="${lan.count}"> </b> People </li>
       			   <input type="hidden" name="avoid1"  th:value="${lan.avoidName+lan.count }" >
       			 </div>
       			 <p>Total Price: <span id="total-price2"></span></p>
       			 
        </ul>    
        
    </div>
    
    <div class="plan" id="myDiv" th:if="${date2!=null }">
        <h3><b th:text="${date2 }"></b><span id="quantity-value3"></span></h3>
		 <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus3 btn btn-danger btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="hidden" id="price"  th:value="${price }" >
                                    <input type="text" id="quantity3" name="quantity" class="form-control input-number" th:value="${count2 }" th:min="${count2 }" max="1000">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus3 btn btn-success btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>
                                <input type="hidden" name="date2"  th:value="${date2 }" >
        <ul>
             <b >Avoid Meat</b>
            		 <div th:each="lan: ${avoid2}">
       			  <li><b th:text="${lan.avoidName }"></b> <b th:text="${lan.count}"> </b> People </li>
       			   <input type="hidden" name="avoid2"  th:value="${lan.avoidName+lan.count }" >
       			 </div>
       			 <p>Total Price: <span id="total-price3"></span></p>
        </ul>
    </div>
    <div class="plan" id="myDiv" th:if="${date3!=null }">
        <h3><b th:text="${date3 }"></b><span id="quantity-value4"></span></h3>
         <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus4 btn btn-danger btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="hidden" id="price"  th:value="${price }" >
                                    <input type="text" id="quantity4" name="quantity" class="form-control input-number" th:value="${count3 }" th:min="${count3 }" max="1000">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus4 btn btn-success btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>		
                                <input type="hidden" name="date3"  th:value="${date3 }" >
        <ul>
            <b>Avoid Meat</b>
            		 <div th:each="lan: ${avoid3}">
       			  <li><b th:text="${lan.avoidName }"></b> <b th:text="${lan.count}"> </b> People </li>
       			   <input type="hidden" name="avoid3"  th:value="${lan.avoidName+lan.count }" >
       			 </div>
       			 <p>Total Price: <span id="total-price4"></span></p>
        </ul>
    </div> 	
    <div class="plan" id="myDiv" th:if="${date4!=null }">
        <h3><b th:text="${date4 }"></b><span id="quantity-value5"></span></h3>
         <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus5 btn btn-danger btn-number"  data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="hidden" id="price"  th:value="${price }" >
                                    <input type="text" id="quantity5" name="quantity" class="form-control input-number" th:value="${count4 }"  th:min="${count4 }" max="1000">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus5 btn btn-success btn-number" data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>		
                                <input type="hidden" name="date4"  th:value="${date4 }" >
        <ul>
            <b>Avoid Meat</b>
       			 <div th:each="lan: ${avoid4}">
       			 <b > </b> 
       			  <li><b th:text="${lan.avoidName }"></b> <b th:text="${lan.count}"> </b> People </li>
       			   <input type="hidden" name="avoid4"  th:value="${lan.avoidName+lan.count }" >
       			 </div>		
       			 <p>Total Price: <span id="total-price5"></span></p>
        </ul>
    </div> 	
 
 <div th:if="${date4!=null || date3!=null || date2!=null || date1!=null || date!=null}">
  <button type="submit" class="btn btn-lg btn-warning" style="margin-top: 250px;padding-left:px;" >
   <i class="fas fa-arrow-right"></i> 
  </button>
</div>

   
</div>
</form>
        </main>
        
    </div>
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
     
   
    <script th:if="${date!=null }">
  
    var amount =  document.querySelector("#price");
    var price = parseInt(amount.value);
    console.log("Value is: "+price);
   // replace with the actual price of the product
    var inputField1 = document.querySelector("#quantity1");
    var minusButton1 = document.querySelector(".quantity-left-minus1");
    var plusButton1 = document.querySelector(".quantity-right-plus1");
    var quantityElement = document.getElementById("quantity-value");
    var totalPriceElement = document.getElementById("total-price");

    function updateTotalPrice() {
      var quantity = parseInt(inputField1.value);
      
      var totalPrice = quantity * price;
      quantityElement.textContent = quantity;
      totalPriceElement.textContent = totalPrice;
      
    }

    // calculate total price for initial quantity of 1
    updateTotalPrice();

    minusButton1.addEventListener("click", function() {
      var currentValue1 = parseInt(inputField1.value);
      if(currentValue1 > inputField1.min) {
        inputField1.value = currentValue1 - 1;
        updateTotalPrice();
      }
    });

    plusButton1.addEventListener("click", function() {
      var currentValue1 = parseInt(inputField1.value);
      if(currentValue1 < inputField1.max) {
        inputField1.value = currentValue1 + 1;
        updateTotalPrice();
      }
    });

    inputField1.addEventListener("input", function() {
      updateTotalPrice();
    });

</script>
<script th:if="${date1!=null }">
// replace with the actual price of the product
var amount =  document.querySelector("#price");
    var price2 = parseInt(amount.value);

console.log("Value is: "+price2);

var inputField2 = document.querySelector("#quantity2");
var minusButton2 = document.querySelector(".quantity-left-minus2");
var plusButton2 = document.querySelector(".quantity-right-plus2");
var quantityElement2 = document.getElementById("quantity-value2");
var totalPriceElement2 = document.getElementById("total-price2");

function updateTotalPrice2() {
  var quantity2 = parseInt(inputField2.value);
  var totalPrice2 = quantity2 * price2;
  quantityElement2.textContent = quantity2;
  totalPriceElement2.textContent = totalPrice2;
}

// calculate total price for initial quantity of 1
updateTotalPrice2();

minusButton2.addEventListener("click", function() {
  var currentValue2 = parseInt(inputField2.value);
  if(currentValue2 > inputField2.min) {
    inputField2.value = currentValue2 - 1;
    updateTotalPrice2();
  }
});

plusButton2.addEventListener("click", function() {
  var currentValue2 = parseInt(inputField2.value);
  if(currentValue2 < inputField2.max) {
    inputField2.value = currentValue2 + 1;
    updateTotalPrice2();
  }
});

inputField2.addEventListener("input", function() {
  updateTotalPrice2();
});
	
</script>

<script th:if="${date2!=null }">

var amount =  document.querySelector("#price");
var price3 = parseInt(amount.value);
// replace with the actual price of the product
var inputField3 = document.querySelector("#quantity3");
var minusButton3 = document.querySelector(".quantity-left-minus3");
var plusButton3 = document.querySelector(".quantity-right-plus3");
var quantityElement3 = document.getElementById("quantity-value3");
var totalPriceElement3 = document.getElementById("total-price3");

function updateTotalPrice3() {
  var quantity3 = parseInt(inputField3.value);
  var totalPrice3 = quantity3 * price3;
  quantityElement3.textContent = quantity3;
  totalPriceElement3.textContent = totalPrice3;
}

// calculate total price for initial quantity of 1
updateTotalPrice3();

minusButton3.addEventListener("click", function() {
  var currentValue3 = parseInt(inputField3.value);
  if(currentValue3 > inputField3.min) {
    inputField3.value = currentValue3 - 1;
    updateTotalPrice3();
  }
});

plusButton3.addEventListener("click", function() {
  var currentValue3 = parseInt(inputField3.value);
  if(currentValue3 < inputField3.max) {
    inputField3.value = currentValue3 + 1;
    updateTotalPrice3();
  }
});

inputField3.addEventListener("input", function() {
  updateTotalPrice3();
});
	</script>
	<script th:if="${date3!=null }">
	
	var amount =  document.querySelector("#price");
    var price4 = parseInt(amount.value);
 // replace with the actual price of the product
	var inputField4 = document.querySelector("#quantity4");
	var minusButton4 = document.querySelector(".quantity-left-minus4");
	var plusButton4 = document.querySelector(".quantity-right-plus4");
	var quantityElement4 = document.getElementById("quantity-value4");
	var totalPriceElement4 = document.getElementById("total-price4");

	function updateTotalPrice4() {
	  var quantity4 = parseInt(inputField4.value);
	  var totalPrice4 = quantity4 * price4;
	  quantityElement4.textContent = quantity4;
	  totalPriceElement4.textContent = totalPrice4;
	}

	// calculate total price for initial quantity of 1
	updateTotalPrice4();

	minusButton4.addEventListener("click", function() {
	  var currentValue4 = parseInt(inputField4.value);
	  if(currentValue4 > inputField4.min) {
	    inputField4.value = currentValue4 - 1;
	    updateTotalPrice4();
	  }
	});

	plusButton4.addEventListener("click", function() {
	  var currentValue4 = parseInt(inputField4.value);
	  if(currentValue4 < inputField4.max) {
	    inputField4.value = currentValue4 + 1;
	    updateTotalPrice4();
	  }
	});

	inputField4.addEventListener("input", function() {
	  updateTotalPrice4();
	});
		
	</script>
	<script th:if="${date4!=null }">
	var amount =  document.querySelector("#price");
    var price5 = parseInt(amount.value);
	// replace with the actual price of the product
	var inputField5 = document.querySelector("#quantity5");
	var minusButton5 = document.querySelector(".quantity-left-minus5");
	var plusButton5 = document.querySelector(".quantity-right-plus5");
	var quantityElement5 = document.getElementById("quantity-value5");
	var totalPriceElement5 = document.getElementById("total-price5");

	function updateTotalPrice5() {
	  var quantity5 = parseInt(inputField5.value);
	  var totalPrice5 = quantity5 * price5;
	  quantityElement5.textContent = quantity5;
	  totalPriceElement5.textContent = totalPrice5;
	}

	// calculate total price for initial quantity of 1
	updateTotalPrice5();

	minusButton5.addEventListener("click", function() {
	  var currentValue5 = parseInt(inputField5.value);
	  if(currentValue5 > inputField5.min) {
	    inputField5.value = currentValue5 - 1;
	    updateTotalPrice5();
	  }
	});

	plusButton5.addEventListener("click", function() {
	  var currentValue5 = parseInt(inputField5.value);
	  if(currentValue5 < inputField5.max) {
	    inputField5.value = currentValue5 + 1;
	    updateTotalPrice5();
	  }
	});

	inputField5.addEventListener("input", function() {
	  updateTotalPrice5();
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



    
    
    <script th:if="${hour=='1'}">
 // Credit: Mateusz Rybczonec
 
    const FULL_DASH_ARRAY = 283;
    const TIME_LIMIT = 60 * 60; // 1 hour in seconds

    let timePassed = 0;
    let timeLeft = calculateTimeLeft();
    let timerInterval = null;
    let remainingPathColor = "red"; // Default color

    document.getElementById("app").innerHTML = `
    <div class="base-timer">
      <svg class="base-timer__svg" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <g class="base-timer__circle">
          <circle class="base-timer__path-elapsed" cx="50" cy="50" r="45"></circle>
          <path
            id="base-timer-path-remaining"
            stroke-dasharray="283"
            class="base-timer__path-remaining ${remainingPathColor}"
            d="
              M 50, 50
              m -45, 0
              a 45,45 0 1,0 90,0
              a 45,45 0 1,0 -90,0
            "
          ></path>
        </g>
      </svg>
      <span id="base-timer-label" class="base-timer__label">${formatTime(
        timeLeft
      )}</span>
    </div>
    `;
	
    
    startTimer();
    
    function onTimesUp() {
      clearInterval(timerInterval);
    }

    function startTimer() {
      timerInterval = setInterval(() => {
        timePassed += 1;
        timeLeft = calculateTimeLeft();
        document.getElementById("base-timer-label").innerHTML = formatTime(
          timeLeft
        );
        setCircleDasharray();
        setRemainingPathColor();

        if (timeLeft <= 0) {
          onTimesUp();
        }
      }, 1000);
    }

    function formatTime(time) {
      const minutes = Math.floor(time / 60);
      const seconds = time % 60;
      return `${minutes.toString().padStart(2, "0")}:${seconds.toString().padStart(2, "0")}`;
    }

    function calculateTimeLeft() {
      const currentTime = new Date();
      const endHour = 18; // 6 PM

      if (currentTime.getHours() < endHour) {
        const minutesPassed = currentTime.getMinutes();
        const secondsPassed = currentTime.getSeconds();
        const minutesLeft = (endHour - currentTime.getHours() - 1) * 60 + (60 - minutesPassed);
        const secondsLeft = 60 - secondsPassed;
        return minutesLeft * 60 + secondsLeft;
      } else {
        return 0;
      }
    }

    function setRemainingPathColor() {
      const currentTime = new Date();
      const currentHour = currentTime.getHours();

      if (currentHour === 17) {
        const minutesPassed = currentTime.getMinutes();
        const minutesRemaining = 60 - minutesPassed;
        const fractionRemaining = minutesRemaining / 60;
        const dashArray = (fractionRemaining * FULL_DASH_ARRAY).toFixed(0);
        
        document.getElementById("base-timer-path-remaining").setAttribute("stroke-dasharray", dashArray);
      } else {
        // Reset the circle to full dash array
        document.getElementById("base-timer-path-remaining").setAttribute("stroke-dasharray", FULL_DASH_ARRAY + " " + FULL_DASH_ARRAY);
      }
    }

    function setCircleDasharray() {
      const circleDasharray = `${(timeLeft / TIME_LIMIT) * FULL_DASH_ARRAY} 283`;
      document.getElementById("base-timer-path-remaining").setAttribute("stroke-dasharray", circleDasharray);
    }

</script>



   
</body>
</html>