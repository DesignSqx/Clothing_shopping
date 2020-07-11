package com.bean;

public class Product {
    private String imgname;
    private String proname;
    private String proabout;
    private int price;


    @Override
    public String toString() {
        return "Product{" +
                "imgname='" + imgname + '\'' +
                ", proname='" + proname + '\'' +
                ", proabout='" + proabout + '\'' +
                ", price=" + price +
                '}';
    }

    public String getImgname() {
        return imgname;
    }

    public void setImgname(String imgname) {
        this.imgname = imgname;
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname;
    }

    public String getProabout() {
        return proabout;
    }

    public void setProabout(String proabout) {
        this.proabout = proabout;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
