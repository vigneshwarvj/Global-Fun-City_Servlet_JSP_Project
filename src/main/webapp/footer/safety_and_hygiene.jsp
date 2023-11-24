<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>Safety and Hygiene - Global Fun City</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath() %>/assets/images/favicon.png">

        <title>Safety and Hygiene - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/footer other pages css/safetyofvisitors.css">

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
            <div class="safety-of-visitors">
                <h1>Safety of Visitors</h1>
            </div>

            <div class="instructions">
                <p>The safety and hygiene of visitors are of prime importance to us at Global Fun City.
                    Stringent adherence to international safety norms at Global Fun City provides an absolutely safe environment 
                    for you and your family. Our safety regiment includes:</p>
            </div>
            <div class="instructions-for-peoples">     
                <ul>
                    <li>Daily safety check on rides</li>
                    <li>Safety harness for rides</li>
                    <li>Attendants with 2-way radios all over the park</li>
                    <li>Lifeguards/Security on duty at rides</li>
                    <li>Lightning arrester to protect against lightning hazards</li>
                    <li>Fire extinguishers at every nook and corner of the park</li>
                    <li>CCTV surveillance throughout the park</li>
                    <li>Public address system to flash emergency warnings if needed</li>
                    <li>Fully Equipped first aid facility with professional nurses</li>
                    <li>Alcoholic drinks are not permitted inside the park. Intoxicated persons are not allowed to enter the park.</li>
                    <li>All persons, bags, luggage and parcels and any other items are subject to the security check at the point of entry to the park and at such other locations inside the park as we consider appropriate</li>
                    <li>Proper clothes must be worn at all times while visiting the park</li>
                    <li>Dress like Sarees, Dupatta, Formal Pants, Shirts, Jeans, Burkha/Pardhas, Denim (Jeans, Three fourth Jeans) School Uniforms & Indecent attires are not allowed in Water Rides/Pools.</li>
                    <li>Since many rides inside the park are adventurous in nature, guests are advised to follow the safety instructions of lifeguards, ride operators and displayed instructions near rides for safe riding. Management will not be responsible for any injury/accident due to the negligence of guests</li>
                    <li>Pools are shallow. Do not dive into pools</li>
                    <li>Pregnant women, heart patients, persons with high blood pressure and those prone to epilepsy are advised to avoid fast/adventurous rides</li>
                    <li>Parents are advised to pay special attention to their children. Children should be accompanied by adults</li>
                    <li>There are certain height restrictions on some rides. Children below the stipulated height are not permitted on those rides</li>
                </ul>
            </div>   

            <div class="general-tips">
                <h2>General Tips</h2>
                <ul>
                    <li>Wear comfortable clothing and shoes</li>
                    <li>Don't wear a scarf/ shawl while going for a ride</li>
                    <li>Parents are advised to pay special attention to the children. Children should be accompanied by adults at all time.</li>
                </ul>
            </div>

            <div class="water-quality">
                <h2>Water Quality</h2>
                <p>When it comes to water, Global Fun City is the only park in USA to use Reverse Osmosis Treatment Technology for treating water in pools. 
                    The park has a fully-fledged water quality control laboratory that carries out rigorous tests on a regular basis.</p>
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