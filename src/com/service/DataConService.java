package com.service;

import com.bean.Orders;
import com.bean.Product;
import com.bean.User;

import java.util.List;

public interface DataConService {
    public User find(String name);

    public void reg(User user);

    public List<Product> findall();


    public List<Product> findSome(String value);

    public int upUser(User user);

    public void buyPro(Orders orders);

    public List<Orders> findOrders(String username, int sign);

    public int upBoughtOrd(String orderphone, String orderaddress, String username, String buytime);

    public List<User> allUser();

    public int addPro(Product product);

    public int delOrder(Orders orders);

    public int delUser(String username);

    public List<Product> allProduct();

    public int delPro(Product product);
}
