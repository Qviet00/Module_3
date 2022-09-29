import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/Calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("Số thứ nhất"));
        float secondOperand = Float.parseFloat(request.getParameter("Số thứ hai"));
        String operator = request.getParameter("operation");
        String result;

        switch (operator) {
            case "Addition":
                result = String.valueOf(firstOperand + secondOperand);
                break;
            case "Subtraction":
                result = String.valueOf(firstOperand - secondOperand);
                break;
            case "Multiplication":
                result = String.valueOf(firstOperand * secondOperand);
                break;
            default:
                if (secondOperand == 0) {
                    result = "Không thể chia cho 0";
                } else {
                    result = String.valueOf(firstOperand / secondOperand);
                }
                break;
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
        request.setAttribute("firstOperand",firstOperand);
        request.setAttribute("secondOperand",secondOperand);
        request.setAttribute("operator",operator);
        request.setAttribute("result",result);
        requestDispatcher.forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}