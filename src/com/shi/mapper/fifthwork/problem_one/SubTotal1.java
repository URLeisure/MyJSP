package com.shi.mapper.fifthwork.problem_one;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/24 17:43
 **/

@WebServlet(name = "SubTotal1", value = "/SubTotal1")
public class SubTotal1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");

        String[] numbers = message.split(",");
        int[] nums = new int[numbers.length];

        int evenCount = 0;
        int oddCount = 0;
        for (int i = 0; i < numbers.length; i++) {
            nums[i] = Integer.parseInt(numbers[i]);
            if(nums[i] % 2 == 0){
                evenCount ++;
            }else {
                oddCount ++;
            }
        }


        int evenidx = 0;
        int oddidx = 0;
        int numsEvent[] = new int[evenCount];
        int numsOdd[] = new int [oddCount];
        for (int i = 0; i < nums.length; i++) {
            if(nums[i] % 2 == 0){
                numsEvent[evenidx ++] = nums[i];
            }else{
                numsOdd[oddidx ++] = nums[i];
            }
        }

        request.setAttribute("numsEvent", numsEvent);
        request.setAttribute("numsOdd", numsOdd);

        RequestDispatcher dispatcher = request.getRequestDispatcher("subtotal1.jsp");
        dispatcher.forward(request, response);
    }
}