package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteCartItemServlet", value = "/DeleteCartItemServlet")
public class DeleteCarsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

// 获取要删除的商品ID
        int productId = Integer.parseInt(request.getParameter("productId"));

// 获取当前用户的Session
        HttpSession session = request.getSession(false);
        if (session!= null) {
// 从Session中获取购物车信息
            List<?> cart = (List<?>) session.getAttribute("cart");
            if (cart!= null) {
// 遍历购物车列表，找到要删除的商品并移除（这里假设购物车中存储的商品对象有getId方法用于判断）
                cart.removeIf(item -> {
                    if (item instanceof HasId) {
                        return ((HasId) item).getId() == productId;
                    }
                    return false;
                });
// 更新Session中的购物车信息
                session.setAttribute("cart", cart);
                response.getWriter().write("商品已从购物车中删除成功！");
            } else {
                response.getWriter().write("购物车为空，无需删除操作！");
            }
        } else {
            response.getWriter().write("未获取到有效Session，请重新登录！");
        }
    }

    // 定义一个接口，用于表示有ID属性的商品对象（方便后续统一判断和操作）
    private interface HasId {
        int getId();
    }
}


