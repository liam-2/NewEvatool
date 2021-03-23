package com.rae.entity;

import java.util.ArrayList;
import java.util.List;

public class barinfo {
    private List<String> data;
    private List<Integer> numbers;

    public barinfo() {
        data = new ArrayList<String>();
        numbers = new ArrayList<>();
    }

    public List<String> getData() {
        return data;
    }

    public void setData(List<String> data) {
        this.data = data;
    }

    public List<Integer> getNumbers() {
        return numbers;
    }

    public void setNumbers(List<Integer> numbers) {
        this.numbers = numbers;
    }

}
