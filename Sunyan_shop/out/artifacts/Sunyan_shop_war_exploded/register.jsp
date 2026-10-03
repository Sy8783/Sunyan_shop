<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户注册</title>
    <!-- 引入 Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* 自定义样式 */
        .account {
            background-color: #f8f9fa;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0;
        }

        .register {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 350px;
            margin: 0 auto;
        }

        .register-top-grid h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-weight: bold;
        }

        .input {
            margin-bottom: 15px;
        }

        .input span {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        .input input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .register-but {
            margin-top: 15px;
        }

        .register-but input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 8px 16px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .register-but input[type="submit"]:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
<div class="account">
    <div class="register">
        <form action="/Sunyan_shop_war_exploded/RegisterServlet" method="post">
            <div class="register-top-grid">
                <h3>注册新用户</h3>
                <div class="input">
                    <span>用户名</span>
                    <input type="text" name="username" placeholder="sunyan" required="required">
                </div>
                <div class="input">
                    <span>邮箱</span>
                    <input type="email" name="email" placeholder="123@domain.com" required="required">
                </div>
                <div class="input">
                    <span>密码</span>
                    <input type="password" name="password" placeholder="123456" required="required">
                </div>
                <div class="input">
                    <span>收货人</span>
                    <input type="text" name="name" placeholder="chongjie">
                </div>
                <div class="input">
                    <span>收货电话</span>
                    <input type="text" name="phone" placeholder="456789">
                </div>
                <div class="input">
                    <span>收货地址</span>
                    <input type="text" name="address" placeholder="address">
                </div>
                <div class="register-but text-center">
                    <input type="submit" value="提交">
                </div>
            </div>
        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popper.js/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
