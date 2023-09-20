<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Room | Global Fun City</title>

<style>
body{
	margin:0;
}
.logo{
	text-align: center;
	box-shadow: 0 3px 6px 0 rgb(0 0 0 / 20%);
}
.background{
    background-color:  rgb(249, 249, 249);
    width: 300px;
    border: 2px solid rgb(231, 224, 224);
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
    padding: 50px 70px 50px 50px;
    border-radius: 10px;
    position: relative;
    top:60px ;
    left: 550px;
}
.products{
    font-family: 'league spartan', sans-serif;
    text-align: center;
}
.form-for-admin{
    width: 100%;
    display: flex;
    flex-direction: column;
}
.form-for-admin button{
    padding: 10px;
    color: white;
    background-color: #1c314d;
    border: none;
    width: 107%;
    font-family: 'poppins',sans-serif;
    cursor: pointer;
}
.form-for-admin input:focus{
    outline: none;
    border: 2.5px solid rgb(255, 23, 23);
}
.form-for-admin input:valid{
    border:2px solid green;
}
.input-field{
    font-family: 'poppins', sans-serif;
}
.products-details-from-admin input, .category-for-shop{
    padding: 10px;
    width: 100%;
    border: 2px solid #eee;
    border-radius: 3px;
}

</style>

</head>
<body>

<div class="logo">
            <img src="https://iili.io/Hg4SOmB.png" width="200" alt="logo">
        </div>
<section class="main-section" style="display: flex; justify-content: space-evenly;">
        <section class="background" style="left: 0px;">
            <div class="products">
                <h2>Add Room</h2>
            </div>

            <div class="products-details-from-admin">
                <form class="form-for-admin" action="create_room" method="post">

                    <label class="input-field">Image of room</label>
                    <br>
                    <input type="url" name="image_of_room" required>
                    <br>

                    <label class="input-field">Hotel Name</label>
                    <br>
                    <input type="text" name="hotel_name" pattern="[a-z A-Z]+" required>
                    <br>

                    <label class="input-field">Room name</label>
                    <br>
                    <input type="text" name="room_name" required>
                    <br>
                    
                    <label class="input-field">Room Price</label>
                    <br>
                    <input type="tel" name="room_price" pattern="[0-9$.]+" required>
                    <br>
            
            		<label class="input-field">No Of Beds</label>
            		<br>
            		<input type="number" name="no_of_beds" min="1" max="12" required>
            		<br>

                    <label class="input-field">Amenities</label>
                    <br>
                    <input type="text" name="amenities" pattern="[a-z A-Z ,]+">
                    <br>

                    &NonBreakingSpace;
                    <!-- button started -->
                    <button type="submit" id="save_details_hotel">Save</button>
                    &nbsp;
                    <button type="reset">Cancel</button>
                </form>
            </div>

        </section>

</body>
</html>