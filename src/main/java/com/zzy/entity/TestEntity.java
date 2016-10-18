package com.zzy.entity;

import java.io.Serializable;

/**
 * Created by zhouzhiyong on 16/10/17.
 */
public class TestEntity implements Serializable{
    String t1;
    String t2;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }
}
