<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title>Green Initiatives - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/footer other pages css/greeninitiatives.css">

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
    
            <div class="privacy">
                <h1>Green Initiatives &#127809;</h1>
            </div>

            <div class="privacy-2">
                <h3>Environmental & Occupational Health</h3>
            </div>

            <div class="instructions">
                <p>Global Fun City is dedicated to protect and conserve the Environment by optimizing our processes and operating in an environmentally friendly manner. We also incorporate Occupational Health and Safety consideration in our operations. We continually strive to:</p>
            </div>

            <div class="instructions-for-people">
                <ul>
                    <li>Comply with the relevant legal and other statutory requirements.</li>
                    <li>Prevent injury and ill health to employees & visitors by minimizing hazards & risks associated with the activities and continuously improve Occupational Health and Safety performance.</li>
                    <li>Conserve natural resources and energy through minimizing consumption and wastage.</li>
                    <li>Minimize process waste, promote recovery, reuse and recycling of materials and develop eco-friendly waste disposal practices and continuous improvement in Environmental performance.</li>
                    <li>Provide Environmental and Occupational Health and Safety training and awareness to the workforce, suppliers and sub-contractors.</li>
                    <li>This policy has been communicated to all employees of Global Fun City and is made available to the public and interested parties on request.</li>
                </ul>
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