package bean;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/16 9:19
 **/

public class SaveResult_Bean {
    double firstItem;  //数列首项
    double var;        //公差或公比
    int number;        //求和项数
    double sum;       //求和结果
    String name = "等差/等比";   //数列类别

    public void setFirstItem(double a) {
        firstItem = a;
    }

    public double getFirstItem() {
        return firstItem;
    }

    public void setVar(double b) {
        var = b;
    }

    public double getVar() {
        return var;
    }

    public void setNumber(int n) {
        number = n;
    }

    public double getNumber() {
        return number;
    }

    public void setSum(double s) {
        sum = s;
    }

    public double getSum() {
        return sum;
    }

    public void setName(String na) {
        name = na;
    }

    public String getName() {
        return name;
    }
}
