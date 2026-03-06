<html>
<head>
<title>Add Reservation</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #1e3c72, #2a5298);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background: white;
    padding: 30px;
    border-radius: 12px;
    width: 400px;
    box-shadow: 0px 8px 20px rgba(0,0,0,0.3);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #2a5298;
}

input, select {
    width: 100%;
    padding: 8px;
    margin: 6px 0 15px 0;
    border-radius: 6px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #ff9800;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background-color: #e68900;
    transform: scale(1.05);
}

.back-btn {
    margin-top: 10px;
    background-color: #2a5298;
}
</style>

</head>
<body>

<div class="form-container">

<h2>Add New Reservation</h2>

<form action="ReservationServlet" method="post">

<label>Reservation ID</label>
<input type="number" name="reservationId" required />

<label>Guest Name</label>
<input type="text" name="guestName" required />

<label>Address</label>
<input type="text" name="address" />

<label>Contact</label>
<input type="text" name="contact" />

<label>Room Type</label>
<select name="roomType">
<option value="Standard">Standard</option>
<option value="Deluxe">Deluxe</option>
<option value="Suite">Suite</option>
</select>

<label>Nights</label>
<input type="number" name="nights" required />

<button type="submit">Add Reservation</button>

</form>

<a href="dashboard.jsp">
<button class="back-btn">Back to Dashboard</button>
</a>

</div>

</body>
</html>