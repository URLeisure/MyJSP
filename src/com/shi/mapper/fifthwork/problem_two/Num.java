package com.shi.mapper.fifthwork.problem_two;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/24 18:00
 **/

public class Num {
    private double a;
    private double q;
    private int n;

    @Override
    public String toString() {
        return "Num{" +
                "a=" + a +
                ", q=" + q +
                ", n=" + n +
                ", m=" + m +
                ", sum=" + sum +
                '}';
    }

    private int m;

    private double sum;

    public double geta() {
        return a;
    }

    public void seta(double a) {
        this.a = a;
    }

    public double getq() {
        return q;
    }

    public void setq(double q) {
        this.q = q;
    }

    public int getN() {
        return n;
    }

    public void setN(int n) {
        this.n = n;
    }

    public int getm() {
        return m;
    }

    public void setm(int m) {
        this.m = m;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }
}