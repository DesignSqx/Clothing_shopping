package com.service;


import com.bean.Orders;
import com.bean.Product;
import com.bean.User;
import com.mapper.DataCon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("dataConService")
public class DataConServiceImp implements DataConService {
    final
    DataCon dataCon;

    @Autowired
    public DataConServiceImp(DataCon dataCon) {
        this.dataCon = dataCon;
    }



    @Override
    public User find(String name) {
        return this.dataCon.find(name);
    }


    public void reg(User user){
        this.dataCon.reg(user);
    }


    public List<Product> findall(){
        return dataCon.findall();
    }



    public List<Product> findSome(String value){
        return dataCon.findSome(value);
    }


    public int upUser(User user){
        return dataCon.upUser(user);
    }


    public void buyPro(Orders orders){
        this.dataCon.buyPro(orders);
    }


    public List<Orders> findOrders(String username, int sign){
        return dataCon.findOrders(username, sign);
    }


    public int upBoughtOrd(String orderphone, String orderaddress, String username, String buytime){
        return dataCon.upBoughtOrd(orderphone, orderaddress, username, buytime);
    }


    public List<User> allUser(){
        return dataCon.allUser();
    }


    public int addPro(Product product){
        return dataCon.addPro(product);
    }

    public int delOrder(Orders orders){
        return dataCon.delOrder(orders);
    }

    public int delUser(String username){
        return dataCon.delUser(username);
    }

    public List<Product> allProduct(){
        return dataCon.allProduct();
    }

    public int delPro(Product product){
        return dataCon.delPro(product);
    }
}
