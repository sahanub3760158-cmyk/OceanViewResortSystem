<%@ page import="model.Reservation" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Reservation</title>

    <style>
        * {
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }

        .form-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            width: 100%;
            max-width: 650px; /* Increased width to accommodate the table cleanly */
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #1e3c72;
            margin-top: 0;
            margin-bottom: 25px;
            font-weight: 600;
        }

        .search-group {
            display: flex;
            gap: 10px;
            margin-bottom: 25px;
        }

        input {
            flex: 1;
            padding: 12px 15px;
            border-radius: 8px;
            border: 1px solid #cbd5e1;
            font-size: 15px;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #2a5298;
            outline: none;
            box-shadow: 0 0 0 3px rgba(42, 82, 152, 0.1);
        }

        .btn-primary {
            padding: 12px 24px;
            background: #ff9800;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 15px;
            font-weight: 600;
            transition: background 0.3s, transform 0.1s;
        }

        .btn-primary:hover {
            background: #e68900;
            transform: translateY(-1px);
        }

        .btn-back {
            display: inline-block;
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background: #f1f5f9;
            color: #475569;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            transition: background 0.3s;
            border: 1px solid #e2e8f0;
        }

        .btn-back:hover {
            background: #e2e8f0;
            color: #1e3c72;
        }

        /* --- Professional Table Styles --- */
        .table-container {
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            text-align: left;
        }

        th, td {
            padding: 14px 16px;
            border-bottom: 1px solid #e2e8f0;
        }

        th {
            background: #f8fafc;
            color: #475569;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        td {
            color: #334155;
            font-size: 15px;
        }

        tr:last-child td {
            border-bottom: none;
        }

        tr:hover td {
            background-color: #f1f5f9;
        }

        h3 {
            color: #1e3c72;
            margin-top: 30px;
            margin-bottom: 15px;
            font-size: 18px;
        }
        
        .divider {
            height: 1px;
            background-color: #e2e8f0;
            margin: 25px 0;
            width: 100%;
        }

    </style>
</head>

<body>

<div class="form-container">

    <h2>Search Reservation</h2>

    <form action="SearchReservationServlet" method="post" class="search-group">
        <input type="number" name="reservationId" placeholder="Enter Reservation ID" required>
        <button type="submit" class="btn-primary">Search</button>
    </form>

    <%
        Reservation r = (Reservation) request.getAttribute("reservation");
        if(r != null){
    %>
    
    <div class="divider"></div>
    <h3>Reservation Details</h3>

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Room</th>
                    <th>Nights</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= r.getReservationId() %></td>
                    <td><%= r.getGuestName() %></td>
                    <td><%= r.getAddress() %></td>
                    <td><%= r.getContact() %></td>
                    <td><%= r.getRoomType() %></td>
                    <td><%= r.getNights() %></td>
                </tr>
            </tbody>
        </table>
    </div>

    <%
        }
    %>

    <a href="dashboard.jsp" class="btn-back">Back to Dashboard</a>

</div>

</body>
</html>