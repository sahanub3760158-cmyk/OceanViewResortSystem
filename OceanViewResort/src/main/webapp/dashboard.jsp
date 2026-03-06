<%
if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
}
%>

<html>
<head>
<title>Ocean View Resort Dashboard</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #1e3c72, #2a5298);
    margin: 0;
    padding: 0;
    text-align: center;
    color: white;
}

.header {
    background: rgba(0,0,0,0.4);
    padding: 20px;
    font-size: 28px;
    font-weight: bold;
}

.container {
    margin-top: 60px;
}

button {
    padding: 12px 25px;
    margin: 10px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    background-color: #ff9800;
    color: white;
    transition: 0.3s;
}

button:hover {
    background-color: #e68900;
    transform: scale(1.05);
}
</style>
</head>

<body>

<div class="header">
    Welcome to Ocean View Resort Dashboard
</div>

<div class="container">

<button onclick="location.href='addReservation.jsp'">Add Reservation</button>
<button onclick="location.href='searchReservation.jsp'">Search Reservation</button>
<button onclick="location.href='deleteReservation.jsp'">Delete Reservation</button>
<button onclick="location.href='bill.jsp'">Generate Bill</button>
<button onclick="location.href='logout.jsp'">Logout</button>
<button onclick="location.href='help.jsp'">Help</button>

</div>

</body>
</html>