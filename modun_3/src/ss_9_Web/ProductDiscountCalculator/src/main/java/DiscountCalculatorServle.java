import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet", urlPatterns = "/convert")
public class DiscountCalculatorServle extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double listPrice = Double.parseDouble(req.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(req.getParameter("discountPercent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice + discountAmount;
        req.setAttribute("discountAmount", discountAmount);
        req.setAttribute("discountPrice", discountPrice);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}

