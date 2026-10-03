package servlet;

import dao.addcarsDao.AddCarsDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddCartsServlet", value = "/AddCartsServlet")
public class AddCarsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

// 获取当前用户的Session，若不存在则说明用户未登录，提示先登录
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.getWriter().write("请先登录！");
            response.setHeader("Refresh", "3;url=" + request.getContextPath() + "/login.jsp");
            return;
        }

// 从请求参数中获取商品相关信息（这里不再特指手机相关，可根据实际业务调整参数名获取合适信息）
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

// 调用数据访问层的方法将购物车信息保存到数据库购物车表中（这里假设AddCarsDao有对应的插入方法）
        AddCarsDao addCarsDao = new AddCarsDao();
        int result = addCarsDao.addToCars((int) session.getAttribute("userId"), productId, quantity);
        if (result > 0) {
            response.getWriter().write("商品已成功添加到购物车！");
        } else {
            response.getWriter().write("添加商品到购物车失败，请稍后重试！");
        }
    }
}

