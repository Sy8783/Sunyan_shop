//package servlet;
//
//import model.Cart;
//import model.CartItem;
//import model.Product;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.HashMap;
//import java.util.Map;
//
//@WebServlet("/cart/*")
//public class CartServlet11 extends HttpServlet {
//    private Map<String, Cart> userCarts = new HashMap<>();
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 获取当前用户ID，这里暂时模拟为固定值，实际需替换为真实获取用户ID逻辑
//        String userId = "1";
//        Cart cart = userCarts.getOrDefault(userId, new Cart());
//
//        // 将购物车数据转换为JSON格式（这里需引入JSON处理库，如Jackson或Gson等，示例暂未详细引入，仅示意结构）
//        String cartJson = "{\"items\": [";
//        for (int i = 0; i < cart.getItems().size(); i++) {
//            CartItem item = cart.getItems().get(i);
//            cartJson += "{\"product\": {\"id\": \"" + item.getProduct().getId() + "\", \"name\": \"" + item.getProduct().getName() + "\", \"price\": " + item.getProduct().getPrice() + ", \"imageUrl\": \"" + item.getProduct().getImageUrl() + "\"}, \"quantity\": " + item.getQuantity() + "}";
//            if (i < cart.getItems().size() - 1) {
//                cartJson += ", ";
//            }
//        }
//        cartJson += "], \"totalPrice\": " + cart.getTotalPrice() + "}";
//
//        response.setContentType("application/json;charset=UTF-8");
//        response.getWriter().write(cartJson);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String pathInfo = request.getPathInfo();
//        if (pathInfo!= null) {
//            String[] parts = pathInfo.split("/");
//            if (parts.length > 1) {
//                String action = parts[1];
//                if ("add".equals(action)) {
//                    addToCart(request, response);
//                } else if ("delete".equals(action)) {
//                    deleteFromCart(request, response);
//                }
//            }
//        }
//        response.setContentType("text/html;charset=UTF-8");
//        response.getWriter().write("Invalid action or request format.");
//    }
//
//    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        String productId = request.getParameter("productId");
//        // 获取商品数量，这里从前端传递过来，若前端未传递则默认数量为1（可根据实际情况调整）
//        int quantity = 1;
//        if (request.getParameter("quantity")!= null) {
//            quantity = Integer.parseInt(request.getParameter("quantity"));
//        }
//
//        // 这里假设你从数据库或者其他地方获取商品信息，简单模拟一个商品示例（实际需完善查询逻辑）
//        Product product = new Product(productId, "示例商品", 9.99, "https://example.com/product.jpg");
//        String userId = "1"; // 这里应该替换为真实获取当前用户ID的逻辑，暂时模拟固定用户ID为1
//        Cart cart = userCarts.getOrDefault(userId, new Cart());
//        cart.addItem(product, quantity);
//        userCarts.put(userId, cart);
//
//        response.setContentType("text/plain;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        out.write("商品已成功添加到购物车");
//    }
//
//    private void deleteFromCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        String productId = request.getParameter("productId");
//        String userId = "1"; // 同样，替换为真实用户ID获取逻辑
//        Cart cart = userCarts.getOrDefault(userId, new Cart());
//        cart.removeItem(productId);
//        userCarts.put(userId, cart);
//
//        response.setContentType("text/plain;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        out.write("商品已从购物车中删除");
//    }
//}