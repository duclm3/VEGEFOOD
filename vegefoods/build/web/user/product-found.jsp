<%-- 
    Document   : product-single
    Created on : 02-Nov-2019, 22:49:58
    Author     : Le Minh Duc
--%>

<%@page import="user.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Single</title>
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
            background-color: black;
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
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="index.html">Product</a></span> <span>Product Single</span></p>
        <h1 class="mb-0 bread">Product Single</h1>
      </div>
    </div>
  </div>
</div>

<section class="ftco-section">
    <form action="CartController" mmethod="POST">
    <div class="container">
        <%
            Product pro  = (Product)request.getAttribute("pro");
            if(pro!=null){
                %>
                    <div class="row">
                        <div class="col-lg-6 mb-5 ftco-animate">
                            <a href="<%=pro.getImageLink()%>" class="image-popup"><img src="<%=pro.getImageLink()%>" class="img-fluid" alt="Colorlib Template"></a>
                        </div>
                        <div class="col-lg-6 product-details pl-md-5 ftco-animate">
                            <h3><%=pro.getProductName()%></h3>
                            <div class="rating d-flex">
                                <p class="text-left mr-4">
                                    <a href="#" class="mr-2">5.0</a>
                                    <a href="#"><span class="ion-ios-star-outline"></span></a>
                                    <a href="#"><span class="ion-ios-star-outline"></span></a>
                                    <a href="#"><span class="ion-ios-star-outline"></span></a>
                                    <a href="#"><span class="ion-ios-star-outline"></span></a>
                                    <a href="#"><span class="ion-ios-star-outline"></span></a>
                                </p>
                                <p class="text-left mr-4">
                                    <a href="#" class="mr-2" style="color: #000;">100 <span style="color: #bbb;">Rating</span></a>
                                </p>
                                <p class="text-left">
                                    <a href="#" class="mr-2" style="color: #000;">500 <span style="color: #bbb;">Sold</span></a>
                                </p>
                            </div>
                                <p class="price"><span><%=pro.getPrice()%></span></p>
                                <p><%=pro.getDescriptions()%></p>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until.
                                </p>
                            <div class="row mt-4">
                                    <div class="col-md-6">
                                        <div class="form-group d-flex">
                                    <div class="select-wrap">
                           <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                          <select name="" id="" class="form-control">
                            <option value="">1 KG</option>
                          </select>
                        </div>
                            </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="input-group col-md-6 d-flex mb-3">
                        <span class="input-group-btn mr-2">
                                <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                           <i class="ion-ios-remove"></i>
                                </button>
                                </span>
                        <input type="text" id="quantity" name="quantitys" class="form-control input-number" value="1" min="1" max="100">
                        <input type="hidden" id="productId" value="<%=pro.getProductId()%>" name="productId" />
                        <span class="input-group-btn ml-2">
                                <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                             <i class="ion-ios-add"></i>
                         </button>
                        </span>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                        </div>
                        </div>  
                        <input class="inputS" type="submit" value="Add to cart" >    
            <!--                <p><a href="" class="btn btn-black py-3 px-5"></a></p>-->
                        </div>
                    </div>
                <%
            }else{
                %>
                    <h1>Not found product</h1>
                <%
            }
        %>
       
        
    </div>
</form>    
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
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    </body>
</html>
