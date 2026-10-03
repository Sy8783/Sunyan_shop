package servlet;

import dao.RegisterDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

        // 获取用户注册信息
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        // 输入验证，确保用户没有遗漏字段
        if (username == null || password == null || email == null || phone == null || username.trim().isEmpty() || password.trim().isEmpty()) {
            response.getWriter().write("请填写所有字段！");
            response.setHeader("Refresh", "3;url=" + request.getContextPath() + "/register.jsp");
            return;
        }

        // 创建 User 对象并设置用户信息
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone(phone);

        // 使用 RegisterDao 进行数据库操作
        RegisterDao registerDao = new RegisterDao();
        int rowsAffected = registerDao.registerUser(user);

        if (rowsAffected > 0) {
            // 注册成功，提示用户并跳转到登录页面
            response.getWriter().write("<h2>注册成功！正在跳转到登录页面...</h2>");
            response.setHeader("Refresh", "3;url=" + request.getContextPath() + "/login.jsp");
        } else {
            // 注册失败，显示错误信息并返回注册页面
            response.getWriter().write("注册失败，请检查输入信息后重新注册");
            response.setHeader("Refresh", "3;url=" + request.getContextPath() + "/register.jsp");
        }
    }
}
