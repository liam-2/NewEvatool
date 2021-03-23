package com.rae.entity;

import java.util.ArrayList;
import java.util.List;

public class FourthObject {
    private barinfo first = new barinfo();
    private barinfo second = new barinfo();
    private barinfo third = new barinfo();
    private List<SecondInfo> fourth = new ArrayList<SecondInfo>();

    public barinfo getFirst() {
        return first;
    }

    public void setFirst(barinfo first) {
        this.first = first;
    }

    public barinfo getSecond() {
        return second;
    }

    public void setSecond(barinfo second) {
        this.second = second;
    }

    public barinfo getThird() {
        return third;
    }

    public void setThird(barinfo third) {
        this.third = third;
    }

    public List<SecondInfo> getFourth() {
        return fourth;
    }

    public void setFourth(List<SecondInfo> fourth) {
        this.fourth = fourth;
    }

}
