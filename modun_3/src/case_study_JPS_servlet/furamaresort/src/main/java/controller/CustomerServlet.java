package controller;

import model.customer.Customer;
import model.customer.CustomerType;
import service.ICustomerService;
import service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CustomerServlet", value = "/view")
public class CustomerServlet extends HttpServlet {
    private static ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
              String action = request.getParameter("action");
                      if (action==null){
                          action="";
                      }
                      switch (action){
                          case "add":
                              showAdd(request,response);
                              break;
                          case "update":
                              showUpdate(request,response);
                              break;
                          case "delete":
                              deleteCustomer(request,response);

                              break;
                          case "display":
                              showListCustomer(request,response);
                              break;
                          default:
                              showHome(request,response);
                      }
                    }

    private void showdelate(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view?action=display");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showUpdate(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/updateCustomer.jsp");
        List<CustomerType> customerTypeList = customerService.listType();
        request.setAttribute("listType",customerTypeList);
        Customer customer = customerService.findById(id);
        request.setAttribute("customer",customer);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/AddCustomer.jsp");
        List<CustomerType> customerTypeList = customerService.listType();
        request.setAttribute("listType",customerTypeList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                        String action = request.getParameter("action");
                        if (action==null){
                            action="";
                        }
                        switch (action){
                            case "add":
                                addCustomer(request,response);
                                break;
                            case "update":
                                updateCustomer(request,response);
                                break;
                            case "delete":

                                break;
                            case "display":

                                break;
                            default:
                                showHome(request,response);
                        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
     int id = Integer.parseInt(request.getParameter("idcus"));
       customerService.delete(id);
        showdelate(request,response);
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
          Customer customer = customerService.findById(id);
          Customer customerVali = new Customer();
        int type = Integer.parseInt(request.getParameter("type"));
        String name = request.getParameter("name");
        customerVali.setName(name);
        String birth = request.getParameter("birth");
        customerVali.setDayOfBirth(birth);
        Boolean  gender = Boolean.valueOf(request.getParameter("gender"));
        String iden = request.getParameter("iden");
        customerVali.setIden(iden);
        int phone = Integer.parseInt(request.getParameter("phone"));
        String email = request.getParameter("email");
        customerVali.setEmail(email);
        String address = request.getParameter("address");
        List<CustomerType> customerTypeList = customerService.listType();
        request.setAttribute("listType", customerTypeList);
        Map<String, String> errMap = customerService.AddCustomer(customerVali);
        if (errMap.size() > 0) {
            for (Map.Entry<String, String> entry : errMap.entrySet()) {
                request.setAttribute(entry.getKey(), entry.getValue());
            }
            try {
                request.getRequestDispatcher("/view/customer/updateCustomer.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
         customer.setCustomerType(type);
         customer.setName(name);
         customer.setDayOfBirth(birth);
         customer.setGender(gender);
         customer.setIden(iden);
         customer.setPhone(phone);
         customer.setEmail(email);
         customer.setAddress(address);
         customerService.update(customer);
         showUpdate(request,response);
         showListCustomer(request,response);

    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {

        int type = Integer.parseInt(request.getParameter("type"));
        String name = request.getParameter("name");
        Customer customerVali = new Customer();
        customerVali.setName(name);
        String birth = request.getParameter("birth");
        customerVali.setDayOfBirth(birth);
        Boolean gender = Boolean.valueOf(request.getParameter("gender"));
        String iden = request.getParameter("iden");
        customerVali.setIden(iden);
        int phone = Integer.parseInt(request.getParameter("phone"));
        String email = request.getParameter("email");
        customerVali.setEmail(email);
        String address = request.getParameter("address");
        List<CustomerType> customerTypeList = customerService.listType();
        request.setAttribute("listType", customerTypeList);
        request.setAttribute("customerVali",customerVali);
        Map<String, String> errMap = customerService.AddCustomer(customerVali);
        if (errMap.size() > 0) {
            for (Map.Entry<String, String> entry : errMap.entrySet()) {
                request.setAttribute(entry.getKey(), entry.getValue());
            }
            try {
                request.getRequestDispatcher("/view/customer/AddCustomer.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


        Customer customer = new Customer(type, name, birth, gender, iden, phone, email, address);
        customerService.AddCustomer(customer);
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

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList= customerService.display();
        List<CustomerType> customerListType = customerService.listType();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/listCustomer.jsp");
        request.setAttribute("ListCustomer",customerList);
        request.setAttribute("ListType", customerListType);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    }
