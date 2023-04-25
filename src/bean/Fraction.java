package bean;

/**
 * @author: URLeisure
 * @description: TODO 类描述
 * @create: 2023/04/25 17:18
 **/

public class Fraction {
    private double number;
    private long fenzi;
    private long fenmu;

    public long getFenzi() {
        return fenzi;
    }

    public long getFenmu() {
        return fenmu;
    }

    public double getNumber() {
        String numberString = String.valueOf(number);
        String xiaoshuPart =
                numberString.substring(numberString.indexOf(".") + 1);
        return Double.parseDouble("0." + xiaoshuPart);
    }

    public void setNumber(double number) {
        this.number = number;
        String numberString = String.valueOf(number);
        String xiaoshuPart =
                numberString.substring(numberString.indexOf(".") + 1);
        int m = xiaoshuPart.length();
        fenzi = Long.parseLong(xiaoshuPart);
        fenmu = (long) Math.pow(10, m);
        long greatCommonDivisor = getyueshu(fenzi, fenmu);
        fenzi = fenzi / greatCommonDivisor;
        fenmu = fenmu / greatCommonDivisor;
    }

    public long getyueshu(long a, long b) {
        if (a == 0) return 1;
        if (a < b) {
            long c = a;
            a = b;
            b = c;
        }
        long r = a % b;
        while (r != 0) {
            a = b;
            b = r;
            r = a % b;
        }
        return b;
    }
}
