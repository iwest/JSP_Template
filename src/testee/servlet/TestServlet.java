package testee.servlet;

import testee.helper.AlertHelper;
import testee.helper.StringHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by iwest-win10 on 12/24/2015.
 */
public class TestServlet extends javax.servlet.http.HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/test.jsp";

        String message = request.getParameter("message");
        String type = request.getParameter("type");
        request.setAttribute("message", message);
        request.setAttribute("type", type);

        AlertHelper.addAlert(request, "This info callout always displays on this page.", AlertHelper.AlertType.INFO);

        if (!StringHelper.isNullOrWhitespace(message) &&
                !StringHelper.isNullOrWhitespace(type)) {
            AlertHelper.addAlert(request, message, type);
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}