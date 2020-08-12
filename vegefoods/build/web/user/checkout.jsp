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
        <title>Check out</title>
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
     <style>
        .inputS:hover{
            cursor: pointer;
            background-color: white;
            color: black;
            border:1px solid #82ae46;
        }
        .inputS{
            cursor: pointer;
            background-color: #82ae46;
            color: white;
            border-radius: 30px;
            border: none;
            width: 200px;
            height: 60px;
            outline: none;

        }
    </style>
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

<section class="ftco-section">
    <form action="PlaceAnOrder" method="POST" class="billing-form">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 ftco-animate">
                    <h3 class="mb-4 billing-heading">Billing Details</h3>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="firstname">Your name</label>
                                <input type="text" class="form-control" placeholder="" name="name" required="">
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="streetaddress">Street Address</label>
                                <input type="text" class="form-control" placeholder="House number and street name" name="address" required="">
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" class="form-control" placeholder="" name="phone" required="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="emailaddress">Email Address</label>
                                <input type="text" class="form-control" placeholder="" name="email" required="">
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <img src="../user/images/category-2.jpg" style="width: 636px;margin-top: 33px;height:414px">
                        </div>
                    </div>
                    <!-- END -->
                </div>
                <div class="col-xl-5" style="margin-top:30px">
                    <div class="row mt-5 pt-3">
                        <div class="col-md-12 d-flex mb-5">
                            <div class="cart-detail cart-total p-3 p-md-4">
                                <h3 class="billing-heading mb-4">Cart Total</h3>
                                <p class="d-flex">
                                    <span>Subtotal</span>
                                    <span><%=CartController.totalAmount%> VNĐ</span>
                                </p>
                                <p class="d-flex">
                                    <span>Delivery</span>
                                    <span>$0.00</span>
                                </p>
                                <p class="d-flex">
                                    <span></span>
                                    <span></span>
                                </p>
                                <hr>
                                <p class="d-flex total-price" style="padding-bottom: 17px">
                                    <span>Total</span>
                                    <span><%=CartController.totalAmount%> VNĐ</span>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="cart-detail p-3 p-md-4">
                                <h3 class="billing-heading mb-4">Payment Method</h3>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                           <label>Payment on delivery</label>
                                        </div>
                                    </div>
                                </div>
                                <input class="inputS" type="submit" value="Place an order">
<!--                                <p><a href="#"class="btn btn-primary py-3 px-4">Place an order</a></p>-->
                            </div>
                        </div>
                    </div>
                </div> <!-- .col-md-8 -->
            </div>
        </div>
    </form>                        
</section> <!-- .section -->

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
