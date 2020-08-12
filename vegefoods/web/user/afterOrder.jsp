<%-- 
    Document   : checkout
    Created on : 03-Nov-2019, 19:46:53
    Author     : Le Minh Duc
--%>

<%@page import="user.controller.CartController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VEGEFOODS</title>
          <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="css/open-iconic-bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/owl.theme.default.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/magnific-popup.css" rel="stylesheet" type="text/css"/>
    <link href="css/aos.css" rel="stylesheet" type="text/css"/>
    <link href="css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap-datepicker.css" rel="stylesheet" type="text/css"/>
    <link href="css/jquery.timepicker.css" rel="stylesheet" type="text/css"/>
    <link href="css/flaticon.css" rel="stylesheet" type="text/css"/>
    <link href="css/icomoon.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    
    </head>
    
    <body class="goto-here">
  <jsp:include page="/user/header.jsp"/>
     <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Checkout</span></p>
            <h1 class="mb-0 bread">Checkout</h1>
          </div>
        </div>
      </div>
    </div>

  <%
      String thongbao = "";
      try {
              thongbao = (String)request.getAttribute("thongbao");
          } catch (Exception e) {
              thongbao = "Không nhận được thông báo";
          }
      if(thongbao.equals("Order Success")){
        %>  
          <h1 style="text-align: center;margin-top: 50px"><%=thongbao%> <img src="../user/images/icontick.jpg" style="width: 30px;margin-top:0px;height: 20px;text-align: center"></h1>
        <%
      }else{
        %>  
          <h1 style="text-align: center;margin-top: 50px"><%=thongbao%> !</h1>
        <%
        }
      
  %>

  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
<div class="container py-4">
<div class="row d-flex justify-content-center py-5">
  <div class="col-md-6">
  	<h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
  	<span>Get e-mail updates about our latest shops and special offers</span>
  </div>
  <div class="col-md-6 d-flex align-items-center">
    <form action="#" class="subscribe-form">
      <div class="form-group d-flex">
        <input type="text" class="form-control" placeholder="Enter email address">
        <input type="submit" value="Subscribe" class="submit px-3">
      </div>
    </form>
  </div>
</div>
</div>
</section>
  <jsp:include page="/user/footer.jsp"/>
  <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/jquery-migrate-3.0.1.min.js" type="text/javascript"></script>
  <script src="js/popper.min.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
  <script src="js/jquery.waypoints.min.js" type="text/javascript"></script>
  <script src="js/jquery.stellar.min.js" type="text/javascript"></script>
  <script src="js/owl.carousel.min.js" type="text/javascript"></script>
  <script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>
  <script src="js/aos.js" type="text/javascript"></script>
  <script src="js/jquery.animateNumber.min.js" type="text/javascript"></script>
  <script src="js/bootstrap-datepicker.js" type="text/javascript"></script>
  <script src="js/scrollax.min.js" type="text/javascript"></script>
  
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js" type="text/javascript"></script>
  <script src="js/main.js" type="text/javascript"></script>
    </body>
</html>
