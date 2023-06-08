<!-- <!doctype html> -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Responsive Email Template</title>

<style type="text/css">
.ReadMsgBody {width: 100%; background-color: #ffffff;}
.ExternalClass {width: 100%; background-color: #ffffff;}
body     {width: 100%; background-color: #ffffff; margin:0; padding:0; -webkit-font-smoothing: antialiased;font-family:Verdana, Geneva, Tahoma, sans-serif;font-style: Cambria ; font-size: 18px;}
table {border-collapse: collapse; margin-top:25px }
tr    { background-color: #82b4c4; }
p { font-size: 16px;}
img { height: 150px; width: auto; }
.bg-color { background-color: #f1f1f1; }


@media only screen and (max-width: 640px)  {
body[yahoo] .deviceWidth {width:440px!important; padding:0;}    
body[yahoo] .center {text-align: center!important;}  
}

@media only screen and (max-width: 479px) {
body[yahoo] .deviceWidth {width:100%!important; padding:0px; height: 100%;}    
body[yahoo] .center {text-align: center!important;}
html  { height: 100%; }
body  { height: 100%; }
table { margin-top: 0px; margin-bottom: 0px; }
.bg-color { background-color: #ffffff; }
}
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" yahoo="fix" 
      style="font-family: Arial, Helvetica, sans-serif; 
             background-color: black;">

<!--Start Three Blocks-->
<table width="440" border="0" cellpadding="0" cellspacing="0" align="center" class="deviceWidth">
  <tr>
    <td width="100%" bgcolor="#fff" style="border-radius: 4px; 
                                           -webkit-box-shadow: 0px 0px 15px 15px rgba(0,0,0,0.15);
                                           -moz-box-shadow: 0px 0px 15px 15px rgba(0,0,0,0.15);
                                           box-shadow: 0px 0px 15px 15px rgba(0,0,0,0.15);" >
    <!-- Top  -->
      <table width="100%"  border="0" cellpadding="0" cellspacing="0" align="center" > 
        <tr>
          <td style="padding: 20px 0px; text-align: center;">
            <img src="https://images.squarespace-cdn.com/content/v1/5bc79d632727be41f48dce9b/1550850582260-6L5VV0954YYZQNHML2TV/Set-Reminder-with-Clock-icon.png?format=1000w">
          </td>
        </tr>

        <tr>
          <td width="50%" class="center" style="font-size: 12px; 
                                                color: black; 
                                                font-weight: normal; 
                                                text-align: center; 
                                                font-family: Arial, Helvetica, sans-serif; 
                                                line-height: 10px; 
                                                vertical-align: middle; 
                                                padding:20px 10px; ">
            <span style="font-size: 20px;"><b>Hello ADMIN</b> <span>
            <p><strong> ${name}</strong></p>
            <b style="color: blue;font-size: 18px;">${email} </b>
            <br>
            <p style="color: red;font-size: 22px;"><b> Alert Friday 5:30 PM </b></p>
            <p style="color: red;font-size: 22px;"><b>${current}</b></p>
           
        </p>
         </td>
       </tr>
        <br>
       <tr>
          <td width="50%" class="center" style="font-size: 12px; color: black; font-weight: normal; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 10px; vertical-align: middle; padding: 0px 10px 10px 10px; " >
           
            <p><strong>...Only 30 Minutes Left...</strong></p>
            <p><strong> *Have You Order For This Week?*</strong></p>
            <p><strong> If you haven't, you need to order now.</strong></p>
         </td>
        
       </tr>
    <br><br>
       <tr>
          <td class="center bg-color" style="font-size: 12px; color: black; font-weight: normal; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 0px 5px 0px; width: 100%;" >
            <span>Hurry Up!</span>
         </td>
       </tr>
        
      
        
       <tr class="bg-color">
          <td width="50%" class="center" style="font-size: 12px; color: black; font-weight: normal; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 5px 10px 20px 10px;" >
            <span>Catering Service</span>
         </td>
       </tr>
    </table><!--End Top-->

</body>
</html>