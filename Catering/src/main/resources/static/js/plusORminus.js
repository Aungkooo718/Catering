var price = 2300; // replace with the actual price of the product
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



	//2
	
	
	var price2 = 2300; // replace with the actual price of the product
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
	
	
	
	//3
	
	
	
	var price3 = 2300; // replace with the actual price of the product
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
	
	
	//4
	
	
	var price4 = 2300; // replace with the actual price of the product
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
	
	//5
	
	
	
	var price5 = 2300; // replace with the actual price of the product
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
	