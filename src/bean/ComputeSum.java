package bean;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/16 9:17
 **/

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ComputeSum", urlPatterns = "/computeSum")
public class ComputeSum extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SaveResult_Bean saveResult_bean = new SaveResult_Bean(); //创建bean。
        request.setCharacterEncoding("utf-8");
        request.setAttribute("saveResult", saveResult_bean);//request bean。

        String mess = request.getParameter("submit");
        String firstItem = request.getParameter("firstItem");//首项。
        String var = request.getParameter("var");//或公比公差。
        String number = request.getParameter("number");//求和项数。

        if (firstItem.length() == 0 || var.length() == 0 || number.length() == 0) {
            response.sendRedirect("inputInt.jsp");
            return;
        }
        if (mess.contains("等差")) {
            compute(firstItem, var, number, saveResult_bean, 0);
        } else if (mess.contains("等比")) {
            compute(firstItem, var, number, saveResult_bean, 1);
        }
        //请求inputNumber.jsp显示seriesData中的数据
        RequestDispatcher dispatcher = request.getRequestDispatcher("inputInt.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    void compute(String firstItem, String var, String number, SaveResult_Bean saveResult, int type) {
        double a = Double.parseDouble(firstItem);
        double d = Double.parseDouble(var);
        int n = Integer.parseInt(number);
        saveResult.setFirstItem(a); //将数据存储在数据模型seriesData中。
        saveResult.setVar(d);
        saveResult.setNumber(n);
        double sum = 0, item = a;
        int i = 1;
        if (type == 0) {
            saveResult.setName("等差级数的公差");
            while (i <= n) {       //计算等差数列的和
                sum = sum + item;
                i++;
                item = item + d;
            }
            saveResult.setSum(sum);
        } else if (type == 1) {
            saveResult.setName("等比级数的公比");
            while (i <= n) {       //计算等比数列的和
                sum = sum + item;
                i++;
                item = item * d;
            }
            saveResult.setSum(sum);
        }
    }
}
