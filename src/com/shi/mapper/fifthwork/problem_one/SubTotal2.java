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
@WebServlet(name = "SubTotal2", value = "/SubTotal2")
public class SubTotal2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");

        int count = 0;
        int count1 = 0;
        int count2 = 0;
        String[] numbers = message.split(",");
        int[] nums = new int[numbers.length];
        for (int i = 0; i < numbers.length; i++) {
            nums[i] = Integer.parseInt(numbers[i]);
            if(nums[i] % 3 == 0){
                count ++;
            }else if(nums[i] % 3 == 1){
                count1 ++;
            }else {
                count2 ++;
            }
        }

        int idx = 0, idx1 = 0, idx2 = 0;
        int nums0[] = new int[count];
        int nums1[] = new int [count1];
        int nums2[] = new int [count2];

        for (int i = 0; i < nums.length; i++) {
            if(nums[i] % 3 == 0){
                nums0[idx ++] = nums[i];
            } else if (nums[i] % 3 == 1) {
                nums1[idx1 ++] = nums[i];
            } else{
                nums2[idx2 ++] = nums[i];
            }
        }

        request.setAttribute("nums0", nums0);
        request.setAttribute("nums1", nums1);
        request.setAttribute("nums2", nums2);

        RequestDispatcher dispatcher = request.getRequestDispatcher("subtotal2.jsp");
        dispatcher.forward(request, response);
    }
}
