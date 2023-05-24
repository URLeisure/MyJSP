package com.shi.mapper.fifthwork.problem_two;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/24 18:01
 **/

@WebServlet(name = "ServletController", value = "/ServletController")
public class ServletController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        try{
            String op1 = request.getParameter("d");
            String op2 = request.getParameter("q");
            Num num = new Num();
            request.setAttribute("num", num);
            if (num == null) {
                return;
            }

            num.seta(Double.parseDouble(request.getParameter("a")));
            num.setq(Double.parseDouble(request.getParameter("d/q")));
            num.setN(Integer.parseInt(request.getParameter("n")));

            double sum = 0;
            if(op1 != null){
                num.setm(0);
                sum = (2 * num.geta() + (num.getN() - 1) * num.getq()) * num.getN() / 2;
            }else{
                num.setm(1);
                sum = num.geta() * (Math.pow(num.getq(), num.getN()) - 1) / (num.getq() - 1);
            }

            num.setSum(sum);

            RequestDispatcher dispatcher = request.getRequestDispatcher("Problem2.jsp");
            dispatcher.forward(request, response);
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
