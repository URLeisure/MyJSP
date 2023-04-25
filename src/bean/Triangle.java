package bean;

/**
 * @author: URLeisure
 * @description: TODO 类描述
 * @create: 2023/04/25 17:16
 **/

public class Triangle {
    private double a;
    private double b;
    private double c;

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public double getC() {
        return c;
    }

    public void setC(double c) {
        this.c = c;
    }

    public boolean isTrangle() {
        if (a + b > c && a + c > b && b + c > a) return true;
        else return false;
    }

    public double getArea() {
        double p = (a + b + c) / 2.0;
        double res = 0;
        if (isTrangle()) {
            res = Math.sqrt(p * (p - a) * (p - b) * (p - c));
        }
        return res;
    }

    public double getPerimeter() {
        return (a + b + c);
    }

}
