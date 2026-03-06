<html>
<head>
<title>Delete Reservation</title>

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
    width: 380px;
    box-shadow: 0px 8px 20px rgba(0,0,0,0.3);
    text-align: center;
}

h2 {
    color: #c62828;
    margin-bottom: 20px;
}

input {
    width: 100%;
    padding: 8px;
    margin: 10px 0 20px 0;
    border-radius: 6px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #c62828;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background-color: #b71c1c;
    transform: scale(1.05);
}

.back-btn {
    margin-top: 10px;
    background-color: #2a5298;
}

.back-btn:hover {
    background-color: #1e3c72;
}
</style>

</head>
<body>

<div class="form-container">

<h2>Delete Reservation</h2>

<form action="DeleteReservationServlet" method="post">
    <label>Enter Reservation ID</label>
    <input type="number" name="reservationId" required />
    <button type="submit">Delete Reservation</button>
</form>

<a href="dashboard.jsp">
    <button class="back-btn">Back to Dashboard</button>
</a>

</div>

</body>
</html>