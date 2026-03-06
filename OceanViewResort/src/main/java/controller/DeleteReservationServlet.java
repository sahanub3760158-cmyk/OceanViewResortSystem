package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import util.DBConnection;

@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {

            int reservationId = Integer.parseInt(request.getParameter("reservationId"));

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM reservations WHERE reservation_id=?");

            ps.setInt(1, reservationId);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                out.println("<script>");
                out.println("alert('Reservation Deleted Successfully!');");
                out.println("location='dashboard.jsp';");
                out.println("</script>");
            } else {
                out.println("<script>");
                out.println("alert('Reservation Not Found!');");
                out.println("location='deleteReservation.jsp';");
                out.println("</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}