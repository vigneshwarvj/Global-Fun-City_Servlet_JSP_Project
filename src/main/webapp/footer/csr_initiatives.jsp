<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title>CSR Initiatives - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/footer other pages css/csrinitiatives.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>

	<jsp:include page="../user/header.jsp"></jsp:include>
	
	<div class="background-color">
            <!--background-->

            <div class="csr">
                <h1>CSR Initiatives</h1>
            </div>    

            <div class="about-c">
                <p>In today's modern era, no company can survive without maintaining a healthy relationship with the society. Moreover, it is the duty of every business house to perform their role in nation building, which without the well being of society is not possible. Businesses make use of the resources of the society to earn their living, therefore, they are required to return enough to the society as well.</p>

                <p> We, as an entertainment provider, do understand this. Serving society is our priority. Apart from providing marvellous fun to our people, enhancing their physical and mental well being out of their busy schedules, we are also involved in volunteering in various cultural, social, and nature-oriented programmes to perform our part towards the society.
        
                </p>
            </div>

            <div class="about-photo">
                <div class="para">

                    <div class="btn-csr">
                        <a href="<%=request.getContextPath()%>/assets/document/CORPORATE-SOCIAL-RESPONSIBILITY.pdf" target="_blank">
                            <button>
                                <b>CSR Activities </b>
                            </button>
                        </a>
                    </div>	

                    <p>
                        <b>
                            <g> From the Director's Desk- </g> 
                        </b>
                        <br>
                        <br>
                        Global Fun City, one of the biggest amusement parks in the United States of America. <br>
                        <br>
                        As a director of one of the fastest growing industries in the entertainment industry in the United States, I recognise the significance of corporate social responsibility. I believe that business should operate in such a manner that it meets or exceeds the ethical, legal, commercial, and public expectations that society has towards us. We aim to resolve specific issues by supporting and improving the conditions of our employees, shareholders, communities, and environment. But we also believe that moral responsibility goes further, reflecting the need for corporations to address fundamental ethical issues such as inclusion, dignity, and equality. The business should not only be about money. It should be about responsibility towards human development. It should be about public good, not just private good. I would like to thank our longstanding guests for all their support and love, and I am also looking forward to welcoming our new guests. I hope we can make it a memorable experience for you and your family.
                        <br>
                        Last but not least, I would like to say,<g> Be the peace you wish to see in the world! </g>
                        <br>
                        <g>Thank you for your time.</g>
                    </p> 

                    <p>
                        <g>
                            Vignesh <br>
                            (Managing Director) <br>
                            Global Fun City Private Limited.
                        </g>
                    </p>
		
                </div>

                <div class="photo-of-director">
                    <img src="<%=request.getContextPath()%>/assets/images/Director.jpg" width="300" height="300" alt="director-logo">
                </div>

            </div>
        </div>
        
         <footer class="footer_for_gfc">
        
        </footer>
        
        <script>
    		var contextPath = '<%=request.getContextPath()%>';
		</script>
        
        <script src="<%=request.getContextPath()%>/js/footer.js"></script>

</body>
</html>