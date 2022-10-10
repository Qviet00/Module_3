package controller;

import model.employee.Employee;
import service.employee.IEmployeeService;
import service.employee.Impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IEmployeeService iEmployeeService = new EmployeeService();
    private  EmployeeService employeeService= new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showNewEmployee(request, response);
                break;
            case "edit":
                showEditEmployee(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            case "search":
                searchEmployee(request, response);
                break;
            default:
                selectAllEmployee(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                newEmloyee(request, response);
                break;
            case "edit":
                editEmloyee(request, response);
                break;
            default:
                selectAllEmployee(request, response);
        }
    }

    private void selectAllEmployee(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> listEmployee =iEmployeeService.selectAll();
        request.setAttribute("listEmployee", listEmployee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/employee/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
    private void editEmloyee(HttpServletRequest request, HttpServletResponse response) {

    }

    private void newEmloyee(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showNewEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showEditEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

    private void searchEmployee(HttpServletRequest request, HttpServletResponse response) {
    }

}
