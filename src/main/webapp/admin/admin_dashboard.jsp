<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard | Global Fun City</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}

.warning {
    display: none;
}

section {
    display: flex;
}

.navbar {
    width: 250px;
    padding: 1rem;
    position: relative;
    height: 100vh;
    overflow: hidden;
    transition: all 0.3s;
    box-shadow: 10px 10px 10px rgba(227, 215, 215, 0.434);
}

.navbar.active {
    width: 0px;
    padding: 0;
}

.navbar img {
    margin-left: 10px;
    width: 150px;
    margin-bottom: 20px;
}

.center-nav,
.bottom-nav {
    list-style: none;
}

.center-nav a,
.bottom-nav a {
    color: #000;
    text-decoration: none;
    margin-left: 5px;
}

.center-nav li,
.bottom-nav li {
    padding: 5px 20px;
    margin: 5px 0;
    transition: all 0.3s;
}

.center-nav li:hover,
.bottom-nav li:hover {
    color: purple;
    transform: translateX(4px);
}

.bottom-nav li a:hover , .center-nav li a:hover {    
    color: purple;
}

hr {
    margin-left: 20px;
    height: 1.5px;
    display: block;
    margin-bottom: 5px;
    width: 150px;
    background-color: #2f2c2c1d;
    outline: none;
    border: none;
}

.bottom-nav {
    position: absolute;
    bottom: 30px;
}


/* ======= Main Content Styling ======= */
.bars {
    cursor: pointer;
}

.main-content {
    padding: 10px;
    width: 100%;
}

.main-top {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px;
    margin: 10px 0;
}

.bar {
    margin: 3px 0;
    width: 20px;
    height: 4px;
    border-radius: 4px;
    background-color: #000;
}

.input {
    width: 100%;
    text-align: center;
}

.input input {
    width: 90%;
    outline: none;
    border: none;
    border: 1px solid rgb(153, 132, 132);
    padding: 10px;
    border-radius: 10px;
}

.user {
    width: 40px;
    position: relative;
    /* transform: scaleX(-1); */
}

.user img {
    width: 100%;
}

/* ======== Styling Dashboard ======== */
.dashboard {
    padding: 10px;
}

.heading {
    margin: 10px 0;
}

.color-box {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.box {
    display: flex;
    height: 120px;
    flex-direction: column;
    width: 180px;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
    margin: 10px 5px;
}

.box i {
    font-size: 1.3rem;
    margin-bottom: 5px;
    color: #000000;
}




.box p {
    line-height: 30px;
}

.skyblue {
    background-color: rgb(135, 220, 253);
}

.yellow {
    background-color: rgb(231, 251, 151);
}

.purple {
    background-color: rgb(243, 178, 255);
}

.red {
    background-color: rgb(255, 178, 178);
}

/* ======== Styling Recent Activity ======== */
.activity {
    padding: 10px;
    margin: 10px 0;
}

.activity table {
    width: 100%;
}

tr {
    row-gap: 0px;
}

th {
    line-height: 40px;
    text-align: left;
}

td {
    line-height: 28px;
}

td,
th {
    margin: 0;
}

@media screen and (max-width:630px) {
    section {
        display: none;
    }

    .warning {
        padding: 5rem;
        text-align: center;
        line-height: 35px;
        background-color: rgb(185, 72, 72);
        display: flex;
        color: #e1cdcd;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100vh;
    }
}
</style>

</head>
<body>

<section>
            <!-- User Sidebar Starts from Here -->
            <div class="navbar" id="navigation">
                <img src="https://iili.io/Hg4SOmB.png" alt="img_logo">
                <ul class="center-nav">
                    <li>
                        <i class="fa-solid fa-house"></i>
                        <a href="#"> Dashboard </a>
                    </li>
                    <li>
                        <i class="fa-solid fa-copy"></i>
                        <a href="dashboard/create_room">Create Room</a>
                    </li>
                    <li>
                        <i class="fa-sharp fa-solid fa-chart-simple"></i>
                        <a href="dashboard/rooms_list">List Of Rooms </a>
                    </li>
                    <li>
                        <i class="fa-solid fa-thumbs-up"></i>
                        <a href="dashboard/users_list">List Of Users </a>
                    </li>
                </ul>
                <ul class="bottom-nav">
                    <hr>
                    <li>
                        <i class="fa-solid fa-gear"></i>
                        <a href="#"> Settings </a>
                    </li>
                    <li>
                        <i class="fa-solid fa-power-off"></i>
                        <a href="#"> Logout </a>
                    </li>
                </ul>
            </div>

            <!-- User Top Naviagation Starts from Here -->
            <div class="main-content">
                <div class="main-top">
                    <div class="bars" id="menu">
                        <div class="bar"></div>
                        <div class="bar"></div>
                        <div class="bar"></div>
                    </div>
                    <div class="input">
                        <input type="text" placeholder="Search here...">
                    </div>
                    <div class="user">
                        <img src="../../../assets/images/Director.jpg" alt="">
                    </div>
                </div>

                <!-- User Dashboard Starts from Here -->
                <div class="welcome" style="padding: 10px;">
                    <h2 class="welcome_admin" style="margin: 10px 0;">Welcome, Vicky.</h2>
                </div>
                <br>
                <div class="dashboard">
                    <h2 class="heading"> Dashboard </h2>
                    <div class="color-box">
                        <div class="box skyblue">
                            <p>
                                <i class="fa-solid fa-thumbs-up"></i> 
                            </p>
                            <p> Total Likes </p>
                            <h3> 50,120 </h3>
                        </div>
                        <div class="box yellow">
                            <p>
                                <i class="fa-solid fa-comment"></i>
                            </p>
                            <p> Total Comments </p>
                            <h3> 25,120 </h3>
                        </div>
                        <div class="box purple">
                            <p>
                                <i class="fa-solid fa-share"></i> 
                            </p>
                            <p> Total Share </p>
                            <h3> 10,320 </h3>
                        </div>
                        <div class="box red">
                            <p>
                                <i class="fa-sharp fa-solid fa-floppy-disk"></i> 
                            </p>
                            <p> Total Saves </p>
                            <h3> 20,129 </h3>
                        </div>
                    </div>
                </div>

                <!-- User Activity Starts from Here -->
                <div class="activity">
                    <h2 class="heading"> Recent Activity </h2>
                   <!-- <div class="activities">
                        <table>
                            <thead>
                                <tr>
                                    <th> Name </th>
                                    <th> Email </th>
                                    <th> Joined </th>
                                    <th> Type </th>
                                    <th> Status </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td> Raju </td>
                                    <td> contact.geekshelp@gmail.com </td>
                                    <td> 01-12-2020 </td>
                                    <td> Member </td>
                                    <td> Active </td>
                                </tr>
                                <tr>
                                    <td> Jassi </td>
                                    <td> jassisheoran@gmail.com </td>
                                    <td> 03-01-2022 </td>
                                    <td> New </td>
                                    <td> Active </td>
                                </tr>
                                <tr>
                                    <td> John Doe </td>
                                    <td> johndoe@gmail.com </td>
                                    <td> 22-10-2020 </td>
                                    <td> New </td>
                                    <td> Active </td>
                                </tr>
                                <tr>
                                    <td> Franda </td>
                                    <td> frand.geekshelp@gmail.com </td>
                                    <td> 22-12-2020 </td>
                                    <td> Member </td>
                                    <td> Active </td>
                                </tr>
                                <tr>
                                    <td> Raj </td>
                                    <td> testmain@gmail.com </td>
                                    <td> 20-12-2019 </td>
                                    <td> New </td>
                                    <td> Active </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> -->
                </div>
            </div>
        </section>

    </body>

    <script>
    const hamburger = document.getElementById("menu");
    const navigation = document.getElementById("navigation");
    hamburger.addEventListener("click", function () {
      navigation.classList.toggle("active");
      console.log("clicked");
    });
</script>

</body>
</html>