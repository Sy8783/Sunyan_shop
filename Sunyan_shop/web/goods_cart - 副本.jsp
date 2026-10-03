<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: admin--%>
<%--  Date: 2024/12/18--%>
<%--  Time: 20:34--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--  <title>购物车</title>--%>
<%--  <!-- 引入 Bootstrap CSS -->--%>
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--  <style>--%>
<%--    /* 整体页面背景设置 */--%>
<%--    body {--%>
<%--      font-family: Arial, sans-serif;--%>
<%--      background-color: #f4f4f4;--%>
<%--      margin: 0;--%>
<%--      padding: 0;--%>
<%--    }--%>

<%--    /* 购物车主体内容区域，设置合适的内边距和背景色 */--%>
<%--    .cart-items {--%>
<%--      background-color: #fff;--%>
<%--      padding: 30px;--%>
<%--      border-radius: 10px;--%>
<%--      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--      margin: 50px auto;--%>
<%--      max-width: 1200px;--%>
<%--    }--%>

<%--    /* 购物车头部样式，用于显示标题等信息，更突出醒目 */--%>
<%--    header.cart-header {--%>
<%--      background-color: #f8f9fa;--%>
<%--      border-bottom: 2px solid #dee2e6;--%>
<%--      padding: 20px;--%>
<%--      margin-bottom: 20px;--%>
<%--      display: flex;--%>
<%--      justify-content: space-between;--%>
<%--      align-items: center;--%>
<%--    }--%>

<%--    header.cart-header h2 {--%>
<%--      margin: 0;--%>
<%--      color: #333;--%>
<%--      font-size: 24px;--%>
<%--      font-weight: bold;--%>
<%--    }--%>

<%--    /* 每个商品项的容器样式，设置合理的间距和布局 */--%>
<%--    .cart-item-container {--%>
<%--      border: 1px solid #dee2e6;--%>
<%--      border-radius: 5px;--%>
<%--      padding: 15px;--%>
<%--      margin-bottom: 20px;--%>
<%--      display: flex;--%>
<%--      align-items: center;--%>
<%--      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);--%>
<%--      transition: background-color 0.3s ease;--%>
<%--    }--%>

<%--    .cart-item-container:hover {--%>
<%--      background-color: #f8f9fa;--%>
<%--    }--%>

<%--    /* 商品图片区域样式，设置合适的大小和显示效果 */--%>
<%--    .cart-item-image {--%>
<%--      width: 120px;--%>
<%--      height: 120px;--%>
<%--      margin-right: 20px;--%>
<%--      object-fit: cover;--%>
<%--      border-radius: 5px;--%>
<%--    }--%>

<%--    /* 商品信息区域样式，让文字排版更清晰美观 */--%>
<%--    .cart-item-info {--%>
<%--      flex-grow: 1;--%>
<%--    }--%>

<%--    .cart-item-info h3 {--%>
<%--      margin: 0 0 10px 0;--%>
<%--      color: #333;--%>
<%--      font-size: 18px;--%>
<%--      font-weight: normal;--%>
<%--    }--%>

<%--    .cart-item-info h3 a {--%>
<%--      color: #007bff;--%>
<%--      text-decoration: none;--%>
<%--      transition: color 0.3s ease;--%>
<%--    }--%>

<%--    .cart-item-info h3 a:hover {--%>
<%--      color: #0056b3;--%>
<%--      text-decoration: underline;--%>
<%--    }--%>

<%--    .cart-item-info.price {--%>
<%--      color: #777;--%>
<%--      font-size: 16px;--%>
<%--    }--%>

<%--    /* 删除商品按钮样式，更突出显眼 */--%>
<%--    .cart-item-info.delete-button {--%>
<%--      background-color: #dc3545;--%>
<%--      color: white;--%>
<%--      border: none;--%>
<%--      border-radius: 3px;--%>
<%--      padding: 8px 15px;--%>
<%--      cursor: pointer;--%>
<%--      transition: background-color 0.3s ease;--%>
<%--      margin-top: 10px;--%>
<%--      font-size: 14px;--%>
<%--    }--%>

<%--    .cart-item-info.delete-button:hover {--%>
<%--      background-color: #c82333;--%>
<%--    }--%>

<%--    /* 底部总价和提交订单区域样式，布局更清晰，按钮更醒目 */--%>
<%--    footer.cart-footer {--%>
<%--      border-top: 2px solid #dee2e6;--%>
<%--      padding-top: 20px;--%>
<%--      display: flex;--%>
<%--      justify-content: space-between;--%>
<%--      align-items: center;--%>
<%--    }--%>

<%--    footer.cart-footer.total-price {--%>
<%--      color: #333;--%>
<%--      font-size: 20px;--%>
<%--      font-weight: bold;--%>
<%--    }--%>

<%--    footer.cart-footer.submit-button {--%>
<%--      background-color: #007bff;--%>
<%--      color: white;--%>
<%--      border: none;--%>
<%--      border-radius: 5px;--%>
<%--      padding: 12px 30px;--%>
<%--      cursor: pointer;--%>
<%--      transition: background-color 0.3s ease, transform 0.2s ease;--%>
<%--      font-size: 18px;--%>
<%--    }--%>

<%--    footer.cart-footer.submit-button:active {--%>
<%--      transform: scale(0.98);--%>
<%--    }--%>

<%--    /* 响应式设计样式调整 */--%>
<%--    @media screen and (max-width: 768px) {--%>
<%--      .cart-items {--%>
<%--        padding: 20px;--%>
<%--      }--%>

<%--      .cart-item-container {--%>
<%--        flex-direction: column;--%>
<%--        align-items: flex-start;--%>
<%--      }--%>

<%--      .cart-item-image {--%>
<%--        margin-right: 0;--%>
<%--        margin-bottom: 15px;--%>
<%--      }--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>

<%--<body>--%>
<%--<div class="cart-items">--%>
<%--  <header class="cart-header">--%>
<%--    <h2>购物车</h2>--%>
<%--  </header>--%>
<%--  <!-- 假设这里从后台获取购物车中的商品信息，以下为示例数据，实际应用中需替换为真实数据 -->--%>
<%--  <c:forEach items="${cart.items}" var="item">--%>
<%--    <div class="cart-item-container">--%>
<%--      <img src="${item.imageUrl}" alt="${item.name}商品图片" class="cart-item-image" loading="lazy">--%>
<%--      <div class="cart-item-info">--%>
<%--        <h3>--%>
<%--          <a href="#">${item.name}</a>--%>
<%--        </h3>--%>
<%--        <h3 class="price">价格：¥ ${item.price}</h3>--%>
<%--        <button class="delete-button" onclick="deleteItem('${item.id}')">删除</button>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </c:forEach>--%>
<%--  <footer class="cart-footer">--%>
<%--    <div class="total-price">订单总金额：¥ ${cart.totalPrice}</div>--%>
<%--    <a class="submit-button" href="#">提交订单</a>--%>
<%--  </footer>--%>
<%--  <div id="error-message" style="display: none; color: red; margin-top: 10px;">删除商品失败，请稍后重试</div>--%>
<%--  <div id="loading-spinner" class="spinner-border" role="status" style="display: none;">--%>
<%--    <span class="sr-only">Loading...</span>--%>
<%--  </div>--%>
<%--</div>--%>
<%--<!-- 引入 Bootstrap JS 和 jQuery（可选） -->--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/@popper.js/core@2.5.4/dist/umd/popper.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--<script>--%>
<%--  function deleteItem(itemId) {--%>
<%--      document.getElementById('loading-spinner').style.display = 'block';--%>
<%--      $.ajax({--%>
<%--        url: '/cart/delete',--%>
<%--        type: 'POST',--%>
<%--        data: {--%>
<%--          id: itemId--%>
<%--        },--%>
<%--        success: function (response) {--%>
<%--          location.reload();--%>
<%--          document.getElementById('loading-spinner').style.display = 'none';--%>
<%--        },--%>
<%--        error: function (error) {--%>
<%--          document.getElementById('loading-spinner').style.display = 'none';--%>
<%--          document.getElementById('error-message').style.display = 'block';--%>
<%--          console.log(error);--%>
<%--        }--%>
<%--      });--%>
<%--  }--%>
<%--</script>--%>
<%--</body>--%>

<%--</html>--%>