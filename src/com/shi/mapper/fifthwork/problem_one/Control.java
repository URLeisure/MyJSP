package com.shi.mapper.fifthwork.problem_one;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/24 17:42
 **/
@WebServlet(name = "Control", value = "/Control")
public class Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String input = request.getParameter("message");
        if(request.getParameter("subtotal1") != null){
            request.setAttribute("message", input);
            request.getRequestDispatcher("/SubTotal1").forward(request, response);
        }else {

            request.setAttribute("message", input);
            request.getRequestDispatcher("/SubTotal2").forward(request, response);
        }

    }
}
