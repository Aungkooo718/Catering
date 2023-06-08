/**
 * 
 */
function showFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "block";
        }
        
        function hideFeedbackDialog() {
            document.getElementById("feedbackDialog").style.display = "none";
        }
        function showEmpUploadBox() {
            document.getElementById("fileupload_box").style.display = "block";
        }
        function hideEmpUploadBox() {
            document.getElementById("fileupload_box").style.display = "none";
        }
        function showDoorlogUploadBox() {
            document.getElementById("doorlogfileupload_box").style.display = "block";
        }
        function hideDoorlogUploadBox() {
            document.getElementById("doorlogfileupload_box").style.display = "none";
        }
        function showHolidayUploadBox() {
            document.getElementById("holidayfileupload_box").style.display = "block";
        }
        function hideHolidayUploadBox() {
            document.getElementById("holidayfileupload_box").style.display = "none";
        }
        function showEmployeeUploadBox() {
            document.getElementById("employeefileupload_box").style.display = "block";
        }
        function hideEmployeeUploadBox() {
            document.getElementById("employeefileupload_box").style.display = "none";
        }
        // Submit the feedback form using AJAX
        // ...

        // Display a thank you message to the user using an alert box
        //function displayThankYouMessage() {
          //  alert("Thank you for your feedback!");
        //    hideFeedbackDialog();
        //}
        
        // Handle form submission
        document.querySelector('form').addEventListener('submit', function(event) {
            event.preventDefault();
            // Submit the form using AJAX and then display the thank you message
            displayThankYouMessage();
        });