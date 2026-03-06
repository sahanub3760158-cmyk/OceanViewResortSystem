package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import util.DBConnection;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int reservationId = Integer.parseInt(request.getParameter("reservationId"));
            String guestName = request.getParameter("guestName");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            String roomType = request.getParameter("roomType");
            int nights = Integer.parseInt(request.getParameter("nights"));

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO reservations VALUES (?, ?, ?, ?, ?, ?)");

            ps.setInt(1, reservationId);
            ps.setString(2, guestName);
            ps.setString(3, address);
            ps.setString(4, contact);
            ps.setString(5, roomType);
            ps.setInt(6, nights);

            ps.executeUpdate();

            response.sendRedirect("dashboard.jsp?status=success");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("dashboard.jsp?status=error");
        }
    }
}