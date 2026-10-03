package servlet;

import model.Cart;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cart/*")
public class CartServlet extends HttpServlet {


    // 处理 GET 请求，返回购物车页面并传递购物车数据
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取 Session 中的购物车对象
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();  // 如果购物车为空，创建一个新的购物车
            request.getSession().setAttribute("cart", cart);  // 将购物车对象保存在 session 中
        }

        // 将购物车数据传递给 JSP 页面
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("/goods_cart.jsp").forward(request, response);
    }

    // 处理 POST 请求，添加商品到购物车
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从请求中获取商品信息
        String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        String productImageUrl = request.getParameter("productImageUrl");

        int quantity = 1;  // 默认数量为1，如果需要从前端传递数量，可以扩展

        // 创建 Product 对象，根据前端传递的商品信息
        Product product = new Product(productId, productName, productPrice, productImageUrl);

        // 获取当前用户的购物车，存储在 Session 中
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();  // 如果购物车为空，创建一个新的购物车
        }

        // 向购物车中添加商品
        cart.addItem(product, quantity);
        request.getSession().setAttribute("cart", cart);  // 更新 Session 中的购物车

        // 返回购物车中的商品数量（JSON 格式）
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.write("{\"cartCount\":" + cart.getItems().size() + "}"); // 返回 JSON 格式的购物车商品数量
    }
    // 添加商品到购物车
    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String productId = request.getParameter("productId");  // 获取商品ID
        int quantity = 1; // 默认为1
        if (request.getParameter("quantity") != null) {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        }

        // 从数据库或者其他方式获取商品信息
        // 这里模拟了商品信息，实际应用中应该从数据库查询
        Product product = new Product(productId, "示例商品", 9.99, "https://example.com/product.jpg");

        // 获取当前用户的购物车，存储在 Session 中
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();  // 如果购物车为空，创建一个新的购物车
        }
        cart.addItem(product, quantity);  // 向购物车中添加商品
        request.getSession().setAttribute("cart", cart);  // 更新 Session 中的购物车

        // 返回购物车中商品的数量
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.write("{\"cartCount\":" + cart.getItems().size() + "}"); // 返回 JSON 格式的购物车商品数量
    }

    // 从购物车中删除商品
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String productId = request.getParameter("productId");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart != null && productId != null) {
            cart.removeItem(productId);  // 从购物车中移除商品
            request.getSession().setAttribute("cart", cart);  // 更新 Session 中的购物车
            response.setContentType("text/plain;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.write("商品已从购物车中删除");
        } else {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            PrintWriter out = response.getWriter();
            out.write("删除失败，商品不存在");
        }
    }

}
