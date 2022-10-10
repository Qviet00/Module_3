package controller;

import model.House;
import model.RentType;
import service.IHouseService;
import service.IRentTypeService;
import service.ipml.HouseService;
import service.ipml.RentTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HouseServlet", urlPatterns = "/house")
public class HouseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IHouseService iHouseService = new HouseService();
    private HouseService houseService = new HouseService();
    private IRentTypeService iRentTypeService= new RentTypeService();
    private RentTypeService rentTypeService = new RentTypeService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                break;
            case "edit":
                break;
            case "delete":

                break;
            case "search":

                break;
            default:
                selectAllCustomer(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
//                newCustomer(request, response);
                break;
            case "edit":
//                editCustomer(request, response);
                break;
            default:
                selectAllCustomer(request, response);
        }
    }
    private void selectAllCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<House> listHose= iHouseService.selectAll();
        List<RentType> listRentType = iRentTypeService.seclectAll();
        request.setAttribute("listHouse",listHose);
        request.setAttribute("listRentType", listRentType);
        RequestDispatcher dispatcher =request.getRequestDispatcher("view/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }


}
