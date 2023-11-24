<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title> Contact - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/contact.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<header>

		<div class="header">
            <a href="<%=request.getContextPath()%>/index">
                <img src="<%=request.getContextPath()%>/assets/images/globalfuncitylogo.png" class="header-logo" width="200px" alt="logo">
            </a>
            <nav class="navbar">
                <ul>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/index">
                            <b>HOME</b>
                        </a>
                    </li>	
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/about">
                            <b>ABOUT</b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/events">
                            <b>EVENTS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/offers">
                            <b>OFFERS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/ticketprices">
                            <b>TICKET  PRICES </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/globalshop">
                            <b>SHOP</b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/attractions">
                            <b>ATTRACTIONS </b>
                        </a> 
                    </li>
                    <li>
                        <a class="active" href="<%=request.getContextPath()%>/contact">
                            <b>CONTACT </b> 
                        </a> 
                    </li>
                </ul>

            </nav>
            <div>
   				<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>
            </div>
        </div>
  </header>
        <div class="contact">
            <h2>Contact</h2>
        </div>

        <section class="content-of-address-form">
            <div class="contactdetails">
                <p> Contact Details </p>
                11113 W Baldwin RD, Monrovia, MD 21770, United States of America.

                info@globalfuncity.com
                <br>
                +1 860 817 10 80

            </div>

            <div class="gape">
                <div class="part1">
                    <form role="form" class="contact-admin" onsubmit="contactFormData(event)">
                        <i class="fa-solid fa-user">
                            <input class="input-field-for-contact" id="name" type="text" placeholder="Name" required pattern="[a-zA-Z]+"> 
                        </i> &nbsp;
                        <i class="fa-solid fa-phone">
                            <input class="input-field-for-contact" id="phone" type="tel" placeholder="Phone" required pattern="[0-9]{10}" minlength="10" maxlength="10"> 
                        </i>
	</div>
                        <div class="part2">
                            <i class="fa-solid fa-envelope">
                                <input class="input-field-for-contact" id="email" type="email" placeholder="Email Address" pattern="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" required>
                            </i> &nbsp; &nbsp;
                            <i class="fa-solid fa-info">
                                <input class="input-field-for-contact" id="subject" type="text" placeholder="Subject" required> 
                            </i>
                        </div>
                        <div class="part3">
                            <i class="fa-solid fa-pen">
                                <input class="input-field-for-contact" id="message" type="text" placeholder="How can I help you? Feel free to get in touch!" required> 
                            </i>
                        </div>
</div>

</section>

                        <button class="get-in-touch" id="getInTouchBtn" type="submit">
                            <i class="fa-regular fa-paper-plane"></i> &nbsp;Get in touch 
                        </button>
                    </form>

                    <!-- faq started -->
                    <div class="background">
                        <section class="main-faq">
                            <h2 class="title">FAQs</h2>
                            <div class="faq">
                                <div class="question">
                                    <h3>How to get access to the park with e-tickets?</h3>
                                    <i class="fa-solid fa-plus"></i>
                                </div>

                                <div class="answer">
                                    <p>Please show your e-ticket at the entry gate to enter the park. 
                                        Guests who have booked FasTrack tickets should collect the FasTrack bands from the helpdesk before entering the park.</p>
                                </div>
                            </div>
                            <hr>
                            <!-- 2nd question -->
	
                            <div class="faq">
                                <div class="question">
                                    <h3>Where to sleep there?</h3>
                                    <i class="fa-solid fa-plus"></i>
                                </div>

                                <div class="answer">
                                    <p>You can stay at a hostel or resort. In addition, there are berths in the hotels. We also have camping sites for guests.</p>
                                </div>
                            </div>
                            <hr>
                            <!-- 3rd question -->
                            <div class="faq">
                                <div class="question">
                                    <h3> Are there any food and drink options available in the amusement park?</h3>
                                    <i class="fa-solid fa-plus"></i>
                                </div>

                                <div class="answer">
                                    <p>Yes, We have a variety of food and drink options available. 
                                        Soft drinks, ice creams and bottled potable water are also available at all the food courts and scattered kiosks.</p>
                                </div>
                            </div>
                            <hr>
                            <!-- 4th question -->
                            <div class="faq">
                                <div class="question">
                                    <h3> Is there a dress code for the park?</h3>
                                    <i class="fa-solid fa-plus"></i>
                                </div>

                                <div class="answer">
                                    <p>We recommend wearing comfortable, weather-appropriate clothing and shoes.
                                        We do not allow clothing with offensive language or images.</p>
                                </div>
                            </div>
                            <hr>
                        </section>
                    </div>
                    <!-- faq completed -->

                    <div class="location">
                        <img src="<%=request.getContextPath()%>/assets/images/location.png" width="1485" height="550" alt="loaction_of_global_fun_city">
                    </div>	


<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>

    <script>
	//faq started
	const faqs = document.querySelectorAll(".faq");

	faqs.forEach((faq) => {
	  faq.addEventListener("click", () => {
	    faq.classList.toggle("active");
	  });
	});
	//faq claosed

	//contact form begins
	function contactFormData(event) {
  event.preventDefault();

  const nameInput = document.getElementById("name");
  const phoneInput = document.getElementById("phone");
  const emailInput = document.getElementById("email");
  const subjectInput = document.getElementById("subject");
  const messageInput = document.getElementById("message");

  // Validate form inputs
  if (
    !nameInput.checkValidity() ||
    !phoneInput.checkValidity() ||
    !emailInput.checkValidity() ||
    !subjectInput.checkValidity() ||
    !messageInput.checkValidity()
  ) {
    // alert("Please fill out all required fields.");
    return;
  }

  // Retrieve existing form data from localStorage
  const formData =
    JSON.parse(localStorage.getItem("contactFormDataFromUsers")) || [];

  // Add new form data to the array
  formData.push({
    name: nameInput.value,
    phone: phoneInput.value,
    email: emailInput.value,
    subject: subjectInput.value,
    message: messageInput.value,
  });

  // Save the updated form data back to localStorage
  localStorage.setItem("contactFormDataFromUsers", JSON.stringify(formData));

  // Reset the form
  document.querySelector("form").reset();

  alert("Thank you for getting in touch!");
}

document
  .querySelector(".contact-admin")
  .addEventListener("submit", contactFormData);
</script>

</body>
</html>