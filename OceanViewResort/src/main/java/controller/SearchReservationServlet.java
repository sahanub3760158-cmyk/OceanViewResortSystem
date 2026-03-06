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

@WebServlet("/SearchReservationServlet")
public class SearchReservationServlet extends HttpServlet {

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

                out.println("<h2>Reservation Details</h2>");
                out.println("<table border='1'>");
                out.println("<tr><th>ID</th><th>Name</th><th>Address</th><th>Contact</th><th>Room</th><th>Nights</th></tr>");

                out.println("<tr>");
                out.println("<td>" + rs.getInt("reservation_id") + "</td>");
                out.println("<td>" + rs.getString("guest_name") + "</td>");
                out.println("<td>" + rs.getString("address") + "</td>");
                out.println("<td>" + rs.getString("contact") + "</td>");
                out.println("<td>" + rs.getString("room_type") + "</td>");
                out.println("<td>" + rs.getInt("nights") + "</td>");
                out.println("</tr>");

                out.println("</table>");

            } else {
                out.println("<h3>No Reservation Found!</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
} 