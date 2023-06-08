<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Monthly Cost</title>
     <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
    
    <style>


/* Add additional styling as needed */
* {
    box-sizing: border-box;
    background-color: #f2f1f1;
    color: #080404;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
  margin-bottom:20px;
}
  
.column {
  float: left;
  width: 20%;
  padding: 5px;
}

.row::after {
  content: "";
  clear: both;
  display: table;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

h3{
	font-weight:20px;
}
    	
.backBtn {
  /* Default styles */
  margin: 30px 10px 10px 600px;
  padding: 10px 100px 10px 100px;
  border-radius:5px;
  color: red;
  background-color: yellow;
  text-decoration: none;
}

.backBtn:hover {
  /* Styles on hover */
  background-color: orange;
  border-radius:5px;
  color: white;
}
</style>
 	
</head>
<body>
	<h1 style="text-align:center;"><b>Monthly Your Cost Status</b></h1>
    <div class="row">
  <div class="column" style="margin-left:200px">
            <h3><b>No Register Eat Dates</b></h3>
            <table>
                <thead>
                </thead>
                <tbody>
                    <tr th:each="missingDate : ${#lists.sort(missingDates)}">
                        <td th:text="${missingDate}"></td>
                    </tr>
                </tbody>
            </table>
            <div th:if="${#lists.isEmpty(missingDates)}" class="info-message">
	        No dates found.
	      </div>
        </div>
         <div class="column">
            <h3><b>Register Eat Dates</b></h3>
            <table>
                <thead>
                </thead>
                <tbody>
                    <tr th:each="matchingDate : ${#lists.sort(matchingDates)}">
                        <td th:text="${matchingDate}"></td>
                    </tr>
                </tbody>
            </table>
            <div th:if="${#lists.isEmpty(matchingDates)}" class="info-message">
	        No dates found.
	      </div>
        </div>
         <div class="column">
            <h3>Register Not Eat Dates</h3>
            <table>
                <thead>
                </thead>
                <tbody>
                    <tr th:each="missingRegDate : ${#lists.sort(missingDatesReg)}">
                        <td th:text="${missingRegDate}"></td>
                    </tr>
                </tbody>
            </table>
            <div th:if="${#lists.isEmpty(missingDatesReg)}" class="info-message">
	        No dates found.
	      </div>
        </div>
    </div>
    <a class="backBtn" th:href="@{/dashboard}">BACK</a>
</body>
</html>
