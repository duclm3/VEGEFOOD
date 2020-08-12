<%-- 
    Document   : shop
    Created on : 02-Nov-2019, 12:49:30
    Author     : Le Minh Duc
--%>

<%@page import="user.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="user.model.ProductModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
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
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">Products</h1>
          </div>
        </div>
      </div>
    </div>

<section class="ftco-section">
    <div class="container">
        <div class="justify-content-center">
            <div class="col-md-10 mb-5 text-center">
                <ul class="nav justify-content-center product-category" style="margin-left: 210px">
                    <li class="active">
                      <a data-toggle="tab" class="nav-link active" href="#tab-1">All</a>
                    </li>
                    <li class="nav-item">
                      <a data-toggle="tab" class="nav-link" href="#tab-2">Vegetables</a>
                    </li>
                    <li class="nav-item">
                      <a data-toggle="tab" class="nav-link" href="#tab-3">Fruits</a>
                    </li>
                    <li class="nav-item">
                      <a data-toggle="tab" class="nav-link" href="#tab-4">Juice</a>
                    </li>
                  </ul>
            </div>
        </div>
        <div class="row">
            <div class="tab-content">
                <div class="tab-pane active" id="tab-1">
                <%
                    ProductModel prm = new ProductModel();
                    List<Product> listpro = prm.getALLProduct();
                    for (Product pro : listpro) 
                    {
                        %>
                        <div class="col-md-6 col-lg-3 ftco-animate" style="display: inline-flex; width:270px;padding:13px;padding-top:0px;padding-bottom: 0px">
                            <div class="product">
                                <a href="ProductController?productId=<%=pro.getProductId()%>" class="img-prod"><img class="img-fluid" src="<%=pro.getImageLink()%>" alt="Colorlib Template">
                                    <span class="status">30%</span>
                                    <div class="overlay"></div>
                                </a>
                                <div class="text py-3 pb-4 px-3 text-center">
                                    <h3><a href="#"><%=pro.getProductName()%></a></h3>
                                    <div class="d-flex">
                                        <div class="pricing">
                                            <p class="price"><span class="price-sale"><%=pro.getPrice()%> VNĐ</span></p>
                                        </div>
                                    </div>
                                    <div class="bottom-area d-flex px-3">
                                        <div class="m-auto d-flex">
                                            <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                                    <span><i class="ion-ios-menu"></i></span>
                                            </a>
                                            <a href="CartController?productId=<%=pro.getProductId()%>" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                    <span><i class="ion-ios-cart"></i></span>
                                            </a>
                                            <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                                    <span><i class="ion-ios-heart"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>          
                        <%    
                    }
                %>
                </div>
                <div class="tab-pane fade" id="tab-2">
                <%
                    List<Product> listrcd = prm.getALLRCD();
                    for (Product pro : listrcd) 
                    {
                        %>
                        <div class="col-md-6 col-lg-3 ftco-animate" style="display: inline-flex; width:270px;padding:13px;padding-top:0px;padding-bottom: 0px">
                            <div class="product">
                                <a href="ProductController?productId=<%=pro.getProductId()%>" class="img-prod"><img class="img-fluid" src="<%=pro.getImageLink()%>" alt="Colorlib Template">
                                    <span class="status">30%</span>
                                    <div class="overlay"></div>
                                </a>
                                <div class="text py-3 pb-4 px-3 text-center">
                                    <h3><a href="#"><%=pro.getProductName()%></a></h3>
                                    <div class="d-flex">
                                        <div class="pricing">
                                            <p class="price"><span class="price-sale"><%=pro.getPrice()%> VNĐ</span></p>
                                        </div>
                                    </div>
                                    <div class="bottom-area d-flex px-3">
                                        <div class="m-auto d-flex">
                                            <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                                    <span><i class="ion-ios-menu"></i></span>
                                            </a>
                                            <a href="CartController?productId=<%=pro.getProductId()%>" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                    <span><i class="ion-ios-cart"></i></span>
                                            </a>
                                            <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                                    <span><i class="ion-ios-heart"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>          
                        <%    
                    }
                %>
                </div>
                <div class="tab-pane fade" id="tab-3">
                <%
                    List<Product> listtc = prm.getALLTC();
                    for (Product pro : listtc) 
                    {
                        %>
                        <div class="col-md-6 col-lg-3 ftco-animate" style="display: inline-flex;">
                            <div class="product">
                                <a href="ProductController?productId=<%=pro.getProductId()%>" class="img-prod"><img class="img-fluid" src="<%=pro.getImageLink()%>" alt="Colorlib Template">
                                    <span class="status">30%</span>
                                    <div class="overlay"></div>
                                </a>
                                <div class="text py-3 pb-4 px-3 text-center">
                                    <h3><a href="#"><%=pro.getProductName()%></a></h3>
                                    <div class="d-flex">
                                        <div class="pricing">
                                            <p class="price"><span class="price-sale"><%=pro.getPrice()%> VNĐ</span></p>
                                        </div>
                                    </div>
                                    <div class="bottom-area d-flex px-3">
                                        <div class="m-auto d-flex">
                                            <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                                    <span><i class="ion-ios-menu"></i></span>
                                            </a>
                                            <a href="CartController?productId=<%=pro.getProductId()%>" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                    <span><i class="ion-ios-cart"></i></span>
                                            </a>
                                            <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                                    <span><i class="ion-ios-heart"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>          
                        <%    
                    }
                %>
                </div>
                <div class="tab-pane fade" id="tab-4">
                <%
                    List<Product> listne = prm.getALLNE();
                    for (Product pro : listne) 
                    {
                        %>
                        <div class="col-md-6 col-lg-3 ftco-animate">
                            <div class="product">
                                <a href="ProductController?productId=<%=pro.getProductId()%>" class="img-prod"><img class="img-fluid" src="<%=pro.getImageLink()%>" alt="Colorlib Template">
                                    <span class="status">30%</span>
                                    <div class="overlay"></div>
                                </a>
                                <div class="text py-3 pb-4 px-3 text-center">
                                    <h3><a href="#"><%=pro.getProductName()%></a></h3>
                                    <div class="d-flex">
                                        <div class="pricing">
                                            <p class="price"><span class="price-sale"><%=pro.getPrice()%> VNĐ</span></p>
                                        </div>
                                    </div>
                                    <div class="bottom-area d-flex px-3">
                                        <div class="m-auto d-flex">
                                            <a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                                    <span><i class="ion-ios-menu"></i></span>
                                            </a>
                                            <a href="CartController?productId=<%=pro.getProductId()%>" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                    <span><i class="ion-ios-cart"></i></span>
                                            </a>
                                            <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                                    <span><i class="ion-ios-heart"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>          
                        <%
                    }
                %>
                </div>
            </div>
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
  </body>
</html>
