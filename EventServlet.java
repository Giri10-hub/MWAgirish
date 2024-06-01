package com.example.event;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/xml");
        response.setCharacterEncoding("UTF-8");
        
        String xmlResponse = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><schedule>"
                + "<event><title>Opening Ceremony</title><time>10:00 AM</time><description>The event will start with an opening ceremony.</description></event>"
                + "<event><title>Guest Lecture</title><time>11:00 AM</time><description>A lecture by our esteemed guest speaker.</description></event>"
                + "<event><title>Lunch Break</title><time>1:00 PM</time><description>Enjoy a variety of delicious foods.</description></event>"
                + "<event><title>Student Presentations</title><time>2:00 PM</time><description>Presentations by our talented students.</description></event>"
                + "<event><title>Closing Ceremony</title><time>4:00 PM</time><description>Closing remarks and thank you note.</description></event>"
                + "</schedule>";

        response.getWriter().write(xmlResponse);
    }
}
