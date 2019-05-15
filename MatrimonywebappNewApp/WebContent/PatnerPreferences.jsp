<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><font color="lightcoral">Patner Preferences</font></h1> 
  <form action="PatnerPreference" method = "Post">

<fieldset  style="background-color: powderblue">

<h1>Religion preferences:</h1>

<h2>Religion:</h2>
  <input type="checkbox" name="1" value="hindu">hindu
  <input type="checkbox" name="2" value="muslim">muslim
  <input type="checkbox" name="3" value="christian">christian
  <input type="checkbox" name="4" value="sikhism" >sikhism
  <input type="checkbox" name="5" value="buddism" >buddism<br><br>
  
  <h2>Mother Tongue:</h2>

  <input type="checkbox" name="1" value="Telugu">Telugu 
  <input type="checkbox" name="2" value="Awadhi">Awadhi
  <input type="checkbox" name="3" value="Brij" >Brij
  <input type="checkbox" name="4" value="Chhattisgarh">Chhattisgarh
  <input type="checkbox" name="5" value="Hindi" >Hindi
  <input type="checkbox" name="6" value="Magahi" >Magahi<br><br>
  
  <h2> Caste:</h2>
 
  <input type="text" name = "1"value="">
  <br>
  
  <h2>Star:</h2>
     
  <input type="text" name="1" value="">
  <br>
  
  <h2>Manglik:</h2>
     
  <input type="checkbox" name="1" value="Yes">Yes
  <input type="checkbox" name="2" value="NO">NO
  <input type="checkbox" name="3" value="doesnt matter">doesn't matter 
  <br>
  </fieldset>
  <h1><font color="lightcoral">Location:</font></h1> 
  <fieldset  style="background-color: powderblue">
  
  <h4>Country Living In:</h4>
     
  <input type="text" name="1" value="">
  <br>
  
  <h4>Citizenship:</h4>
     
  <input type="text" name="1" value="">
  <br>
  </fieldset>
  <h1><font color="lightcoral">Profession Preferences:</font></h1> 
  <fieldset  style="background-color: powderblue">
     
  
  <h6>Education:</h6>
     
  <input type="checkbox" name="1" value="B.Tech">B.tech
  <input type="checkbox" name="2" value="B.sc/IT/Computer science">B.sc/IT/Computer
  <input type="checkbox" name="3" value="B.plan">B.plan
  <input type="checkbox" name="4" value="BE">BE
  <input type="checkbox" name="5" value="BCA">BCA
  <input type="checkbox" name="6" value="B.arch">B.arch
  <input type="checkbox" name="7" value="Aeronatical engineering">Aeronautical engineering
  <input type="checkbox" name="8" value="Any Bachelors in engineering">Any bachelors in engineering
  <br>
    <h6>Occupation:</h6>
   
    <input type="checkbox" name="1" value="doctor">Doctor
    <input type="checkbox" name="2" value="govermennt employee">Government Employee
    <input type="checkbox" name="3" value="home maker">Home Maker
    <input type="checkbox" name="4" value="beautician">Beautician
    <input type="checkbox" name="5" value="any accupation">Any Occupation<br>
    <h6>Annual income:</h6>
       
    <input type="text" name="1" value="">
</form>

</body>
</html>