<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">
 <link rel="shortcut icon" sizes="196x196" href="/images/clo.jpg">

    <title>Upload Doorlog</title>
  </head>
  <body>
  
    
    <aside class="sidebar">
      <div class="toggle">
        <a href="#" class="burger js-menu-toggle" data-toggle="collapse" data-target="#main-navbar">
              <span></span>
            </a>
      </div>
      <div class="side-inner">

        <div class="profile">
          <img src="images/DAT.png" alt="Image" class="img-fluid">
          <h3 class="name">CSMIS</h3>
          <span class="country">Web Designer</span>
        </div>

        
        <div class="nav-menu">
          <ul>
            <li class="accordion">
              <a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsible">
                <span class="icon-home mr-3"></span>Feed
              </a>
              <div id="collapseOne" class="collapse" aria-labelledby="headingOne">
                <div>
                  <ul>
                    <li><a href="menuUpload">DaskBoard</a></li>
                    <li><a href="#">Menu</a></li>
                    <li><a href="#">Operator</a></li>
                    <li><a href="#">DoorLog</a></li>
                  </ul>
                </div>
              </div>
            </li>
            <li class="accordion">
              <a href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsible">
                <span class="icon-search2 mr-3"></span>Explore
              </a>

              <div id="collapseTwo" class="collapse" aria-labelledby="headingOne">
                <div>
                  <ul>
                    <li><a href="#">Interior</a></li>
                    <li><a href="#">Food</a></li>
                    <li><a href="#">Travel</a></li>
                  </ul>
                </div>
              </div>

            </li>
            <li><a href="#"><span class="icon-notifications mr-3"></span>Notifications</a></li>
            <li><a href="#"><span class="icon-location-arrow mr-3"></span>Direct</a></li>
            <li><a href="#"><span class="icon-pie-chart mr-3"></span>Stats</a></li>
            <li><a href="#"><span class="icon-sign-out mr-3"></span>Sign out</a></li>
          </ul>
        </div>
      </div>
      
    </aside>
    <main>
      <div class="site-section">
        <div class="container">
          <div class="row justify-content-center">





             <h2>File Upload & Data Save Page</h2>
   	  
      <form   action ="uploadDoorlogToDatabase" method = "POST" enctype = "multipart/form-data">
      <br /> <br />
         Please select a file to upload : 
         <input type = "file" name = "file" value = "Browse File" /> <br /> <br />
         Press here to upload the file :
         <input type = "submit" value = "upload" /> <br /> <br /> 
         
          </form>


          </div>
        </div>
      </div>  
    </main>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>