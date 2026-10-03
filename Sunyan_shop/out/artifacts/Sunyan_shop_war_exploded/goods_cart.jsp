<%@ page import="model.Cart" %>
<%@ page import="model.CartItem" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>购物车</title>
  <!-- 引入 Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/goods_cart.css">
</head>

<body>
<div class="cart-items">
  <header class="cart-header">
    <h2>购物车</h2>
  </header>

  <%-- 从 session 获取购物车对象 --%>
  <%
    // 获取 session 中的购物车对象
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart != null && cart.getItems() != null && !cart.getItems().isEmpty()) {
      for (CartItem item : cart.getItems()) {
  %>
  <div class="cart-item-container">
    <img src="<%= item.getProduct().getImageUrl() %>" alt="<%= item.getProduct().getName() %>商品图片" class="cart-item-image" loading="lazy">
    <div class="cart-item-info">
      <h3>
        <a href="#"> <%= item.getProduct().getName() %> </a>
      </h3>
      <h3 class="price">价格：¥ <%= item.getProduct().getPrice() %></h3>
      <button class="delete-button" onclick="deleteItem('<%= item.getProduct().getId() %>')">删除</button>
    </div>
  </div>
  <%
    }
  } else {
  %>
  <p>购物车为空！</p>
  <%
    }
  %>

  <footer class="cart-footer">
    <div class="total-price">
      订单总金额：¥
      <%
        double totalPrice = 0;
        if (cart != null && cart.getItems() != null) {
          for (CartItem item : cart.getItems()) {
            totalPrice += item.getProduct().getPrice() * item.getQuantity();
          }
        }
        out.print(totalPrice); // 输出总金额
      %>
    </div>
    <a class="submit-button" href="/cart/submit">提交订单</a>
  </footer>
</div>

<!-- 错误消息和加载动画 -->
<div id="error-message" style="display: none; color: red; margin-top: 10px;">删除商品失败，请稍后重试</div>
<div id="loading-spinner" class="spinner-border" role="status" style="display: none;">
  <span class="sr-only">Loading...</span>
</div>

<!-- 引入 jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
  // 删除购物车中的商品
  function deleteItem(productId) {
    document.getElementById('loading-spinner').style.display = 'block'; // 显示加载动画
    $.ajax({
      url: '/cart/delete',  // 访问 CartServlet 的 /cart/delete 接口
      type: 'POST',
      data: { productId: productId },  // 发送删除商品的 ID
      success: function(response) {
        // 如果删除成功，更新购物车页面
        location.reload();  // 刷新页面
        document.getElementById('loading-spinner').style.display = 'none';  // 隐藏加载动画
      },
      error: function(error) {
        document.getElementById('loading-spinner').style.display = 'none';  // 隐藏加载动画
        document.getElementById('error-message').style.display = 'block';  // 显示错误消息
        console.log(error);  // 打印错误日志
      }
    });
  }
</script>
</body>

</html>
