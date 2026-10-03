package servlet;

import dao.LoginDao; // 引入新的LoginDao所在包
import model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 创建LoginDao对象，用于从数据库查询验证用户信息
        LoginDao loginDao = new LoginDao();
        User userFromDb = loginDao.findUserByUsernameAndPassword(username, password);

        if (userFromDb != null) {
            // 如果从数据库中查询到匹配的用户，说明登录成功
            HttpSession session = request.getSession(true);
            session.setAttribute("user", userFromDb);

            // 登录成功后，跳转到指定页面，可以根据实际需求修改
            response.sendRedirect(request.getContextPath() + "/goods_cart.jsp"); // 或者其他页面
        } else {
            // 如果未查询到匹配用户，登录失败，显示错误信息并返回登录页面
            request.setAttribute("failMsg", "用户名或密码错误，登录失败，请重新登录");
            request.getRequestDispatcher("/login.jsp").forward(request, response);  // 使用转发返回登录页面
        }
    }
}
