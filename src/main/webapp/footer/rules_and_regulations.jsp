<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title>Rules and Regulations - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/footer other pages css/rulesandregulations.css">

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
                <h1>Rules and Regulations</h1>
            </div>

            <div class="instructions">
                <p>
                    Dear Guests, <br>

                    We try to offer a comfortable, safe and most memorable experience to all our guests. You have to follow the following measures to have wonderful experience at our park.</p>
            </div>

            <div class="instructions-for-people">
                <ul>
                    <li>Entry is restricted to one person per ticket, which is valid only for a date and specified time.</li>
                    <li>Tickets are non-transferable and non-refundable.</li>
                    <li>Foods from outside and alcoholic drinks are not allowed inside park. Intoxicated persons are not allowed to enter the park.</li>
                    <li>All persons, bags luggage and parcels and any other items is subject to security check at the point of entry to the park and at such other locations inside the park as we consider appropriate.</li>
                    <li>Please show common courtesy to fellow park guests and our service staff. Do not use any foul language and engage in unsafe and offensive behavior.</li>
                    <li>Please maintain discipline in ride queue area. Members of the group are not allowed to join those already in queue.</li>
                    <li>Proper clothes must be worn all the times while visiting the park.</li>
                    <li>For your enjoyment, and in the interest of hygiene and safety, a dress code is enforced in the park.</li>
                    <li>Always wear Polyester or Nylon costumes (t-shirts, shorts, bermudas, three-fourths, or swim suits) while enjoying the Water Rides. </li>
                    <li>Since many rides inside the park are adventurous in nature, guests are advised to follow safety instructions of lifeguards, ride operators and displayed instructions near rides for safe riding. Management will not be responsible for any injury/accident due to negligence of Guests.</li>
                    <li>Pools are shallow. Do not dive into pools.</li>
                    <li>Pregnant Women, heart patients, persons with high blood pressure and those prone to epilepsy are advised to avoid fast/adventurous rides.</li>
                    <li>Parents are advised to pay special attention to their Children. Children should be accompanied by adults.</li>
                    <li>There are certain height and weight restrictions in some rides for safety reasons.</li>
                    <li>Guests below stipulated height and guests above certain weights are not permitted in some rides.</li>
                    <li>Guests may have to leave the park even before closing time if the situation warrants.</li>
                    <li>The management reserves the right to close any ride at any time for safety/technical reasons without prior notice.</li>
                    <li>The management has the right to cancel l the ticket and remove any person from the park premises, if misbehaviour or violation of park rules is reported from his/her part.</li>
                    <li>Pet animals are not allowed inside the park.</li>
                </ul>
            </div>

            <div class="instructions">
                <p>Following activities are not allowed without prior approval from the management:</p>
            </div>

            <div class="instructions-for-people">
                <ul>
                    <li>Sale of goods or services or the display of goods or services for sale.</li>
                    <li>Distribution of printed materials of any kind.</li>
                    <li>Brand promotion, unauthorized events.</li>
                    <li>Display of banner or any other printed materials</li>
                    <li>Photography, videotaping, recording of any kind for commercial purposes.</li>
                    <li>Management will not be responsible for the loss of any of your personal belongings</li>
                </ul>
            </div>

            <div class="instructions">
                <p>We may photograph, film, videotape, record or otherwise reproduce the image and/or voice of any person who enters the park and use the same for any purpose without payment to any person</p>
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