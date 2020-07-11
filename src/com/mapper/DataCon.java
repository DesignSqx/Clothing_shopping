package com.mapper;

import com.bean.Orders;
import com.bean.Product;
import com.bean.User;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface DataCon {
    @Select("select * from user where username = #{username}")
    public User find(String username);



    @Insert("insert into user (username, password, email) values (#{username}, #{password}, #{email})")
    public void reg(User user);



    @Select("select * from product")
    public List<Product> findall();


    @Select("select * from product where proname like concat('%', #{value}, '%')")
    public List<Product> findSome(String value);


    @Update("update user set email = #{email}, password = #{password} where username = #{username}")
    public int upUser(User user);


    @Insert("insert into orders (username, orderimgname, orderprice, ordernum, ordername, sign, buytime) " +
            "values (#{username}, #{orderimgname}, #{orderprice}, #{ordernum}, #{ordername}, #{sign}, #{buytime})")
    public void buyPro(Orders orders);


//    order by ordername desc
    @Select("select * from orders where username = ${username} and sign = ${sign}")
    public List<Orders> findOrders(@Param("username") String username, @Param("sign") int sign);


    @Update("update orders set sign = 1, orderphone = #{orderphone}, orderaddress = #{orderaddress} where sign = 0 and username = #{username} and buytime = #{buytime}")
    public int upBoughtOrd(@Param("orderphone") String orderphone, @Param("orderaddress") String orderaddress, @Param("username") String username,
                           @Param("buytime") String buytime);


    @Select("select * from user")
    public List<User> allUser();


    @Insert("insert into product (imgname, proname, proabout, price) values (#{imgname}, #{proname}, #{proabout}, #{price})")
    public int addPro(Product product);



    @Delete("delete from orders where username = ${username} and sign = ${sign} and buytime = ${buytime} limit 1")
    public int delOrder(Orders orders);

    @Delete("delete from user where username = ${username}")
    public int delUser(String username);

    @Select("Select * from product")
    public List<Product> allProduct();

    @Delete("delete from product where imgname = #{imgname} and proname = #{proname} and proabout = #{proabout} and price = #{price} limit 1")
    public int delPro(Product product);
}
