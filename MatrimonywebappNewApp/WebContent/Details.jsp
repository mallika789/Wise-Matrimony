<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WISE Matrimony</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="WISE Matrimony" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
<!-- //js -->
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,500,400italic,500italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="main">
		<div class="agileinfo_main">
			<form id="testform" action="Details" method="POST">
			
					<fieldset style2="border: 1px solid #999">
					<legend>Personal and Professional Details</legend>
					<p for="mailId" >Enter email</p>            
                    <input type="text" placeholder="Enter Email" name="mailId" required>
                    <p for="dob" >Enter date of birth</p>   
                      <input type="date" name="dob" value="dob">
                      <p for="phoneNum" >Enter phone number</p>   
                      <input type="text" name="phoneNum" value="">
                     
                      <p for="aadharNum" >enter aadhar number</p>   
                      <input type="text" name="aadharNum" value="">
                      <p for="age" >enter your age</p>   
                      <input type="number" name="age" value="">
              
					<p for="maritalStatus">marital status</p>
					<input type="radio" name="maritalStatus" value="Never married " >Never married
  					<input type="radio" name="maritalStatus" value="widowed"> widowed
  					<input type="radio" name="maritalStatus" value="Divorced"> Divorced
  					<input type="radio" name="maritalStatus" value="Awaiting Divorce"> Awaiting Divorce <br>
  
  			
					<p for="height">height</p><br>
					<p for="feet">Feet</p>
             <select name = "feet" id = "myList">
             <option value="-select-">select </option>
               <option value = "4ft">4ft</option>
               <option value = "5ft">5ft</option>
               <option value = "6ft">6ft</option>
             </select><br>
             <p for="inches">Inches</p>
             
             <select name = "inches" id = "myList">
             <option value="-select-">select </option>
             
               <option value = "1 in">1 in</option>
               <option value = "2 in">2 in</option>
               <option value = "3 in">3 in</option>
               <option value = "4 in">4 in</option>
               <option value = "5 in">5 in</option>
               <option value = "6 in">6 in</option>
               <option value = "7 in">7 in</option>
               <option value = "8 in">8 in</option>
               <option value = "9 in">9 in</option>
               <option value = "10 in">10 in</option>
               <option value = "11 in">11 in</option>
               <option value = "12 in">12 in</option>
             </select> <br>
					<p for="weight">weight</p>
					<select id = "myList" name = "weight" >
             <option value="-weight-">select </option>
               <option value = "40-50kg">40-50kg</option>
               <option value = "50-60kg">50-60kg</option>
               <option value = "60-70kg">60-70kg</option>
               <option value = "71-80kg">71-80kg</option>
               <option value = "81-90kg">81-90kg</option>
               <option value = "91-100kg">91-100kg</option>
               <option value = "Above 100kg">Above 100kg</option>
               
             </select><br>
			  
					<p for="familyStatus">family status</p>
					<input type="radio" name="familyStatus" value="Middle class" >Middle class
  <input type="radio" name="familyStatus" value="Upper middle class">Upper middle class
  <input type="radio" name="familyStatus" value="Rich"> Rich
  <input type="radio" name="familyStatus" value="Affluent"> Affluent
<br> 
				
					<p for="familyType">family type</p>
					<input type="radio" name="familyType" value="Joint" >Joint
  <input type="radio" name="familyType" value="Nuclear">Nuclear
<br>
					
					<p for="familyValues">family values</p>
					 <input type="radio" name="familyValues" value="Orthodox">Orthodox
 <input type="radio" name="familyValues" value="Traditional">Traditional
 <input type="radio" name="familyValues" value="Moderate">Moderate
<input type="radio" name="familyValues" value="Liberal">Liberal<br>
				
					<p for="higherEducation">higher education</p>
					 <select id = "myList" name = "higherEducation">
               <option value = "-select-">-select-</option>
               <option value = "B.Tech">B.Tech</option>
               <option value = "B.Arch">B.Arch</option>
               <option value = "M.Tech">M.Tech</option>
               <option value = "B.A">B.A</option>
               <option value = "B.com">B.com</option>
               <option value = "B.Phil">B.Phil</option>
               <option value = "B.Sc">B.Sc</option>
               <option value = "M.Phil">M.Phil</option>
               <option value = "MBA">MBA</option>
               <option value = "BDS">BDS</option>
               <option value = "B.Ed">B.Ed</option>
               <option value = "M.Ed">M.Ed</option>
               <option value = "Diploma">Diploma</option>
               <option value = "IAS">IAS</option>
               <option value = "IES">IES</option>
               <option value = "IPS">IPS</option>
               <option value = "IRS">IRS</option>
               <option value = "IFS">IFS</option>
               <option value = "BPharm">BPharm</option>
               <option value = "High school">High School</option>
               <option value = "secondary education">Secondary education</option>
               <option value = "B.L">B.L</option>
               <option value = "LLB">LLB</option>
               </select><br>
					
					<p for="employedIn">employed in</p>
					<input type="radio" name="employedIn" value="Government"> Government
              <input type="radio" name="employedIn" value="Private"> Private
              <input type="radio" name="employedIn" value="Business">Business
     
              <input type="radio" name="employedIn" value="Not working">Not Working<br>
					
					<p for="occupation">occupation</p>
                   <select name="occupation">
              <option value="select">select</option>
              <option value="medical">medical</option>
              <option value="marketing and sales">marketing and sales</option>
              <option value="it and engineering">it and engineering</option>
              <option value="defence">defence</option>
              <option value="beauty and fashion">beauty and fashion</option>
              <option value="education">education</option>
              <option value="banking">banking</option>
              <option value="finance">finance</option>
              <option value="civil service">civil service</option>
              <option value="law enforcement">law enforcement</option>
              <option value="legal">legal</option>
              <option value="hospitality">hospitality</option>
              <option value="media and entertainment">media and entertainment</option>
              <option value="scientist">scientist</option>
              <option value="navy">navy</option>
              <option value="management">management</option>
             <option value="others">others</option>
           </select><br>
                   <p for="annualIncome">annual income</p>
                  <select id = "myList" name = "annualIncome">
               <option value = "-select-">-select-</option>
               <option value = "0-1 lakh">0-1 lakh</option>
               <option value = "1-2 lakhs">1-2 lakhs</option>
               <option value = "2-3 lakhs">2-3 lakhs</option>
               <option value = "3-4 lakhs">3-4 lakhs</option>
               <option value = "4-5 lakhs">4-5 lakhs</option>
               <option value = "5-6 lakhs">5-6 lakhs</option>
               <option value = "6-10 lakhs">6-10 lakhs</option>
               <option value = "10-15 lakhs">10-15 lakhs</option>
               <option value = "15-20 lakhs">15-20 lakhs</option>
               <option value = "20-30 lakhs">20-30 lakhs</option>
               <option value = "30-40 lakhs">30-40 lakhs</option>
               <option value = "40-50 lakhs">40-50 lakhs</option>
               <option value = "50lakhs above">50 lakhs above</option>
               </select><br>
                   
					
				</fieldset>

<fieldset style2="border: 1px solid #999">
			<legend>Religion details :</legend>
			
			 <p for="caste" >enter caste</p>   
                      <input type="text" name="caste" value="">
                    
                    <p for="subCaste" >enter subcaste</p>   
                      <input type="text" name="subCaste" value="">
                      
                      <p for="religion" >enter religion</p>   
                      <input type="text" name="religion" value="">
                      </fieldset>
 
				<input type="submit" value="submit">
			
				
			</form>
		</div>
		
	</div>
</body>
</html>