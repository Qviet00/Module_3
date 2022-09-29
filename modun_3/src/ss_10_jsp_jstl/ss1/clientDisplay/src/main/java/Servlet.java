import model.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Servlet", value = "/client")
public class Servlet extends HttpServlet {
    private static List<Client> clients  = new ArrayList<>();
    static {
        clients.add(new Client("Nguyễn Thanh Hãi","12/12/1998","Đà nẵng","avatar-đẹp-chất.jpg"));
        clients.add(new Client("Nguyễn Hoàng Vinh","10/12/1998","Đà nẵng","avatar-đẹp-chất.jpg"));
        clients.add(new Client("Nguyễn Cu Lai","12/11/1998","Đà nẵng","avatar-đẹp-chất.jpg"));
        clients.add(new Client("Nguyễn Thế Sơn","12/6/1998","Đà nẵng","avatar-đẹp-chất.jpg"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/display.jsp");
        request.setAttribute("clients",clients);
        requestDispatcher.forward(request,response);
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

    }
}

