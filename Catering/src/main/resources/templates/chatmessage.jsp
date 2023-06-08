<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <title>Chat Application</title>
    <style>
        #chat-window {
            width: 400px;
            height: 500px;
            border: 1px solid #ccc;
            padding: 10px;
        }

        #chat-messages {
            height: 400px;
            overflow-y: scroll;
        }

        #input-message {
            width: 300px;
            padding: 5px;
        }

        #send-button {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .sender-message {
            background-color: #e1f5fe;
            padding: 5px;
            margin-bottom: 5px;
            border-radius: 5px;
        }

        .receiver-message {
            background-color: #e8eaf6;
            padding: 5px;
            margin-bottom: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

	<h2 style="margin-left:410px;color:blue;">Messenger</h2>
	<div style="margin-left:400px;">
    <div id="chat-window">
    	<select id="staffIdSelect">
        <option value="">Select Staff ID</option>
        <option th:each="employee : ${employees}" th:value="${employee.staffId}" th:text="${employee.staffId}" th:data-name="${employee.name}"></option>
    </select>
    <!-- Display staff name -->
        <input type="text" id="staffNameInput" readonly /><button style="margin-left:5px;" id="refreshBtn">Refresh</button>
     <input type="hidden" id="selectedStaffId" name="selectedStaffId" th:value="${selectedStaffId}" />
    <input th:if="${senderId != null}" type="hidden" id="senderIdInput" name="senderId" th:value="${senderId}" />
    <br><br>
        <div id="chat-messages"></div>
        <input type="text" id="input-message" placeholder="Type your message...">
        <button id="send-button">Send</button>
    </div>
    </div>
    <script>
        // Get references to the select element and input field
        var staffIdSelect = document.getElementById('staffIdSelect');
        var staffNameInput = document.getElementById('staffNameInput');
        var selectedStaffIdInput = document.getElementById('selectedStaffId');

        // Add event listener for change event on staff ID select
        staffIdSelect.addEventListener('change', function() {
            // Get the selected staff ID
            var selectedStaffId = staffIdSelect.value;
            // Update the value of the hidden input with the selected staff ID
            selectedStaffIdInput.value = selectedStaffId;
            var selectedOption = staffIdSelect.options[staffIdSelect.selectedIndex];
            
            // Set the price input value to the selected option's data-price attribute value
            staffNameInput.value = selectedOption.getAttribute("data-name");
        });
    </script>
    <script>
    var chatMessages = document.getElementById("chat-messages");
    var messageInput = document.getElementById("input-message");
    var sendButton = document.getElementById("send-button");
    var selectedStaffIdInput = document.getElementById('selectedStaffId');
    var senderIdInput = document.getElementById('senderIdInput');
    var senderId = senderIdInput.value;
    var receiverId = selectedStaffIdInput.value;
    var sendMessage = () => {
        const messageContent = messageInput.value.trim();
        if (messageContent !== "") {
        	
            const message = {
                senderId: senderId,
                recipientId: selectedStaffIdInput.value,
                content: messageContent,
                timestamp: new Date()
            };

            // Send the message to the backend


        // Send the message to the backend API
        fetch("/chat", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(message)
        })
            .then(response => {
                if (response.ok) {
                    // Clear the input field after sending the message
                    messageInput.value = "";
                }
            })
            .catch(error => {
                console.error("Error sending message:", error);
            });
    }
};

// Event listener for the send button
sendButton.addEventListener("click", sendMessage);

// Event listener for the Enter key in the input field
messageInput.addEventListener("keydown", event => {
    if (event.key === "Enter") {
        event.preventDefault();
        sendMessage();
    }
});
    </script>

    <script>
    var refreshBtn=document.getElementById("refreshBtn");
    refreshBtn.addEventListener("click", function() {
    	
            const chatMessages = document.getElementById("chat-messages");
            const messageInput = document.getElementById("input-message");
            const sendButton = document.getElementById("send-button");
            var selectedStaffIdInput = document.getElementById('selectedStaffId');
            var senderIdInput = document.getElementById('senderIdInput');
            const senderId = senderIdInput.value;
            const receiverId = selectedStaffIdInput.value;
            
            const currentUser = { id: senderId };

            const loadChatHistory = () => {
            	  // Fetch the chat history from the backend API
            	  fetch(`/chat/${senderId}/${receiverId}/history`)
            	    .then(response => response.json())
            	    .then(data => {
            	      // Add debug information
            	      console.log("Raw data:", data);

            	      // Sort the chat messages by timestamp in ascending order
            	      data.sort((a, b) => new Date(a.timestamp) - new Date(b.timestamp));

            	      // Add debug information
            	      console.log("Sorted data:", data);

            	      // Clear the chat window
            	      chatMessages.innerHTML = '';

            	      // Iterate over the chat messages and append them to the chat window
            	      data.forEach(message => {
            	        const messageElement = document.createElement("div");
            	        messageElement.id = `message-${message.id}`;
            	        messageElement.classList.add(
            	          message.senderId === currentUser.id ? 'sender-message' : 'receiver-message'
            	        );
            	        messageElement.innerText = `${message.senderName}: ${message.content}`;

            	        // Append the message element to the chat window
            	        chatMessages.appendChild(messageElement);
            	      });
            	    })
            	    .catch(error => {
            	      console.error("Error fetching chat history:", error);
            	    });
            	};





			
            loadChatHistory();
            
            

        // Call the loadChatHistory function when the chat interface is loaded or when a new chat room is selected
        //loadChatHistory();
        });
    </script>
</body>
</html>
