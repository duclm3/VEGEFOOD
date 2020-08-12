package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import user.entity.Product;
import java.util.List;
import user.model.ProductModel;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>VEGEFOODS</title>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/open-iconic-bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/animate.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/owl.carousel.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/owl.theme.default.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/magnific-popup.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/aos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/ionicons.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/bootstrap-datepicker.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/jquery.timepicker.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/flaticon.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/icomoon.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"goto-here\">\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/user/header.jsp", out, false);
      out.write("\n");
      out.write("<section id=\"home-section\" class=\"hero\">\n");
      out.write("      <div class=\"home-slider owl-carousel\">\n");
      out.write("          <div class=\"slider-item\" style=\"background-image: url(images/bg_1.jpg);\">\n");
      out.write("            <div class=\"overlay\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("              <div class=\"row slider-text justify-content-center align-items-center\" data-scrollax-parent=\"true\">\n");
      out.write("\n");
      out.write("                <div class=\"col-md-12 ftco-animate text-center\">\n");
      out.write("                  <h1 class=\"mb-2\">We serve Fresh Vegestables &amp; Fruits</h1>\n");
      out.write("                  <h2 class=\"subheading mb-4\">We deliver organic vegetables &amp; fruits</h2>\n");
      out.write("                  <p><a href=\"#\" class=\"btn btn-primary\">View Details</a></p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"slider-item\" style=\"background-image: url(images/bg_2.jpg);\">\n");
      out.write("            <div class=\"overlay\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("              <div class=\"row slider-text justify-content-center align-items-center\" data-scrollax-parent=\"true\">\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-12 ftco-animate text-center\">\n");
      out.write("                  <h1 class=\"mb-2\">100% Fresh &amp; Organic Foods</h1>\n");
      out.write("                  <h2 class=\"subheading mb-4\">We deliver organic vegetables &amp; fruits</h2>\n");
      out.write("                  <p><a href=\"#\" class=\"btn btn-primary\">View Details</a></p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row no-gutters ftco-services\">\n");
      out.write("          <div class=\"col-md-3 text-center d-flex align-self-stretch ftco-animate\">\n");
      out.write("            <div class=\"media block-6 services mb-md-0 mb-4\">\n");
      out.write("              <div class=\"icon bg-color-1 active d-flex justify-content-center align-items-center mb-2\">\n");
      out.write("            \t\t<span class=\"flaticon-shipped\"></span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"media-body\">\n");
      out.write("                <h3 class=\"heading\">Free Shipping</h3>\n");
      out.write("                <span>On order over $100</span>\n");
      out.write("              </div>\n");
      out.write("            </div>      \n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-3 text-center d-flex align-self-stretch ftco-animate\">\n");
      out.write("            <div class=\"media block-6 services mb-md-0 mb-4\">\n");
      out.write("              <div class=\"icon bg-color-2 d-flex justify-content-center align-items-center mb-2\">\n");
      out.write("            \t\t<span class=\"flaticon-diet\"></span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"media-body\">\n");
      out.write("                <h3 class=\"heading\">Always Fresh</h3>\n");
      out.write("                <span>Product well package</span>\n");
      out.write("              </div>\n");
      out.write("            </div>    \n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-3 text-center d-flex align-self-stretch ftco-animate\">\n");
      out.write("            <div class=\"media block-6 services mb-md-0 mb-4\">\n");
      out.write("              <div class=\"icon bg-color-3 d-flex justify-content-center align-items-center mb-2\">\n");
      out.write("            \t\t<span class=\"flaticon-award\"></span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"media-body\">\n");
      out.write("                <h3 class=\"heading\">Superior Quality</h3>\n");
      out.write("                <span>Quality Products</span>\n");
      out.write("              </div>\n");
      out.write("            </div>      \n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-3 text-center d-flex align-self-stretch ftco-animate\">\n");
      out.write("            <div class=\"media block-6 services mb-md-0 mb-4\">\n");
      out.write("              <div class=\"icon bg-color-4 d-flex justify-content-center align-items-center mb-2\">\n");
      out.write("            \t\t<span class=\"flaticon-customer-service\"></span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"media-body\">\n");
      out.write("                <h3 class=\"heading\">Support</h3>\n");
      out.write("                <span>24/7 Support</span>\n");
      out.write("              </div>\n");
      out.write("            </div>      \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section ftco-category ftco-no-pt\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-8\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 order-md-last align-items-stretch d-flex\">\n");
      out.write("                        <div class=\"category-wrap-2 ftco-animate img align-self-stretch d-flex\" style=\"background-image: url(images/category.jpg);\">\n");
      out.write("                            <div class=\"text text-center\">\n");
      out.write("                                    <h2>Vegetables</h2>\n");
      out.write("                                    <p>Protect the health of every home</p>\n");
      out.write("                                    <p><a href=\"#\" class=\"btn btn-primary\">Shop now</a></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"category-wrap ftco-animate img mb-4 d-flex align-items-end\" style=\"background-image: url(images/category-1.jpg);\">\n");
      out.write("                            <div class=\"text px-3 py-1\">\n");
      out.write("                                    <h2 class=\"mb-0\"><a href=\"#\">Fruits</a></h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"category-wrap ftco-animate img d-flex align-items-end\" style=\"background-image: url(images/category-2.jpg);\">\n");
      out.write("                            <div class=\"text px-3 py-1\">\n");
      out.write("                                    <h2 class=\"mb-0\"><a href=\"#\">Vegetables</a></h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <div class=\"category-wrap ftco-animate img mb-4 d-flex align-items-end\" style=\"background-image: url(images/category-3.jpg);\">\n");
      out.write("                    <div class=\"text px-3 py-1\">\n");
      out.write("                            <h2 class=\"mb-0\"><a href=\"#\">Juices</a></h2>\n");
      out.write("                    </div>\t\t\n");
      out.write("                </div>\n");
      out.write("                <div class=\"category-wrap ftco-animate img d-flex align-items-end\" style=\"background-image: url(images/category-4.jpg);\">\n");
      out.write("                    <div class=\"text px-3 py-1\">\n");
      out.write("                            <h2 class=\"mb-0\"><a href=\"#\">Dried</a></h2>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("    <div class=\"row justify-content-center mb-3 pb-3\">\n");
      out.write("      <div class=\"col-md-12 heading-section text-center ftco-animate\">\n");
      out.write("            <span class=\"subheading\">Featured Products</span>\n");
      out.write("        <h2 class=\"mb-4\">Our Products</h2>\n");
      out.write("        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>\n");
      out.write("      </div>\n");
      out.write("    </div>   \t\t\n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");

                ProductModel prm = new ProductModel();
                List<Product> listpro = prm.getALLProduct();
                for (Product pro : listpro) 
                {
                    
      out.write("\n");
      out.write("                    <div class=\"col-md-6 col-lg-3 ftco-animate\">\n");
      out.write("                        <div class=\"product\">\n");
      out.write("                            <a href=\"ProductController?productId=");
      out.print(pro.getProductId());
      out.write("\" class=\"img-prod\"><img class=\"img-fluid\" src=\"");
      out.print(pro.getImageLink());
      out.write("\" alt=\"Colorlib Template\">\n");
      out.write("                                <span class=\"status\">30%</span>\n");
      out.write("                                <div class=\"overlay\"></div>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"text py-3 pb-4 px-3 text-center\">\n");
      out.write("                                <h3><a href=\"#\">");
      out.print(pro.getProductName());
      out.write("</a></h3>\n");
      out.write("                                <div class=\"d-flex\">\n");
      out.write("                                    <div class=\"pricing\">\n");
      out.write("                                        <p class=\"price\"><span class=\"price-sale\">");
      out.print(pro.getPrice());
      out.write(" VNĐ</span></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"bottom-area d-flex px-3\">\n");
      out.write("                                    <div class=\"m-auto d-flex\">\n");
      out.write("                                        <a href=\"#\" class=\"add-to-cart d-flex justify-content-center align-items-center text-center\">\n");
      out.write("                                                <span><i class=\"ion-ios-menu\"></i></span>\n");
      out.write("                                        </a>\n");
      out.write("                                        <a href=\"CartController?productId=");
      out.print(pro.getProductId());
      out.write("\" class=\"buy-now d-flex justify-content-center align-items-center mx-1\">\n");
      out.write("                                                <span><i class=\"ion-ios-cart\"></i></span>\n");
      out.write("                                        </a>\n");
      out.write("                                        <a href=\"#\" class=\"heart d-flex justify-content-center align-items-center \">\n");
      out.write("                                                <span><i class=\"ion-ios-heart\"></i></span>\n");
      out.write("                                        </a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    ");
 
                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\t\t\n");
      out.write("<section class=\"ftco-section img\" style=\"background-image: url(images/bg_3.jpg);\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row justify-content-end\">\n");
      out.write("            <div class=\"col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate\">\n");
      out.write("                <span class=\"subheading\">Best Price For You</span>\n");
      out.write("                <h2 class=\"mb-4\">Deal of the day</h2>\n");
      out.write("                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>\n");
      out.write("                <h3><a href=\"#\">Spinach</a></h3>\n");
      out.write("                <span class=\"price\">$10 <a href=\"#\">now $5 only</a></span>\n");
      out.write("                <div id=\"timer\" class=\"d-flex mt-5\">\n");
      out.write("                    <div class=\"time\" id=\"days\"></div>\n");
      out.write("                    <div class=\"time pl-3\" id=\"hours\"></div>\n");
      out.write("                    <div class=\"time pl-3\" id=\"minutes\"></div>\n");
      out.write("                    <div class=\"time pl-3\" id=\"seconds\"></div>\n");
      out.write("                  </div>\n");
      out.write("            </div>\n");
      out.write("        </div>   \t\t\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section testimony-section\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row justify-content-center mb-5 pb-3\">\n");
      out.write("      <div class=\"col-md-7 heading-section ftco-animate text-center\">\n");
      out.write("            <span class=\"subheading\">Testimony</span>\n");
      out.write("        <h2 class=\"mb-4\">Our satisfied customer says</h2>\n");
      out.write("        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row ftco-animate\">\n");
      out.write("      <div class=\"col-md-12\">\n");
      out.write("        <div class=\"carousel-testimony owl-carousel\">\n");
      out.write("          <div class=\"item\">\n");
      out.write("            <div class=\"testimony-wrap p-4 pb-5\">\n");
      out.write("              <div class=\"user-img mb-5\" style=\"background-image: url(images/person_1.jpg)\">\n");
      out.write("                <span class=\"quote d-flex align-items-center justify-content-center\">\n");
      out.write("                  <i class=\"icon-quote-left\"></i>\n");
      out.write("                </span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"text text-center\">\n");
      out.write("                <p class=\"mb-5 pl-4 line\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                <p class=\"name\">Garreth Smith</p>\n");
      out.write("                <span class=\"position\">Marketing Manager</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"item\">\n");
      out.write("            <div class=\"testimony-wrap p-4 pb-5\">\n");
      out.write("              <div class=\"user-img mb-5\" style=\"background-image: url(images/person_2.jpg)\">\n");
      out.write("                <span class=\"quote d-flex align-items-center justify-content-center\">\n");
      out.write("                  <i class=\"icon-quote-left\"></i>\n");
      out.write("                </span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"text text-center\">\n");
      out.write("                <p class=\"mb-5 pl-4 line\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                <p class=\"name\">Garreth Smith</p>\n");
      out.write("                <span class=\"position\">Interface Designer</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"item\">\n");
      out.write("            <div class=\"testimony-wrap p-4 pb-5\">\n");
      out.write("              <div class=\"user-img mb-5\" style=\"background-image: url(images/person_3.jpg)\">\n");
      out.write("                <span class=\"quote d-flex align-items-center justify-content-center\">\n");
      out.write("                  <i class=\"icon-quote-left\"></i>\n");
      out.write("                </span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"text text-center\">\n");
      out.write("                <p class=\"mb-5 pl-4 line\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                <p class=\"name\">Garreth Smith</p>\n");
      out.write("                <span class=\"position\">UI Designer</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"item\">\n");
      out.write("            <div class=\"testimony-wrap p-4 pb-5\">\n");
      out.write("              <div class=\"user-img mb-5\" style=\"background-image: url(images/person_1.jpg)\">\n");
      out.write("                <span class=\"quote d-flex align-items-center justify-content-center\">\n");
      out.write("                  <i class=\"icon-quote-left\"></i>\n");
      out.write("                </span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"text text-center\">\n");
      out.write("                <p class=\"mb-5 pl-4 line\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                <p class=\"name\">Garreth Smith</p>\n");
      out.write("                <span class=\"position\">Web Developer</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"item\">\n");
      out.write("            <div class=\"testimony-wrap p-4 pb-5\">\n");
      out.write("              <div class=\"user-img mb-5\" style=\"background-image: url(images/person_1.jpg)\">\n");
      out.write("                <span class=\"quote d-flex align-items-center justify-content-center\">\n");
      out.write("                  <i class=\"icon-quote-left\"></i>\n");
      out.write("                </span>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"text text-center\">\n");
      out.write("                <p class=\"mb-5 pl-4 line\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                <p class=\"name\">Garreth Smith</p>\n");
      out.write("                <span class=\"position\">System Analyst</span>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section ftco-partner\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("                <div class=\"col-sm ftco-animate\">\n");
      out.write("                        <a href=\"#\" class=\"partner\"><img src=\"images/partner-1.png\" class=\"img-fluid\" alt=\"Colorlib Template\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm ftco-animate\">\n");
      out.write("                        <a href=\"#\" class=\"partner\"><img src=\"images/partner-2.png\" class=\"img-fluid\" alt=\"Colorlib Template\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm ftco-animate\">\n");
      out.write("                        <a href=\"#\" class=\"partner\"><img src=\"images/partner-3.png\" class=\"img-fluid\" alt=\"Colorlib Template\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm ftco-animate\">\n");
      out.write("                        <a href=\"#\" class=\"partner\"><img src=\"images/partner-4.png\" class=\"img-fluid\" alt=\"Colorlib Template\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm ftco-animate\">\n");
      out.write("                        <a href=\"#\" class=\"partner\"><img src=\"images/partner-5.png\" class=\"img-fluid\" alt=\"Colorlib Template\"></a>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section ftco-no-pt ftco-no-pb py-5 bg-light\">\n");
      out.write("  <div class=\"container py-4\">\n");
      out.write("    <div class=\"row d-flex justify-content-center py-5\">\n");
      out.write("      <div class=\"col-md-6\">\n");
      out.write("            <h2 style=\"font-size: 22px;\" class=\"mb-0\">Subcribe to our Newsletter</h2>\n");
      out.write("            <span>Get e-mail updates about our latest shops and special offers</span>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-md-6 d-flex align-items-center\">\n");
      out.write("        <form action=\"#\" class=\"subscribe-form\">\n");
      out.write("          <div class=\"form-group d-flex\">\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"Enter email address\">\n");
      out.write("            <input type=\"submit\" value=\"Subscribe\" class=\"submit px-3\">\n");
      out.write("          </div>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/user/footer.jsp", out, false);
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("  <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/jquery-migrate-3.0.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/jquery.easing.1.3.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/jquery.waypoints.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/jquery.stellar.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/owl.carousel.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/jquery.magnific-popup.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/aos.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/jquery.animateNumber.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/bootstrap-datepicker.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/scrollax.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  \n");
      out.write("  <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\n");
      out.write("  <script src=\"js/google-map.js\" type=\"text/javascript\"></script>\n");
      out.write("  <script src=\"js/main.js\" type=\"text/javascript\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
