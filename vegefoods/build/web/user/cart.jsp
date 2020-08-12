<%-- 
    Document   : cart
    Created on : 03-Nov-2019, 13:04:16
    Author     : Le Minh Duc
--%>

<%@page import="user.controller.CartController"%>
<%@page import="user.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
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
            width: 95px;
            height: 31px;
            margin-left: 10px;
            outline: none;

        }
    </style>
    </head>
    <body class="goto-here" style=" overflow-x: hidden;">
    <jsp:include page="/user/header.jsp"/>
<div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
    <div class="container">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Cart</span></p>
          <h1 class="mb-0 bread">My Cart</h1>
        </div>
      </div>
    </div>
</div>

<section class="ftco-section ftco-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                    <form action="UpdateCart" method="POST">
                    <table class="table">
                        <thead class="thead-primary">
                          <tr class="text-center">
                            <th>Action</th>
                            <th>Image</th>
                            <th>Product name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                          </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Cart> listcart = (List<Cart>)session.getAttribute("listCart");
                                for (Cart cart : listcart) 
                                {
                                    %>
                                        <tr class="text-center">
                                            <td class="product-remove">
                                                <a href="RemoveCart?productId=<%=cart.getPro().getProductId()%>"><span class="ion-ios-close"></span></a>
                                                <input type="submit" value="Update" class="inputS">
                                            </td>  
                                        <td class="image-prod"><div class="img" style="background-image:url(<%=cart.getPro().getImageLink()%>);"></div></td>
                                        <td class="product-name">
                                            <h3><%=cart.getPro().getProductName()%></h3>
                                        </td>
                                        <td class="price"><%=cart.getPro().getPrice()%></td>
                                        <td class="quantity">
                                            <div class="input-group mb-3">
                                                <input type="number" name="quantitys" class="quantity form-control input-number" value="<%=cart.getQty()%>" min="1" max="100">
                                            </div>
                                        </td>
                                        <td class="total"><%=cart.getPro().getPrice() * cart.getQty()%></td>
                                      </tr>
                                    <%
                                }
                            %>
                        </tbody>
                      </table>
                    </form>    
                </div>
            </div>
        </div>
    </div>    
    <div class="row justify-content-end">
        <div class="col-sm-8">
            <div class="shipping">
              <img src="../user/images/category-1.jpg" style="width: 770px;height: 600px;margin-left: 120px;margin-top:48px">
            </div>
        </div>
        
        <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
            <div class="cart-total mb-3">
                <h3>Cart Totals</h3>
                <p class="d-flex">
                    <span>Subtotal</span>
                    <span><%=CartController.totalAmount%> VNĐ</span>
                </p>
                <p class="d-flex">
                    <span>Delivery</span>
                    <span>0.00</span>
                </p>

                <hr>
                <p class="d-flex total-price">
                    <span>Total</span>
                    <span><%=CartController.totalAmount%> VNĐ</span>
            </p>
            </div>
            <%
                if(listcart.size()==0){
                    %>
                        <p><a href="index.jsp" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
                    <%
                }else{
                    %>
                        <p><a href="checkout.jsp" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
                    <%
                }
            %>
            
        </div>
    </div>
</section>

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
  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());

		            $('#quantity').val(quantity + 1);

		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());

		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    </body>
</html>
