<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath() %>/assets/images/favicon.png">
        <title> Shop - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/shop.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

</head>
<body>

<div class="shipping">
            <p>Free Shipping on orders of $99 or more! Code: SHIPGLOBAL</p>
        </div>

        <!-- div for shop logo & others -->
        <div class="header-navbar">

            <div class="icons-info">
                <a href="<%=request.getContextPath() %>/index">
                    <i class="fa-sharp fa-solid fa-house"></i> &nbsp; Back to Home 
                </a> &nbsp;
                <a href="<%=request.getContextPath() %>/contact">
                    <i class="fa-solid fa-phone"></i> &nbsp; Contact 
                </a> 
                <a href="">
                    <i class="fa-brands fa-cc-visa"></i> &nbsp; Global Visa Card 
                </a>
            </div>	

            <div class="logo-global">
                <a href="">
                    <img src="<%=request.getContextPath() %>/assets/images/global-shop-logo.png" width="210" alt="global-shop-logo">
                </a>
            </div>

            <div class="icons-info" id="sign-in">

     <a href="<%=request.getContextPath()%>/login"> <i class="fa-solid fa-user"></i> &nbsp; Sign In | Sign Up </a> &nbsp;
	<a href="<%=request.getContextPath()%>/wishlist"> <i class="fa-solid fa-heart"></i> &nbsp; My Wishlist (0)</a> &nbsp;
	<a href="<%=request.getContextPath()%>/bag"> <i class="fa-solid fa-bag-shopping"></i> &nbsp; My Bag (0)</a>
            </div>
        </div>

        <div class="words">
            <h1>
                <span class="shop-span">Shop. </span>
                The best way to buy the  <h2 class="h2-love">products  you love.</h2>
            </h1>
        </div>

        <!-- div for next products items in navbar -->
 
        <div class="wrapper">
            <nav>
                <ul>
                    <li class="drop-down">
                        <a class="bottom-color" href="">CLOTHING</a>
                        <ul class="menu-area">
                            <ul>
                                <img src="../../assets/images/clothing.jpeg" width="250" alt="clothing-logo">
                            </ul>

                            <ul>
                                <h4>Women</h4>
                                <li>
                                    <a href="../../pages/shop/women.shop/jackets-&-sweaters,women.html">Jackets & Sweaters</a>
                                </li>
                                <li>
                                    <a href="">Sleepwear & Loungewear</a>
                                </li>
                                <li>
                                    <a href="">Shorts & Pants</a>
                                </li>
                                <li>
                                    <a href="">T-Shirt & Top</a>
                                </li>
                            </ul>

                            <ul>
                                <h4>Men</h4>
                                <li>
                                    <a href="">Dresses & Skrits</a>
                                </li>
                                <li>
                                    <a href="">Jerseys</a>
                                </li>
                                <li>
                                    <a href="">Jackets & Sweaters</a>
                                </li>
                                <li>
                                    <a href="">Sleepwear & Loungewear</a>
                                </li>
                                <li>
                                    <a href="">Shorts & Pants</a>
                                </li>
                                <li>
                                    <a href="">T-Shirt & Top</a>
                                </li>
                            </ul> 

                            <ul>
                                <h4>Girls</h4>
                                <li>
                                    <a href="">Baby Girl</a>
                                </li>
                                <li>
                                    <a href="">Dresses</a>
                                </li>
                                <li>
                                    <a href="">Jackets & Sweaters</a>
                                </li>
                                <li>
                                    <a href="">T-Shirts & Tops</a>
                                </li>
                            </ul>

                            <ul>
                                <h4>Boys</h4>
                                <li>
                                    <a href="">Baby Boys</a>
                                </li>
                                <li>
                                    <a href="">Dresses</a>
                                </li>
                                <li>
                                    <a href="">Jackets & Sweaters</a>
                                </li>
                                <li>
                                    <a href="">T-Shirts & Tops</a>
                                </li>
                            </ul>
                        </ul>
                    </li>

                    <li class="drop-down">
                        <a class="bottom-color" href="">ACCESSORIES</a>
                        <ul class="menu-area">
                            <ul>
                                <img src="../../assets/images/nt_winter-refresh_20221226_.jpg" width="250" alt="clothing-logo">
                            </ul>

                            <ul>
                                <h4>Adults</h4>
                                <li>
                                    <a href="">Backpacks</a>
                                </li>
                                <li>
                                    <a href="">Bags & Wallets</a>
                                </li>
                                <li>
                                    <a href="">Hats</a>
                                </li>
                                <li>
                                    <a href="">Jewellery & Watches</a>
                                </li>
                                <li>
                                    <a href="">Luggage & Travel</a>
                                </li>
                                <li>
                                    <a href="">Shoe & Shocks</a>
                                </li>
                            </ul>

                            <ul>
                                <h4>Kids</h4>
                                <li>
                                    <a href="">Backpacks & Lunch boxes</a>
                                </li>
                                <li>
                                    <a href="">Bags & Wallets</a>
                                </li>
                                <li>
                                    <a href="">Hats</a>
                                </li>
                                <li>
                                    <a href="">Jewellery & Watches</a>
                                </li>
                                <li>
                                    <a href="">Luggage & Travel</a>
                                </li>
                                <li>
                                    <a href="">Shoe & Shocks</a>
                                </li>
                            </ul>
                        </ul>
                    </li>	 

                    <li class="drop-down">
                        <a class="bottom-color" href="">HOME</a>
                        <ul class="menu-area">
                            <ul>
                                <img src="../../assets/images/nt_winter-refresh_20221226_.jpg" width="250" alt="clothing-logo">
                            </ul>
	
                            <ul>
                                <h4>Table Top</h4>
                                <li>
                                    <a href="">Drinkware & Mugs</a>
                                </li>
                                <li>
                                    <a href="">Dinnerware</a>
                                </li>
                            </ul>
	
                            <ul>
                                <h4>Home Decor</h4>
                                <li>
                                    <a href="">Home Accents</a>
                                </li>
                                <li>
                                    <a href="">Photo Frame</a>
                                </li>
                            </ul>

                            <ul>
                                <h4>Bed & Bath</h4>
                                <li>
                                    <a href="">Beddings</a>
                                </li>
                                <li>
                                    <a href="">Towels</a>
                                </li>
                            </ul>

                            <ul>
                                <h4>Sports</h4>
                                <li>
                                    <a href="">Outdoor Games</a>
                                </li>
                                <li>
                                    <a href="">Indoor Games (Coming Soon)</a>
                                </li>
                            </ul>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <!-- completed dropdown -->

        <div class="image-for-shopping">
            <img src="<%=request.getContextPath() %>/assets/images/Ecommerce web page-pana.png" width="700" alt="image-for-shop">
        </div>

        <div class="circle">
            <div class="circle-all">
                <h2>Clothing</h2>
                <a href="../../pages/shop/clothing.html">Shop Now </a>
            </div>

            <div class="circle-all">
                <h2>Accessories</h2>
                <a href="../../pages/shop/accessories.html">Shop Now</a>
            </div>

            <div class="circle-all">
                <h2>Home</h2>
                <a href="../../pages/shop/home.html">Shop Now</a>
            </div>
        </div>

        <div class="trending">
            <h2>Trending T-Shirts and Hats</h2>
        </div>

        <div class="images-of-person">
            <img src="<%=request.getContextPath() %>/assets/images/images_in_shop_index/young-arab-man-wearing-casual-white-t-shirt-clueless-confused-expression-arms-hands-raised-young-arab-man-wearing-226904804-transformed.jpg" width="" alt="t-shirt">
            <img src="<%=request.getContextPath() %>/assets/images/images_in_shop_index/Mens_caps.jpg" width="" alt="hat">
        </div>

        <div class="trending">
            <h2>Carry With Good Things</h2>
        </div>

        <div class="images-of-persons">
            <img src="<%=request.getContextPath() %>/assets/images/images_in_shop_index/51CCGIrfM4L (1).jpg" alt="school-bag">
            <img src="<%=request.getContextPath() %>/assets/images/images_in_shop_index/Away The Bigger Carry-On with Pocket (1).jpg" alt="suit-case">
            <img src="<%=request.getContextPath() %>/assets/images/images_in_shop_index/DailyObjects-Blue-Swing-Duffle-Bag (1).jpg" alt="luggage">
        </div>

        <div class="trending">
            <h2>Shop the Latest</h2>
        </div>

        <div class="circle-2">
            <div class="circle-all-2">
                <h2>Clothing</h2>
                <a href="../../pages/shop/clothing.html">Shop Now </a>
            </div>

            <div class="circle-all-2">
                <h2>Accessories</h2>
                <a href="../../pages/shop/accessories.html">Shop Now</a>
            </div>

            <div class="circle-all-2">
                <h2>Home</h2>
                <a href="#">Shop Now</a>
            </div>
        </div>

        <div class="brands-logos">
            <div class="brands">
                <h1> We Work With Best Brands</h1>
            </div>

            <div class="img-of-brands">
                <img src="https://s3.amazonaws.com/zaubatrademarks/5d92fe74-822a-47d4-acb5-4afe11e07084.png" width="190px" height="50px" alt="allen-solly">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Calvin_klein_logo_old.svg/1280px-Calvin_klein_logo_old.svg.png" width="210px" height="40px" alt="calvin-kelvis">
                <img src="https://technovationchallenge.org/wp-content/uploads/2018/12/nike-logo.png" width="170px" height="50px" alt="nike">
                <img src="https://play-lh.googleusercontent.com/UUC6leIkc-nbaCGXHe8eXAj18Rs2TvzEuLVMRPLplcVhDKyTbq87z_BGpJv8Y7FwDuI=w1024-h500" width="180px" height="70px" alt="otto">
            </div>
        </div>

        <!-- faq started -->
        <div class="background">
            <section class="main-faq">
                <h2 class="title">FAQs</h2>
                <div class="faq">
                    <div class="question">
                        <h3>What forms of payment do you accept?</h3>
                        <i class="fa-solid fa-plus"></i>
                    </div>
	
                    <div class="answer">
                        <p>We accept ALL major credit cards, PayPal, and Apple Pay.
                            All payments are securely processed with 128-bit encryption</p>
                    </div>
                </div>
                <hr>
                <!-- 2nd question -->
		
                <div class="faq">
                    <div class="question">
                        <h3>What if I receive a damaged or defective product?</h3>
                        <i class="fa-solid fa-plus"></i>
                    </div>
	
                    <div class="answer">
                        <p>If you receive a damaged or defective product, please contact us immediately and we will arrange for a replacement.</p>
                    </div>
                </div>
                <hr>
                <!-- 3rd question -->
                <div class="faq">
                    <div class="question">
                        <h3>Can I change or cancel my order?</h3>
                        <i class="fa-solid fa-plus"></i>
                    </div>
	
                    <div class="answer">
                        <p>Sure! You can cancel, or change your order within 24 hours of confirmation. Please contact us with your name and order number at:  info@globalshop.com.
                            After 24 hours, your order will have been processed and we won’t be able to make any changes or cancel it.</p>
                    </div>
                </div>
                <hr>
                <!-- 4th question -->
                <div class="faq">
                    <div class="question">
                        <h3>How do I know if my order has been processed?</h3>
                        <i class="fa-solid fa-plus"></i>
                    </div>
	
                    <div class="answer">
                        <p>You will receive a confirmation email once your order has been processed. You can also check the status of your order on our website.</p>
                    </div>
                </div>
                <hr>

            </section>
        </div>
        <!-- faq completed -->

        <footer class="footer_for_shopglobal">
            <div class="total_div_for_footer">
            <div class="logo">
                <img src="<%=request.getContextPath() %>/assets/images/globalfuncitylogo.png" class="footer-logo" alt="logo">
            </div>

            <div class="shop-footer-main">
                <div class="navbar-footer">
                    <ul>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/about"> ABOUT US </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/events"> EVENTS  </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/offers"> OFFERS  </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/ticketprices"> TICKET  PRICES </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/globalshop"> SHOP </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/attractions"> ATTRACTIONS </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="<%=request.getContextPath()%>/contact"> CONTACT  </a> 
                        </li>
                    </ul>

                </div>

                <div class="shop-footer">
                    <ul>
                        <li>
                            <a href="">ABOUT SHOPGLOBAL</a>
                        </li>
                        <li>
                            <a href="">ORDER TRACKING</a>
                        </li>
                        <li>
                            <a href="">GUEST SERVICES</a>
                        </li>
                        <li>
                            <a href="">ACCOUNT INFO</a>
                        </li>
                        <li>
                            <a href="">AFFILICATE PROGRAM</a>
                        </li>
                    </ul>
                </div>

                <div class="other-navbar-footer">
                    <ul>
                        <li>
                            <a class="other-navigation-link" href="<%=request.getContextPath()%>/privacy-policy">PRIVACY POLICY</a>
                        </li>
                        <li>
                            <a class="other-navigation-link" href="<%=request.getContextPath()%>/careers">CAREERS</a>
                        </li>
                        <li>
                            <a class="other-navigation-link" href="<%=request.getContextPath()%>/safety-and-hygiene">SAFETY AND HYGIENE</a>
                        </li>
                        <li>
                            <a class="other-navigation-link" href="<%=request.getContextPath()%>/rules-and-regulations">RULES & REGULTIONS</a>
                        </li>
                        <li>
                            <a class="other-navigation-link" href="<%=request.getContextPath()%>/green-initiatives">GREEN INITIATIVES</a>
                        </li>
                        <li>
                            <a class="other-navigation-link" href="<%=request.getContextPath()%>/csr-initivatives">CSR INITIATIVES</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="social-medias">
                <div class="facebook">
                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                </div>

                <div class="twitter">
                    <a href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                </div>

                <div class="pinterest">
                    <a href="#">
                        <i class="fab fa-pinterest"></i>
                    </a>
                </div>
	
                <div class="instagram">
                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>

                <div class="youtube">
                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
	    
            </div>
            <hr class="footer-hr">
            <div class="copyright">
                <p>Global Fun City &#169; 2022. All rights Reserved.
                    <br>Site designed by Vignesh.in
                </p>
            </div>
            </div>
        </footer>

<script>
// faq started
const faqs = document.querySelectorAll(".faq");

faqs.forEach((faq) => {
  faq.addEventListener("click", () => {
    faq.classList.toggle("active");
  });
});
// faq closed

</script>

</body>
</html>



</body>
</html>