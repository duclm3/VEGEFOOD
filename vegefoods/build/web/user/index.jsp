<%-- 
    Document   : index
    Created on : 02-Nov-2019, 12:12:44
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
<section id="home-section" class="hero">
      <div class="home-slider owl-carousel">
          <div class="slider-item" style="background-image: url(images/bg_1.jpg);">
            <div class="overlay"></div>
            <div class="container">
              <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                <div class="col-md-12 ftco-animate text-center">
                  <h1 class="mb-2">We serve Fresh Vegestables &amp; Fruits</h1>
                  <h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>
                  <p><a href="#" class="btn btn-primary">View Details</a></p>
                </div>

              </div>
            </div>
          </div>

          <div class="slider-item" style="background-image: url(images/bg_2.jpg);">
            <div class="overlay"></div>
            <div class="container">
              <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                <div class="col-sm-12 ftco-animate text-center">
                  <h1 class="mb-2">100% Fresh &amp; Organic Foods</h1>
                  <h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>
                  <p><a href="#" class="btn btn-primary">View Details</a></p>
                </div>

              </div>
            </div>
          </div>
        </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row no-gutters ftco-services">
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-shipped"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Free Shipping</h3>
                <span>On order over $100</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-diet"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Always Fresh</h3>
                <span>Product well package</span>
              </div>
            </div>    
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-award"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Superior Quality</h3>
                <span>Quality Products</span>
              </div>
            </div>      
          </div>
          <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services mb-md-0 mb-4">
              <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
            		<span class="flaticon-customer-service"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Support</h3>
                <span>24/7 Support</span>
              </div>
            </div>      
          </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-category ftco-no-pt">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-6 order-md-last align-items-stretch d-flex">
                        <div class="category-wrap-2 ftco-animate img align-self-stretch d-flex" style="background-image: url(images/category.jpg);">
                            <div class="text text-center">
                                    <h2>Vegetables</h2>
                                    <p>Protect the health of every home</p>
                                    <p><a href="#" class="btn btn-primary">Shop now</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(images/category-1.jpg);">
                            <div class="text px-3 py-1">
                                    <h2 class="mb-0"><a href="#">Fruits</a></h2>
                            </div>
                        </div>
                        <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/category-2.jpg);">
                            <div class="text px-3 py-1">
                                    <h2 class="mb-0"><a href="#">Vegetables</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(images/category-3.jpg);">
                    <div class="text px-3 py-1">
                            <h2 class="mb-0"><a href="#">Juices</a></h2>
                    </div>		
                </div>
                <div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(images/category-4.jpg);">
                    <div class="text px-3 py-1">
                            <h2 class="mb-0"><a href="#">Dried</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div class="col-md-12 heading-section text-center ftco-animate">
            <span class="subheading">Featured Products</span>
        <h2 class="mb-4">Our Products</h2>
        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
      </div>
    </div>   		
    </div>
    <div class="container">
        <div class="row">
            <%
                ProductModel prm = new ProductModel();
                List<Product> listpro = prm.getALLProduct();
                for (Product pro : listpro) 
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
</section>
		
<section class="ftco-section img" style="background-image: url(images/bg_3.jpg);">
    <div class="container">
        <div class="row justify-content-end">
            <div class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
                <span class="subheading">Best Price For You</span>
                <h2 class="mb-4">Deal of the day</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
                <h3><a href="#">Spinach</a></h3>
                <span class="price">$10 <a href="#">now $5 only</a></span>
                <div id="timer" class="d-flex mt-5">
                    <div class="time" id="days"></div>
                    <div class="time pl-3" id="hours"></div>
                    <div class="time pl-3" id="minutes"></div>
                    <div class="time pl-3" id="seconds"></div>
                  </div>
            </div>
        </div>   		
    </div>
</section>

<section class="ftco-section testimony-section">
  <div class="container">
    <div class="row justify-content-center mb-5 pb-3">
      <div class="col-md-7 heading-section ftco-animate text-center">
            <span class="subheading">Testimony</span>
        <h2 class="mb-4">Our satisfied customer says</h2>
        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
      </div>
    </div>
    <div class="row ftco-animate">
      <div class="col-md-12">
        <div class="carousel-testimony owl-carousel">
          <div class="item">
            <div class="testimony-wrap p-4 pb-5">
              <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
                <span class="quote d-flex align-items-center justify-content-center">
                  <i class="icon-quote-left"></i>
                </span>
              </div>
              <div class="text text-center">
                <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Garreth Smith</p>
                <span class="position">Marketing Manager</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap p-4 pb-5">
              <div class="user-img mb-5" style="background-image: url(images/person_2.jpg)">
                <span class="quote d-flex align-items-center justify-content-center">
                  <i class="icon-quote-left"></i>
                </span>
              </div>
              <div class="text text-center">
                <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Garreth Smith</p>
                <span class="position">Interface Designer</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap p-4 pb-5">
              <div class="user-img mb-5" style="background-image: url(images/person_3.jpg)">
                <span class="quote d-flex align-items-center justify-content-center">
                  <i class="icon-quote-left"></i>
                </span>
              </div>
              <div class="text text-center">
                <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Garreth Smith</p>
                <span class="position">UI Designer</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap p-4 pb-5">
              <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
                <span class="quote d-flex align-items-center justify-content-center">
                  <i class="icon-quote-left"></i>
                </span>
              </div>
              <div class="text text-center">
                <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Garreth Smith</p>
                <span class="position">Web Developer</span>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="testimony-wrap p-4 pb-5">
              <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
                <span class="quote d-flex align-items-center justify-content-center">
                  <i class="icon-quote-left"></i>
                </span>
              </div>
              <div class="text text-center">
                <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                <p class="name">Garreth Smith</p>
                <span class="position">System Analyst</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <hr>

<section class="ftco-section ftco-partner">
    <div class="container">
        <div class="row">
                <div class="col-sm ftco-animate">
                        <a href="#" class="partner"><img src="images/partner-1.png" class="img-fluid" alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                        <a href="#" class="partner"><img src="images/partner-2.png" class="img-fluid" alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                        <a href="#" class="partner"><img src="images/partner-3.png" class="img-fluid" alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                        <a href="#" class="partner"><img src="images/partner-4.png" class="img-fluid" alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                        <a href="#" class="partner"><img src="images/partner-5.png" class="img-fluid" alt="Colorlib Template"></a>
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
