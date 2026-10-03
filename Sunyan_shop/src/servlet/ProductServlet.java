package servlet;

import model.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/product/*")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 模拟获取商品列表数据，实际需从数据库等查询获取
        List<Product> productList = new ArrayList<>();
        productList.add(new Product("1", "智能手机", 3999, "image/image1.jpg"));
        productList.add(new Product("2", "笔记本电脑", 5999, "image/image2.jpg"));
        productList.add(new Product("3", "蓝牙耳机", 599, "image/image3.jpg"));

        // 将商品列表数据转换为JSON格式（同样需引入JSON处理库，示例暂未详细引入，仅示意结构）
        String productJson = "{\"products\": [";
        for (int i = 0; i < productList.size(); i++) {
            Product product = productList.get(i);
            productJson += "{\"id\": \"" + product.getId() + "\", \"name\": \"" + product.getName() + "\", \"price\": " + product.getPrice() + ", \"imageUrl\": \"" + product.getImageUrl() + "\"}";
            if (i < productList.size() - 1) {
                productJson += ", ";
            }
        }
        productJson += "]}";

        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(productJson);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("POST method not implemented for this servlet yet.");
    }
}