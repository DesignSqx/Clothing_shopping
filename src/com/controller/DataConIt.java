package com.controller;

import com.bean.Orders;
import com.bean.Product;
import com.bean.User;
import com.service.DataConService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//@MapperScan(value = "com.mapper")
@Controller
public class DataConIt {




    @Autowired
    private DataConService dataConService;


    private List<Product> finAll(){                     //找所有商品
        List<Product> all ;
        all = new ArrayList<>(dataConService.findall());
        return all;
    }


    public List<List<Product>> page(List<Product> list){                  //计算页数并填充进去
        List<List<Product>> allpage = new ArrayList<>();
        int num = list.size()-1;
        ArrayList<Product> sign = null;
    W:  while (true){
        sign = new ArrayList<>();
            for(int i = 0; i < 18; ++i){
                sign.add(list.get(num--));
                if(num < 0){
                    allpage.add(sign);
                    break W;
                }
            }
            allpage.add(sign);
        }
        return allpage;
    }




    @RequestMapping("/login")                                                                                       //登录
    public ModelAndView ifLogin(String username, String password, HttpServletRequest request, HttpServletResponse response) throws IOException {
        ModelAndView mv = new ModelAndView();
        if(username.equals("admin") && password.equals("admin")){
            System.out.println("1111111111111111");
            mv.addObject("allUser", allUser());
            mv.addObject("allProduct", allProduct());
            mv.setViewName("tobindex");
            return mv;
        }
        User user = dataConService.find(username);
        String pw = null;
        try {
            pw = user.getPassword();
        }catch(Exception e){
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('用户不存在');");
            out.println("history.back();");
            out.println("</script>");
            mv.setViewName("login");
            out.close();
            return mv;
        }finally{
            boolean sign = pw.equals(password);
            if (sign) {
                mv.addObject("username", username);
                mv.addObject("password", pw);
                mv.addObject("log", true);
                mv.addObject("findAll", finAll());
                mv.addObject("allPage", page(finAll()));
                mv.addObject("which", 0);
                mv.setViewName("main");
                return mv;
            } else {
                response.setContentType("text/html; charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.flush();
                out.println("<script>");
                out.println("alert('密码错误');");
                out.println("history.back();");
                out.println("</script>");
                mv.setViewName("login");
                out.close();
                return mv;
            }
        }



    }


    @RequestMapping("/register")                                                    //注册
    public String register(String username, String password, String email){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        dataConService.reg(user);
        System.out.println("success reg");
        return "login";
    }


    @RequestMapping("/noLog")                                                            //未登录
    public ModelAndView noLog(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("log", false);
        modelAndView.addObject("allPage", page(finAll()));
        modelAndView.addObject("which", 0);
        modelAndView.setViewName("main");
        return modelAndView;
    }


    @RequestMapping("/dealPage")                                                                //分页处理
    public ModelAndView dealPage(Integer which, String pagename, boolean log){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("log", log);
        modelAndView.addObject("username", pagename);
        modelAndView.addObject("which", which);
        modelAndView.addObject("allPage", page(finAll()));
        modelAndView.setViewName("main");
        return modelAndView;
    }


    @RequestMapping("/logEd")                                                    //商城首页
    public ModelAndView logEd(String username){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("which", 0);
        modelAndView.addObject("allPage", page(finAll()));
        modelAndView.addObject("username", username);
        modelAndView.addObject("log", true);
        modelAndView.setViewName("main");
        return modelAndView;
    }


    @RequestMapping("/findSome")
    public ModelAndView findSome(String value, boolean log, String seaname){                     //找东西,搜索框
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("log", log);
        modelAndView.addObject("username", seaname);
        modelAndView.addObject("which", 0);
        try{
            modelAndView.addObject("allPage",page(find(value)));
        }catch(Exception e){
            List<List<Product>> list = new ArrayList<>();
            modelAndView.addObject("allPage", list);
        }finally{
            modelAndView.setViewName("main");
            return modelAndView;
        }


    }


    public List<Product> find(String value){                    //找东西
        return new ArrayList<>(dataConService.findSome(value));
    }



    @RequestMapping("/saveImf")                                     //修改个人信息
    public void saveImf(String uname, String upassword, String uemail, HttpServletResponse response) throws IOException {
        User user = new User();
        user.setEmail(uemail);
        user.setPassword(upassword);
        user.setUsername(uname);
        dataConService.upUser(user);
        PrintWriter out = response.getWriter();
        out.flush();
        out.println("<script>");
        out.println("history.back();");
        out.println("</script>");
        out.close();
    }




    //------------------------------分割线-----------------------------
    /**
     *                  ----------------下面是有钱人的地盘-----------------
     *　　　　　　　 ┏┓       ┏┓+ +
     *　　　　　　　┏┛┻━━━━━━━┛┻┓ + +
     *　　　　　　　┃　　　　　　 ┃
     *　　　　　　　┃　　　━　　　┃ ++ + + +
     *　　　　　　 █████━█████  ┃+
     *　　　　　　　┃　　　　　　 ┃ +
     *　　　　　　　┃　　　┻　　　┃
     *　　　　　　　┃　　　　　　 ┃ + +
     *　　　　　　　┗━━┓　　　 ┏━┛
     *               ┃　　  ┃
     *　　　　　　　　　┃　　  ┃ + + + +
     *　　　　　　　　　┃　　　┃　Code is far away from     bug with the animal protecting
     *　　　　　　　　　┃　　　┃ + 　　　　         神兽保佑,代码无bug
     *　　　　　　　　　┃　　　┃
     *　　　　　　　　　┃　　　┃　　+
     *　　　　　　　　　┃　 　 ┗━━━┓ + +
     *　　　　　　　　　┃ 　　　　　┣┓
     *　　　　　　　　　┃ 　　　　　┏┛
     *　　　　　　　　　┗┓┓┏━━━┳┓┏┛ + + + +
     *　　　　　　　　　 ┃┫┫　 ┃┫┫
     *　　　　　　　　　 ┗┻┛　 ┗┻┛+ + + +
     */



    @RequestMapping("/delOrder")                        //删除订单
    public ModelAndView delOrder(String buyTime, String username, int sign){
        Orders orders = new Orders();
        orders.setBuytime(buyTime);
        orders.setUsername(username);
        orders.setSign(sign);
        dataConService.delOrder(orders);
        return ord(username);
    }



    @RequestMapping("/buy")                                                                                 //点击购买键
    public void buy(String imgname, String proname, int price, String username, HttpServletResponse response) throws IOException, ParseException {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");    //设置日期格式,带冒号数据库不给存
        String buyTime = df.format(new Date());
        Orders orders = new Orders();
        orders.setUsername(username);
        orders.setOrderimgname(imgname);
        orders.setOrdername(proname);
        orders.setOrderprice(price);
        orders.setOrdernum(1);
        orders.setSign(0);
        orders.setBuytime(buyTime);
        dataConService.buyPro(orders);
        PrintWriter out = response.getWriter();
        out.flush();
        out.println("<script>");
        out.println("history.back();");
        out.println("</script>");
        out.close();
    }



    @RequestMapping("/ord")                             //跳转到订单界面
    public ModelAndView ord(String username){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("username", username);
        modelAndView.addObject("allBuyOrders", dataConService.findOrders(username, 0));
        modelAndView.addObject("allBoughtOrders", dataConService.findOrders(username, 1));
        modelAndView.setViewName("orders");
        return modelAndView;
    }



//          ------------------这个经历很痛苦，很值得，尽管发现最后有更聪明的方法--------------------
//    @RequestMapping("/buyIt")                                           //后台获取数据
//    @ResponseBody
//    public ModelAndView buyIt(@RequestBody String list) throws UnsupportedEncodingException {
//        Orders orders;
//        ModelAndView modelAndView = new ModelAndView();
//        JSONArray ary = JSONArray.fromObject(list);
//        JSONObject object;
//        for(int i=0;i<ary.size();i++) {
//            object = ary.getJSONObject(i);
//            orders = (Orders)JSONObject.toBean(object, Orders.class) ;
//            System.out.println(orders);
//        }
//        modelAndView.setViewName("login");
//        return modelAndView;
//    }


    @RequestMapping("/buyIt")                                                       //oders界面的总购买
    public ModelAndView buyIt(String orderphone, String orderaddress, String username, @RequestParam(value = "allcount[]")Integer[] allcount){
        ModelAndView modelAndView = new ModelAndView();
        List<Orders> orders = dataConService.findOrders(username, 0);
        for (int i:allcount){
            dataConService.upBoughtOrd(orderphone, orderaddress, username, orders.get(i-1).getBuytime());
        }
        modelAndView.addObject("allBuyOrders", dataConService.findOrders(username, 0));
        modelAndView.addObject("allBoughtOrders", dataConService.findOrders(username, 1));
        modelAndView.addObject("username", username);
        modelAndView.setViewName("orders");
        return modelAndView;

    }



    /**------------------------------管理层啊啊啊啊啊--------------------------------------*/

        //
    //                            _ooOoo_
    //                           o8888888o
    //                           88" . "88
    //                           (| -_- |)
    //                           O\  =  /O
    //                        ____/`---'\____
    //                      .'  \\|     |//  `.
    //                     /  \\|||  :  |||//  \
    //                    /  _||||| -:- |||||-  \
    //                    |   | \\\  -  /// |   |
    //                    | \_|  ''\---/''  |   |
    //                    \  .-\__  `-`  ___/-. /
    //                  ___`. .'  /--.--\  `. . __
    //               ."" '<  `.___\_<|>_/___.'  >'"".
    //              | | :  `- \`.;`\ _ /`;.`/ - ` : | |
    //              \  \ `-.   \_ __\ /__ _/   .-` /  /
    //         ======`-.____`-.___\_____/___.-`____.-'======
    //                            `=---='
    //        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    //                      Buddha Bless, No Bug !
    //

    public List<User> allUser(){                                                                //查询所有用户
        return dataConService.allUser();
    }


    public List<Product> allProduct(){
        return dataConService.allProduct();
    }

    @RequestMapping("/fileUpload")                                                       //上传图片文件
    public ModelAndView fileUpload(String proname, String proabout, int price, MultipartFile file, HttpServletRequest httpServletRequest,
                                   HttpServletResponse response) throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("allUser", allUser());
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.flush();
        if(!file.isEmpty()){
            String fname = file.getOriginalFilename();
            String dirpath = httpServletRequest.getServletContext().getRealPath("/pro_img/");
            File filePath = new File(dirpath);
            if(!filePath.exists()) filePath.mkdir();
            try{
                file.transferTo(new File(dirpath + fname));
            }catch (Exception e){
                out.println("<script>");
                out.println("alert('！！！上传失败！！！');");
                out.println("</script>");
                out.close();
                modelAndView.setViewName("tobindex");
                return modelAndView;
            }
            Product product = new Product();
            product.setImgname(fname);
            product.setPrice(price);
            product.setProabout(proabout);
            product.setProname(proname);
            dataConService.addPro(product);
            out.println("<script>");
            out.println("alert('上传成功');");
            out.println("history.back();");
            out.println("</script>");
            out.close();
            modelAndView.setViewName("tobindex");
            return modelAndView;
        }else {
            out.println("<script>");
            out.println("alert('上传文件为空');");
            out.println("window.location.hash = \"#products\"");
            out.println("</script>");
            out.close();
            modelAndView.setViewName("tobindex");
            return modelAndView;
        }
    }


    @RequestMapping("/delUser")
    public ModelAndView delUser(String username){
        ModelAndView modelAndView = new ModelAndView();
        dataConService.delUser(username);
        return tiaozhuan();
    }


    private ModelAndView tiaozhuan(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("allUser", allUser());
        modelAndView.addObject("allProduct", allProduct());
        modelAndView.setViewName("tobindex");
        return modelAndView;
    }


    @RequestMapping("/delPro")
    public ModelAndView delPro(String imgname, String proname, String proabout, int price){
        Product product = new Product();
        product.setImgname(imgname);
        product.setProname(proname);
        product.setProabout(proabout);
        product.setPrice(price);
        dataConService.delPro(product);
        return tiaozhuan();

    }

}
