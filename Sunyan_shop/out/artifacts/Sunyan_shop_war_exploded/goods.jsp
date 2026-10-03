<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>商品详情</title>
    <!-- 引入 Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/goods.css">
</head>

<body>
<div class="product-detail-container">
    <!-- 购物车图标容器 -->
    <div class="cart-icon-container" onclick="location.href='goods_cart.jsp'">
        <svg class="cart-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
            <path d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.37-.66-.11-1.48-.87-1.48H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"/>
        </svg>
        <span class="cart-count">0</span>
    </div>

    <h1 class="product-title">商品详情</h1>

    <!-- 智能手机商品项 -->
    <div class="product-item">
        <img id="product-image-1" src="image/image1.jpg" alt="智能手机" class="product-image">
        <h2 id="product-name-1" class="product-title">智能手机</h2>
        <p class="product-description">
            这款智能手机拥有高性能处理器，具备高清大屏显示，拍照功能强大，能满足您日常的多种使用需求，无论是娱乐还是工作都能轻松应对。
        </p>
        <p id="product-price-1" class="product-price">¥ 3999</p>
        <button class="add-to-cart-button" onclick="addToCart('1')">加入购物车</button>
    </div>

    <!-- 笔记本电脑商品项 -->
    <div class="product-item">
        <img id="product-image-2" src="image/image2.jpg" alt="笔记本电脑" class="product-image">
        <h2 id="product-name-2" class="product-title">笔记本电脑</h2>
        <p class="product-description">
            轻薄便携的笔记本电脑，搭载先进的处理器和高性能显卡，内存充足，续航能力出色，适合办公、学习以及娱乐等多种场景使用。
        </p>
        <p id="product-price-2" class="product-price">¥ 5999</p>
        <button class="add-to-cart-button" onclick="addToCart('2')">加入购物车</button>
    </div>

    <!-- 蓝牙耳机商品项 -->
    <div class="product-item">
        <img id="product-image-3" src="image/image3.jpg" alt="蓝牙耳机" class="product-image">
        <h2 id="product-name-3" class="product-title">蓝牙耳机</h2>
        <p class="product-description">
            真无线蓝牙耳机，音质清晰，佩戴舒适，具备降噪功能，支持蓝牙快速连接，方便您随时随地享受音乐或接听电话。
        </p>
        <p id="product-price-3" class="product-price">¥ 599</p>
        <button class="add-to-cart-button" onclick="addToCart('3')">加入购物车</button>
    </div>
</div>

<!-- 引入 jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
    // 添加商品到购物车
    function addToCart(productId) {
        // 获取商品名称、价格等信息
        var productName = $("#product-name-" + productId).text();
        var productPrice = $("#product-price-" + productId).text().replace('¥', '').trim();  // 去掉“¥”符号
        var productImageUrl = $("#product-image-" + productId).attr("src");

        // 将商品信息作为请求参数发送给后台
        $.ajax({
            url: '/Sunyan_shop_war_exploded/cart/add',  // 发送请求到后台添加商品到购物车
            type: 'POST',
            data: {
                productId: productId,
                productName: productName,
                productPrice: productPrice,
                productImageUrl: productImageUrl
            },
            success: function(response) {
                // 更新购物车图标上的数量
                $('.cart-count').text(response.cartCount);
                $('.cart-count').show();
            },
            error: function(error) {
                console.log(error);
                alert('添加到购物车失败，请稍后重试');
            }
        });
    }

    // 更新购物车数量
    function updateCartCount() {
        $.ajax({
            url: '/Sunyan_shop_war_exploded/cart/count',  // 获取购物车中商品数量的接口
            type: 'GET',
            success: function (response) {
                $('.cart-count').text(response.cartCount);
                $('.cart-count').show();
            }
        });
    }

    // 页面加载时获取购物车数量
    $(document).ready(function() {
        updateCartCount();
    });
</script>

</body>
</html>
