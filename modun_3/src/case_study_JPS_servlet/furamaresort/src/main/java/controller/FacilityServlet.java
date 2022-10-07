package controller;

import model.facility.Facility;
import model.facility.RentType;
import model.facility.TypeService;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FacilityServlet", value = "/viewFacility")
public class FacilityServlet extends HttpServlet {
    private static IFacilityService facilityService = new FacilityService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
         String action = request.getParameter("action");
         if (action == null){
           action = "";
         }
         switch (action){
             case "add":
                 showAdd(request,response);
                 break;
             case "display":
                 display(request,response);
                 break;
             case "delete":
                 deleteFac(request,response);
                 break;
             case "update":
                 showUpdate(request,response);
                 break;
             default:
                 showHome(request,response);
         }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "add":
                addFacility(request,response);
                break;
            case "update":
                updateFac(request,response);
                break;
            default:
                showHome(request,response);
        }
    }

    private void showUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<RentType> rentTypeList = facilityService.rentDisplay();
        Facility facility = facilityService.findByCode(id);
        request.setAttribute("list",rentTypeList);
        request.setAttribute("facility",facility);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/update.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showdelete(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/viewFacility?action=display");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteFac(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("throwId"));
        facilityService.delete(id);
        List<Facility> list = facilityService.display();
        request.setAttribute("list",list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/ListService.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = facilityService.rentDisplay();
        request.setAttribute("list",rentTypeList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/AddService.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void display(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.display();
        List<TypeService> typeServiceList = facilityService.serDisplay();
        List<RentType> rentTypeList = facilityService.rentDisplay();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/ListService.jsp");
        request.setAttribute("list",facilityList);
        request.setAttribute("listRent",rentTypeList);
        request.setAttribute("listType",typeServiceList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




    private void updateFac(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idFac"));
        Facility facility = facilityService.findByCode(id);
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int people = Integer.parseInt(request.getParameter("people"));
        int rent = Integer.parseInt(request.getParameter("rent"));
        int typeCodeF = Integer.parseInt(request.getParameter("typecodeF"));
        String room = request.getParameter("roomstandar");
        String anyElse= request.getParameter("anyelse");
        double areaPool= Double.parseDouble(request.getParameter("areapool"));
        int  flood = Integer.parseInt(request.getParameter("flood"));
        String freeService = request.getParameter("freeservice");
           facility.setName(name);
           facility.setArea(area);
           facility.setCost(cost);
           facility.setMaxPeople(people);
           facility.setRentTypeCode(rent);
           facility.setFacilityTypeCode(typeCodeF);
           facility.setRoomStandar(room);
           facility.setAnyElse(anyElse);
           facility.setAreaPool(areaPool);
           facility.setFlood(flood);
           facility.setServiceFree(freeService);
           facilityService.update(facility);
           display(request,response);

    }

    private void addFacility(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        Facility facilityVali= new Facility();
        facilityVali.setName(name);
        int area = Integer.parseInt(request.getParameter("area"));
        facilityVali.setArea(area);
        double cost = Double.parseDouble(request.getParameter("cost"));
        facilityVali.setCost(cost);
        int people = Integer.parseInt(request.getParameter("people"));
        facilityVali.setMaxPeople(people);
        int rent = Integer.parseInt(request.getParameter("rent"));
        int typeCodeF = Integer.parseInt(request.getParameter("typecodeF"));
        String room = request.getParameter("roomstandar");
        String anyElse= request.getParameter("anyelse");
        double areaPool= Double.parseDouble(request.getParameter("areapool"));
        facilityVali.setAreaPool(areaPool);
        int  flood = Integer.parseInt(request.getParameter("flood"));
        facilityVali.setFlood(flood);
        Map<String, String> errMap = facilityService.add(facilityVali);
        if (errMap.size() > 0) {
            for (Map.Entry<String, String> entry : errMap.entrySet()) {
                request.setAttribute(entry.getKey(), entry.getValue());
            }
            try {
                request.getRequestDispatcher("/view/AddService.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        String freeService = request.getParameter("freeservice");
        Facility facility = new Facility(name,area,cost,people,rent,typeCodeF,room,anyElse,areaPool,flood,freeService);
        facilityService.add(facility);
        showAdd(request,response);


    }

    private void showHome(HttpServletRequest request, HttpServletResponse response) {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
                try {
                    requestDispatcher.forward(request,response);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }























}
