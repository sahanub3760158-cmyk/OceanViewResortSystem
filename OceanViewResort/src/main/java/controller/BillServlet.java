package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import util.DBConnection;

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {

            int reservationId = Integer.parseInt(request.getParameter("reservationId"));

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM reservations WHERE reservation_id=?");

            ps.setInt(1, reservationId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                String roomType = rs.getString("room_type");
                int nights = rs.getInt("nights");

                int rate = 0;

                if (roomType.equals("Standard")) {
                    rate = 5000;
                } else if (roomType.equals("Deluxe")) {
                    rate = 8000;
                } else if (roomType.equals("Suite")) {
                    rate = 12000;
                }

                int total = rate * nights;

                out.println("<h2>Bill Details</h2>");
                out.println("Room Type: " + roomType + "<br>");
                out.println("Nights: " + nights + "<br>");
                out.println("Rate per Night: " + rate + "<br>");
                out.println("<h3>Total Amount: " + total + "</h3>");

            } else {
                out.println("<h3>Reservation Not Found!</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}