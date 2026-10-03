<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: admin--%>
<%--  Date: 2024/12/17--%>
<%--  Time: 10:47--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <title>商品详情</title>--%>
<%--    <!-- 引入 Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--    <style>--%>
<%--        /* 整体页面背景设置 */--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f4f4f4;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--        }--%>

<%--        /* 商品详情容器，设置内边距、背景色、边框和阴影，使其更美观突出 */--%>
<%--        .product-detail-container {--%>
<%--            background-color: #fff;--%>
<%--            padding: 30px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--            margin: 50px auto;--%>
<%--            max-width: 1200px;--%>
<%--        }--%>

<%--        /* 商品标题样式，较大字体、加粗且居中显示 */--%>
<%--        .product-title {--%>
<%--            text-align: center;--%>
<%--            color: #333;--%>
<%--            font-size: 28px;--%>
<%--            font-weight: bold;--%>
<%--            margin-bottom: 30px;--%>
<%--        }--%>

<%--        /* 单个商品项的容器样式，设置合理的间距、边框和圆角，营造卡片式效果 */--%>
<%--        .product-item {--%>
<%--            border: 1px solid #dee2e6;--%>
<%--            border-radius: 5px;--%>
<%--            padding: 20px;--%>
<%--            margin-bottom: 30px;--%>
<%--            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);--%>
<%--        }--%>

<%--        /* 商品图片样式，设置合适的宽度、高度以及图片显示效果 */--%>
<%--        .product-image {--%>
<%--            width: 50%;--%>
<%--            height: 500px;--%>
<%--            object-fit: cover;--%>
<%--            border-radius: 5px;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        /* 商品简介样式，合理的字体大小和颜色，便于阅读 */--%>
<%--        .product-description {--%>
<%--            color: #555;--%>
<%--            font-size: 16px;--%>
<%--            line-height: 1.6;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        /* 商品价格样式，突出显示价格，颜色醒目 */--%>
<%--        .product-price {--%>
<%--            color: #007bff;--%>
<%--            font-size: 20px;--%>
<%--            font-weight: bold;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        /* 加入购物车按钮样式，设置背景色、颜色、圆角等，悬停时有交互效果 */--%>
<%--        .add-to-cart-button {--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            border-radius: 5px;--%>
<%--            padding: 12px 30px;--%>
<%--            cursor: pointer;--%>
<%--            transition: background-color 0.3s ease;--%>
<%--            font-size: 18px;--%>
<%--        }--%>

<%--        .add-to-cart-button:hover {--%>
<%--            background-color: #0056b3;--%>
<%--        }--%>

<%--        /* 购物车图标容器，设置定位等样式，使其固定在右上角 */--%>
<%--        .cart-icon-container {--%>
<%--            position: fixed;--%>
<%--            top: 20px;--%>
<%--            right: 20px;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        /* 购物车图标样式 */--%>
<%--        .cart-icon {--%>
<%--            width: 40px;--%>
<%--            height: 40px;--%>
<%--            fill: #007bff; /* 设置图标颜色 */--%>
<%--        }--%>

<%--        /* 购物车图标数量显示样式，用于显示添加商品的数量 */--%>
<%--        .cart-count {--%>
<%--            position: absolute;--%>
<%--            top: -5px;--%>
<%--            right: -5px;--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            border-radius: 50%;--%>
<%--            font-size: 12px;--%>
<%--            min-width: 18px;--%>
<%--            height: 18px;--%>
<%--            line-height: 18px;--%>
<%--            text-align: center;--%>
<%--            display: none; /* 初始隐藏数量显示 */--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>

<%--<body>--%>
<%--<div class="product-detail-container">--%>
<%--    <!-- 购物车图标容器 -->--%>
<%--    <div class="cart-icon-container" onclick="location.href='goods_cart.jsp'">--%>
<%--        <svg class="cart-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">--%>
<%--            <path d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.37-.66-.11-1.48-.87-1.48H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z" />--%>
<%--        </svg>--%>
<%--        <span class="cart-count">0</span>--%>
<%--    </div>--%>

<%--    <h1 class="product-title">商品详情</h1>--%>

<%--    <!-- 智能手机商品项 -->--%>
<%--    <div class="product-item">--%>
<%--        <img src="image/image1.jpg" alt="智能手机" class="product-image">--%>
<%--        <h2 class="product-title">智能手机</h2>--%>
<%--        <p class="product-description">--%>
<%--            这款智能手机拥有高性能处理器，具备高清大屏显示，拍照功能强大，能满足您日常的多种使用需求，无论是娱乐还是工作都能轻松应对。--%>
<%--        </p>--%>
<%--        <p class="product-price">价格：¥ 3999</p>--%>
<%--        <button class="add-to-cart-button" onclick="addToCart('智能手机')">加入购物车</button>--%>
<%--    </div>--%>

<%--    <!-- 笔记本电脑商品项 -->--%>
<%--    <div class="product-item">--%>
<%--        <img src="image/image2.jpg" alt="笔记本电脑" class="product-image">--%>
<%--        <h2 class="product-title">笔记本电脑</h2>--%>
<%--        <p class="product-description">--%>
<%--            轻薄便携的笔记本电脑，搭载先进的处理器和高性能显卡，内存充足，续航能力出色，适合办公、学习以及娱乐等多种场景使用。--%>
<%--        </p>--%>
<%--        <p class="product-price">价格：¥ 5999</p>--%>
<%--        <button class="add-to-cart-button" onclick="addToCart('笔记本电脑')">加入购物车</button>--%>
<%--    </div>--%>

<%--    <!-- 蓝牙耳机商品项 -->--%>
<%--    <div class="product-item">--%>
<%--        <img src="image/image3.jpg" alt="蓝牙耳机" class="product-image">--%>
<%--        <h2 class="product-title">蓝牙耳机</h2>--%>
<%--        <p class="product-description">--%>
<%--            真无线蓝牙耳机，音质清晰，佩戴舒适，具备降噪功能，支持蓝牙快速连接，方便您随时随地享受音乐或接听电话。--%>
<%--        </p>--%>
<%--        <p class="product-price">价格：¥ 599</p>--%>
<%--        <button class="add-to-cart-button" onclick="addToCart('蓝牙耳机')">加入购物车</button>--%>
<%--    </div>--%>

<%--</div>--%>
<%--<!-- 引入 Bootstrap JS 和 jQuery（可选） -->--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/@popper.js/core@2.5.4/dist/umd/popper.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--<script>--%>
<%--    let cartCount = 0; // 购物车商品数量初始值--%>

<%--    function addToCart(productName) {--%>
<%--        cartCount++; // 每点击一次加入购物车按钮，数量加1--%>
<%--        updateCartCount(); // 更新购物车图标上显示的数量--%>
<%--        // 这里可以添加更多逻辑，比如将商品信息发送到后台添加到购物车等--%>
<%--        console.log(`${productName} 已加入购物车`);--%>
<%--    }--%>

<%--    function updateCartCount() {--%>
<%--        $('.cart-count').text(cartCount); // 更新显示的数量文本--%>
<%--        $('.cart-count').show(); // 显示数量元素（如果之前隐藏）--%>
<%--    }--%>
<%--</script>--%>
<%--<script>--%>
<%--    function addToCart(productId) {--%>
<%--        // 使用AJAX发送添加购物车请求到后端Servlet对应的添加接口--%>
<%--        $.ajax({--%>
<%--            url: '/cart/add',--%>
<%--            type: 'POST',--%>
<%--            data: {--%>
<%--                productId: productId--%>
<%--            },--%>
<%--            success: function (response) {--%>
<%--                alert(response);--%>
<%--                // 这里可以添加逻辑刷新购物车页面，比如调用购物车页面的更新函数（假设已经有定义类似updateCartView这样的函数）--%>
<%--                // updateCartView();--%>
<%--            },--%>
<%--            error: function (error) {--%>
<%--                console.log(error);--%>
<%--                alert('添加到购物车失败，请稍后重试');--%>
<%--</script>--%>
<%--            }--%>
<%--        });--%>
<%--    </body>--%>
<%--</html>--%>