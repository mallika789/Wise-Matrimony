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
			<form id="testform" action="BasicInfo" method="POST">
				
					<fieldset style2="border: 1px solid #999">
					<legend>Basic Information</legend>
					
					<p for="educationInDetail">Education in detail</p>
					<input type="text" name="educationInDetail" value="">
					<p for="occupationInDetail">Occupation in detail</p>
					<input type="text" name="occupationInDetail" value="">
					
					<p for="bodyType" >Bodytype</p>            
                    <input type="radio" name="bodyType" value="slim">slim
                    <input type="radio" name="bodyType" value="Average">Average
                    <input type="radio" name="bodyType" value="Athletic">Athletic
                    <input type="radio" name="bodyType" value="Heavy">Heavy<br><br>
					
					<p for="fatherStatus">father status</p>
					<input type="radio" name="fatherStatus" value="Employed">Employed 
                    <input type="radio" name="fatherStatus" value="Bussiness man"> Bussiness mam
                    <input type="radio" name="fatherStatus" value="professional"> professional

                    <input type="radio" name="fatherStatus" value="passed away" > Passed away<br><br>
			  
					<p for="motherStatus">mother status</p>
					<input type="radio" name="motherStatus" value="Employed">Employed 
                    <input type="radio" name="motherStatus" value="Homemaker"> Homemaker
                    <input type="radio" name="motherStatus" value="professional" > professional
                    <input type="radio" name="motherStatus" value="passed away" > Passed away<br><br> 
				
					<p for="noOfBros">no.of brothers</p>
					<input type="radio" name="noOfBros" value="one">one
                    <input type="radio" name="noOfBros" value="two">two 
                    <input type="radio" name="noOfBros" value="two+">two+ 
                    <input type="radio" name="noOfBros" value="None">None<br><br>
					
					<p for="broStatus">Brother status</p>
					  <input type="radio" name="broStatus" value="married">married
                      <input type="radio" name="broStatus" value="unmarried">unmarried <br>
				
					<p for="noOfSis">no.of sisters</p>
					<input type="radio" name="noOfSis" value="one">one
                    <input type="radio" name="noOfSis" value="two">two 
                    <input type="radio" name="noOfSis" value="two+">two+
                   <input type="radio" name="noOfSis" value="None">None<br>
					
					<p for="sisStatus">Sister status</p>
					<input type="radio" name="sisStatus" value="married">married
                    <input type="radio" name="sisStatus" value="unmarried">unmarried <br>
					
					
					<p for="eatingHabit" >eating habit</p>
					<input type="radio" name="eatingHabit" value="Vegetarian">Vegetarian
                        <input type="radio" name="eatingHabit" value="Non-Vegetarian">Non-Vegetarian
                       <input type="radio" name="eatingHabit" value="Eggetarian">Eggetarian
                   <br>
                   <p for="drinkingHabit" >drinking habit</p>
                   <input type="radio" name="drinkingHabit" value="No">Never drinks
<input type="radio" name="drinkingHabit" value="Drinks Socially">Drinks Socially
<input type="radio" name="drinkingHabit" value="Yes">Drinks Regularly  <br>
                   <p for="smokingHabit" >smoking habit</p>
                   <input type="radio" name="smokingHabit" value="No">Never smokes
<input type="radio" name="smokingHabit" value="Smokes Occassionally">Smokes Occassionally
<input type="radio" name="smokingHabit" value="Yes">Smokes regularly<br>
                   <p for="hobbies" >hobbies</p>
                   <input type="checkbox" name="hobbies" value="Cooking">Cooking
          <input type="checkbox" name="hobbies" value="Nature">Nature                             
          <input type="checkbox" name="hobbies" value="Photography">Photography
          <input type="checkbox" name="hobbies" value="Dancing">Dancing
          <input type="checkbox" name="hobbies" value="Painting">others<br>
                   
                   <p for="music" >favourite music</p>
                   <input type="checkbox" name="music" value="Film Songs">Film Songs             
          <input type="checkbox" name="music" value="Indian/classical music">Indian/classical music
          <input type="checkbox" name="music" value="Western Music">Western Music<br><br>
					
				</fieldset>

			<fieldset style2="border: 1px solid #999">
			<legend>location details :</legend>
					<p for="country">country</p>
                   <input type="text" name="country" value="">
                   <p for="state">state</p>
                   <input type="text" name="state" value="">
                     <p for="city">city</p>
                   <input type="text" name="city" value="">
                    <p for="district">district</p>
                   <input type="text" name="district" value="">
					</fieldset>
			

				<input type="submit" value="submit">
			
				
			</form>
		</div>
		
	</div>
</body>
</html>

