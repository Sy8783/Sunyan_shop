<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/12/17
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* 整体页面背景设置 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        /* 登录容器样式 */
        .login-container {
            width: 100%;
            max-width: 400px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* 登录卡片样式 */
        .login-card {
            padding: 20px;
        }

        /* 登录头部标题样式 */
        .login-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-header h2 {
            color: #333;
        }

        /* 表单组样式 */
        .form-group {
            margin-bottom: 15px;
        }

        /* 表单标签样式 */
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        /* 表单输入框样式 */
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* 登录按钮样式 */
        .login-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        /* 登录页脚样式 */
        .login-footer {
            text-align: center;
            margin-top: 15px;
            color: #777;
        }

        .login-footer a {
            color: #007bff;
            text-decoration: none;
            /* 修改此处，将href指向register.jsp页面 */
            href="register.jsp"
        }

        .login-footer a:hover {
            text-decoration: underline;
        }

        /* 提示信息样式 */
        .alert {
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
        }

        .alert-success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
    </style>
</head>

<body>
<div class="login-container">
    <div class="login-card">
        <div class="login-header">
            <h2>用户登录</h2>
        </div>
        <div class="login-body">
            <!-- 显示登录失败的提示 -->
            <%
                String failMsg = (String) request.getAttribute("failMsg");
                if (failMsg != null) {
            %>
            <div class="alert alert-danger"><%= failMsg %></div>
            <%
                }
            %>
            <form action="/Sunyan_shop_war_exploded/LoginServlet" method="post">
                <div class="form-group">
                    <label for="ue">用户名/邮箱</label>
                    <input type="text" id="ue" name="username" placeholder="请输入用户名或邮箱" required>
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" id="password" name="password" placeholder="请输入密码" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="登录" class="login-button">
                </div>
            </form>
        </div>
        <div class="login-footer">
            <p>还没有账号？<a href="register.jsp">立即注册</a></p>
        </div>
    </div>
</div>
</body>

</html>