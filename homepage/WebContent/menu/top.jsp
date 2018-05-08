<%@ page contentType="text/html; charset=UTF-8"%>

<%    request.setCharacterEncoding("utf-8");
      String root = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<title>suna</title>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">


<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
  <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <a href="<%=root%>" class="w3-bar-item w3-button">HOME</a>
    <a href="<%=root%>/hmp/menu.jsp" class="w3-bar-item w3-button">MENU</a>
    <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
    <a href="#googleMap" class="w3-bar-item w3-button">CONTACT</a>
  </div>
</div>

  
<!-- Header with image -->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-middle w3-center">
    <span class="w3-text-white w3-hide-small" style="font-size:100px"><br></span>
    <p><br><br><br><a href="./hmp/createform.jsp" class="w3-button w3-xxlarge w3-black">Can you join us?</a></p>
  </div>
  
  <div class="w3-display-bottomleft w3-center w3-padding-large w3-hide-small">
    <span class="w3-tag">suna's homepage : )</span>
  </div>



</header>


