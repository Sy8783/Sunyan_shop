<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/12/16
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>我的首页</title>
  <style>
    /* 全局样式设置 */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    /* 头部样式 */
    header {
      background-color: #333;
      color: white;
      text-align: center;
      padding: 20px;
    }

    /* 导航栏样式 */
    nav {
      background-color: #444;
      padding: 10px;
      display: flex;
      justify-content: space-around;
      align-items: center;
    }

    nav ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: space-around;
      width: 60%;
    }

    nav ul li {
      cursor: pointer;
    }

    nav ul li a {
      color: white;
      text-decoration: none;
    }

    /* 登录和注册按钮样式 */
    .btn {
      background-color: #008CBA;
      border: none;
      color: white;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }


    /* 图片展示区域样式 */
    .image-container {
      width: 80%;
      margin: 20px auto;
      box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
      display: flex;
      justify-content: space-between; /* 让图片在水平方向均匀间隔排列 */
    }

    /* 第一张图片样式，放大且拉长拉扁 */
    .image-item:first-child {
      width: 500px; /* 宽度占展示区域的40%，可调整 */
      height: 500px; /* 固定高度，可根据拉长拉扁需求调整 */
      object-fit: fill; /* 填充整个容器，可能会拉伸变形 */
    }

    /* 第二张图片样式，放小且拉长拉扁 */
    .image-item:nth-child(2) {
      width: 500px; /* 宽度占展示区域的20%，可调整 */
      height: 500px; /* 固定高度，可根据拉长拉扁需求调整 */
      object-fit: fill; /* 填充整个容器，可能会拉伸变形 */
    }

    /* 第三张图片样式，放大且拉长拉扁 */
    .image-item:last-child {
      width: 500px; /* 宽度占展示区域的40%，可调整 */
      height: 500px; /* 固定高度，可根据拉长拉扁需求调整 */
      object-fit: fill; /* 填充整个容器，可能会拉伸变形 */
    }
    /* 页脚样式 */
    footer {
      background-color: #333;
      color: white;
      text-align: center;
      padding: 20px;
      margin-top: auto; /* 利用auto属性让页脚自动被推到最下方 */
    }
  </style>
</head>

<body>
<!-- 页面头部 -->
<header>
  <h1>欢迎来到我的小店</h1>
</header>

<!-- 导航栏 -->
<nav>
  <ul>
    <li><a href="index.jsp">首页</a></li>
    <li><a href="goods.jsp">商品详情</a></li>
  </ul>
  <button class="btn" onclick="window.location.href='login.jsp';">登录</button>
  <button class="btn" onclick="window.location.href='register.jsp';">注册</button>
</nav>

<!-- 主体内容部分，轮播图 -->
<div class="image-container">
  <img src="image/image1.jpg" alt="图片1" class="image-item">
  <img src="image/image2.jpg" alt="图片2" class="image-item">
  <img src="image/image3.jpg" alt="图片3" class="image-item">
</div>

</div>


<!-- 页脚 -->
<footer>
  欢迎购买
</footer>
</body>

</html>
