package com.bean;

public class Orders {
    private String username;
    private String orderimgname;
    private int orderprice;
    private int ordernum;
    private int sign;
    private String ordername;
    private String orderphone;
    private String orderaddress;
    private String buytime;

    @Override
    public String toString() {
        return "Orders{" +
                "username='" + username + '\'' +
                ", orderimgname='" + orderimgname + '\'' +
                ", orderprice=" + orderprice +
                ", ordernum=" + ordernum +
                ", sign=" + sign +
                ", ordername='" + ordername + '\'' +
                ", orderphone='" + orderphone + '\'' +
                ", orderaddress='" + orderaddress + '\'' +
                ", buytime='" + buytime + '\'' +
                '}';
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOrderimgname() {
        return orderimgname;
    }

    public void setOrderimgname(String orderimgname) {
        this.orderimgname = orderimgname;
    }

    public int getOrderprice() {
        return orderprice;
    }

    public void setOrderprice(int orderprice) {
        this.orderprice = orderprice;
    }

    public int getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(int ordernum) {
        this.ordernum = ordernum;
    }

    public int getSign() {
        return sign;
    }

    public void setSign(int sign) {
        this.sign = sign;
    }

    public String getOrdername() {
        return ordername;
    }

    public void setOrdername(String ordername) {
        this.ordername = ordername;
    }

    public String getOrderphone() {
        return orderphone;
    }

    public void setOrderphone(String orderphone) {
        this.orderphone = orderphone;
    }

    public String getOrderaddress() {
        return orderaddress;
    }

    public void setOrderaddress(String orderaddress) {
        this.orderaddress = orderaddress;
    }

    public String getBuytime() {
        return buytime;
    }

    public void setBuytime(String buytime) {
        this.buytime = buytime;
    }
}
