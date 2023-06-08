<!DOCTYPE html>
<html xmlns:th="www.thymeleaf.org">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Menu Upload</title>
<!-- CSS only -->
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>


<!-- Alert Box -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
<!-- Alert Box -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<link
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
 rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
 crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
 src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
 integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
 crossorigin="anonymous"></script>
 
 <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">
  <link rel="stylesheet" type="text/css" href="/css/test.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- DataTables CDN -->

   
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 
<style type="text/css">
body{
  background-image: url("images/pr2.jpg");
            background-size:cover;
}
td{
  word-break:break;
  
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
.card:hover {
    background-color: #f0f0f0;
    border: 2px solid #858585;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    transform: scale(1.05);
    transition: all 0.3s ease;

}

.fa-solid, .fas {
    color: #f5ebeb;
}
.side-menu a {
    display: block;
    padding: 0.6rem 0rem;
}
</style>
</head>

<body style="background-color: #e9ecf1">
<input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        
        
        <div class="side-content">
            <div class="profile">
                <div class="profile-img bg-img" style="background-image: url(images/clo.jpg)"></div>
                <h4>DAT</h4>
            </div>

            <div class="side-menu" style=" padding-right:30px;">
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
        
       
    </div>
    
        
        
        
        
        
        
        



    <h1 class="card-body"  style="
   
      text-align:center;
   
      color:Grey;
      padding-top:100px;
      font-family:Lithos Pro;

       text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)">File Import</h1>
       
       
       
       
       <div class="row">
       
       <!-- menu -->
 <div class="col-6 text-left" id="pla" style="padding-left: 100px">
  <div>
  
   <h1 style=" padding-left: 50px;"></h1>
  </div>
   <div class="card" style="width: 20rem;margin-left: 190px;height:300px;" align="center">
      <div class="card-body" align="center" style="">
     <h4 class="card-body"  style="
      background:#beae65;
      color:white;
      
       text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)">Menu Upload</h4>
      
     
             
        <div class="mb-3">
          <form th:action="@{/upload}" method="post" enctype="multipart/form-data">
            <input
              class="form-control" name="file" type="file" id="formFile"><br />
            <input type="submit" value="Upload" class="btn btn-warning">
            <button type="button" class="btn btn-primary" onclick="location.href = '/dashboard';">Back</button>
            
          </form>
    
  

        </div>  
      </div>
        
     </div>
     
     
     
     
  </div>
  
<!--  Another Upload -->



<div class="col-6 text-left" style="padding-left: 70px;margin-top: 0px;">
  <br>
   <div class="card" style="width: 25rem;height:520px;" align="center">
      <div class="card-body" align="center">
        <h4 class="card-body"  style="
      background:#9d6e7e;
      color:white;
       text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5)">Announcement</h4>
      
               
        <div class="mb-3" >
          <form th:action="@{/announce}" method="post" id="form" enctype="multipart/form-data">
          <input
              class="form-control" name="file2" type="file" id="formFile"><br />
              
          
              
                
<textarea class="form-control" id="text" name="text" placeholder="Announce here...." maxlength="8000" required></textarea><br>
  <label for="days" style="background-color: #fff4d3;font-family: Lithos Pro;">Announcement Duration</label>

              <input type="number"
              class="form-control" name="days" id="days" min="1" max="30" required="required" placeholder="Enter days..."><br />
    
      
           
  
<h6 style="font-family: Lithos Pro;">Expired in: Chose Days</h6>

          
       
  <input  id="save-button" type="submit" value="Announce" class="btn btn-warning" >
            <button  type="button" class="btn btn-primary" onclick="location.href = '/dashboard';">Back</button>
            
            
        <div>
          
        </div>
          
          </form>
          
          
          
          
   

        </div>  
      </div>
        
     </div>
  </div>

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
  $(document).ready(function() {
    $('#form').validate({
      rules: {
        text: {
          required: true,
          text: true
        }
      },
      messages: {
        text: {
          required: "Please enter your announcement",
        	  text: "Please enter your announcement"
        }
      },
      errorClass: "error", // Add this line to apply the error class to the error messages
      errorElement: "span", // Add this line to wrap the error messages in a <span> element
      submitHandler: function(form) {
        form.submit();
      }
    });
  });
</script>



</body>
</html>