<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!doctype html>
    <html class="no-js" lang="zxx">

    <!-- Mirrored from htmldemo.net/tm/oswan/oswan/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Sep 2024 12:45:09 GMT -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Oswan - eCommerce HTML5 Template</title>
        <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/chosen.min.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/icofont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <jsp:include page="header-w.jsp" />
        <div class="wrapper">
            <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(assets/img/banner/banner-4.jpg)">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <h2>Cart page</h2>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/home">home</a>
                            </li>
                            <li>Cart page</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="product-cart-area pt-120 pb-130">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-name">products</th>
                                            <th class="product-price">products name</th>
                                            <th class="product-name">price</th>
                                            <th class="product-price">quantity</th>
                                            <th class="product-quantity">total</th>
                                            <th class="product-subtotal">delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php if ($result->num_rows > 0) { ?>
                                        <?php while ($row = $result->fetch_assoc()) { ?>
                                        <tr id="cart-item-<?= $row['id']; ?>">
                                            <td class="product-thumbnail">
                                                <a href="#"><img src="<?= $row['image']; ?>"
                                                        alt="<?= $row['name']; ?>"></a>
                                            </td>
                                            <td class="product-name">
                                                <a href="#">
                                                    <?= $row['name']; ?>
                                                </a>
                                            </td>
                                            <td class="product-price"><span class="amount">₹
                                                    <?= number_format($row['price'], 1); ?> Lakhs
                                                </span></td>
                                            <td class="product-quantity">
                                                <div class="quantity-range">
                                                    <input class="input-text qty text" type="number" step="1"
                                                        title="Qty" size="4" id="input-quantity-<?= $row['id']; ?>"
                                                        value="<?= $row['quantity']; ?>" min="1">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">₹
                                                <?= number_format($row['price'] * $row['quantity'], 1); ?> Lakhs
                                            </td>
                                            <td class="product-cart-icon product-subtotal">
                                                <!-- Remove item button -->
                                                <button type="button" class="remove-item"
                                                    data-cart-id="<?= $row['id']; ?>"
                                                    style="background: none; border: none; color: inherit; cursor: pointer;">
                                                    <i class="ti-trash"></i> <!-- Trash icon -->
                                                </button>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                        <?php } else { ?>
                                        <tr>
                                            <td colspan="6">Your cart is empty.</td>
                                        </tr>
                                        <?php } ?>

                                        <!--<tr>
                                            <td class="product-thumbnail">
                                                <a href="#"><img src="assets/img/cart/5.jpg" alt=""></a>
                                            </td>
                                            <td class="product-name">
                                                <a href="#">Klager GSX 250 R</a>
                                            </td>
                                            <td class="product-price"><span class="amount">$1450.00</span></td>
                                            <td class="product-quantity">
                                                <div class="quantity-range">
                                                    <input class="input-text qty text" type="number" step="1" min="0" value="1" title="Qty" size="4">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">$1450.00</td>
                                            <td class="product-cart-icon product-subtotal"><a href="#"><i class="ti-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="product-thumbnail">
                                                <a href="#"><img src="assets/img/cart/6.jpg" alt=""></a>
                                            </td>
                                            <td class="product-name">
                                                <a href="#">Matrio Max</a>
                                            </td>
                                            <td class="product-price"><span class="amount">$1300.00</span></td>
                                            <td class="product-quantity">
                                                <div class="quantity-range">
                                                    <input class="input-text qty text" type="number" step="1" min="0" value="1" title="Qty" size="4">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">$1300.00</td>
                                            <td class="product-cart-icon product-subtotal"><a href="#"><i class="ti-trash"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="product-thumbnail">
                                                <a href="#"><img src="assets/img/cart/7.jpg" alt=""></a>
                                            </td>
                                            <td class="product-name">
                                                <a href="#">Demonissi Gori</a>
                                            </td>
                                            <td class="product-price"><span class="amount">$1190.00</span></td>
                                            <td class="product-quantity">
                                                <div class="quantity-range">
                                                    <input class="input-text qty text" type="number" step="1" min="0" value="1" title="Qty" size="4">
                                                </div>
                                            </td>
                                            <td class="product-subtotal">$1190.00</td>
                                            <td class="product-cart-icon product-subtotal"><a href="#"><i class="ti-trash"></i></a></td>
                                        </tr>-->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="cart-shiping-update">
                                <div class="cart-shipping">
                                    <a class="btn-style cr-btn" href="${pageContext.request.contextPath}/home">
                                        <span>continue shopping</span>
                                    </a>
                                </div>
                                <div class="update-checkout-cart">
                                    <!-- <div class="update-cart">
                                        <button class="btn-style cr-btn"><span>update</span></button>
                                    </div>-->
                                    <div class="update-cart">
                                        <a class="btn-style cr-btn" href="form.php">
                                            <span>checkout</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--<div class="row">
                        <div class="col-md-7 col-sm-6">
                            <div class="discount-code">
                                <h4>enter your discount code</h4>
                                <div class="coupon">
                                    <input type="text">
                                    <input class="cart-submit" type="submit" value="enter">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6">
                            <div class="shop-total">
                                <h3>cart total</h3>
                                <ul>
                                    <li>
                                        sub total
                                        <span>$909.00</span>
                                    </li>
                                    <li>
                                        tax
                                        <span>$9.00</span>
                                    </li>
                                    <li class="order-total">
                                        shipping
                                        <span>0</span>
                                    </li>
                                    <li>
                                        order total
                                        <span>$918.00</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="cart-btn text-center mb-15">
                                <a href="#">payment</a>
                            </div>
                            <div class="continue-shopping-btn text-center">
                                <a href="#">continue shopping</a>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />











        <script>
            // Handle Quantity Change with AJAX
            document.querySelectorAll('input[type="number"]').forEach(input => {
                input.addEventListener('change', function () {
                    const cartId = this.id.split('-')[2];  // Extract cart ID from the input ID
                    const quantity = this.value;

                    console.log('Updating quantity for Cart ID:', cartId, 'New Quantity:', quantity); // Debugging log

                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '${pageContext.request.contextPath}/cart', true);
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhr.onload = function () {
                        if (xhr.status === 200) {
                            try {
                                const response = JSON.parse(xhr.responseText);
                                if (response.status === 'success') {
                                    console.log('Quantity updated successfully');
                                    document.getElementById('quantity-' + cartId).textContent = quantity;
                                } else {
                                    console.error('Failed to update quantity');
                                }
                            } catch (e) {
                                console.error('Error parsing JSON:', e);
                                console.log('Response was:', xhr.responseText);  // Log the response again to see what it looks like
                            }
                        }
                    };
                    xhr.send('update_quantity=true&cart_id=' + cartId + '&quantity=' + quantity);
                });
            });

            // Handle Item Removal with AJAX
            document.querySelectorAll('.remove-item').forEach(button => {
                button.addEventListener('click', function () {
                    const cartId = this.getAttribute('data-cart-id');  // Get cart ID from data attribute
                    console.log('Removing item with Cart ID:', cartId); // Debugging log

                    const cartItem = document.getElementById('cart-item-' + cartId);
                    if (cartItem) {
                        cartItem.remove();
                    }

                    const xhr = new XMLHttpRequest();
                    xhr.open('POST', '${pageContext.request.contextPath}/cart', true);
                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xhr.onload = function () {
                        if (xhr.status !== 200) {
                            console.error('Failed to remove item');
                            document.body.insertAdjacentHTML('beforeend', cartItem.outerHTML);
                        } else {
                            console.log('Item removed successfully');
                        }
                    };
                    xhr.send('remove_item=true&cart_id=' + cartId);
                });
            });
        </script>



        <!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>

    <!-- Mirrored from htmldemo.net/tm/oswan/oswan/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Sep 2024 12:45:10 GMT -->

    </html>