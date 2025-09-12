<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="demorkmjava.dto.CartItemDto" %>
<%@ page import="demorkmjava.model.Cart" %>
<%@ page import="demorkmjava.model.Product" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 0; }
        .container { width: 80%; margin: 20px auto; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #f4f4f4; }
        .total { text-align: right; font-weight: bold; }
        button { padding: 6px 12px; margin: 2px; border: none; background-color: #ff4d4d; color: white; cursor: pointer; border-radius: 4px; }
        button:hover { background-color: #e60000; }
        input[type="number"] { width: 60px; padding: 4px; }
    </style>
</head>
<body>
<div class="container">
    <h1>Your Cart</h1>
    <table>
        <thead>
        <tr>
            <th>Product Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<CartItemDto> cartItems = (List<CartItemDto>) request.getAttribute("cartItems");
            double grandTotal = 0;

            if (cartItems != null && !cartItems.isEmpty()) {
                for (CartItemDto cartItem : cartItems) {
                    Cart cart = cartItem.getCart();
                    Product product = cartItem.getProduct();
                    double total = product.getPrice() * cart.getQuantity();
                    grandTotal += total;
        %>
        <tr id="row-<%= cart.getId() %>">
            <td><%= product.getName() %></td>
            <td><%= product.getDescription() %></td>
            <td>$<%= product.getPrice() %></td>
            <td>
                <input type="number" id="quantity-<%= cart.getId() %>" value="<%= cart.getQuantity() %>" min="1">
            </td>
            <td id="total-<%= cart.getId() %>">$<%= total %></td>
            <td>
                <button onclick="removeFromCart(<%= cart.getId() %>)">Remove</button>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6" style="text-align: center;">Your cart is empty.</td>
        </tr>
        <% } %>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="4" class="total">Grand Total:</td>
            <td colspan="2" id="grand-total">$<%= grandTotal %></td>
        </tr>
        </tfoot>
    </table>

    <button onclick="alert('Checkout functionality coming soon!');">Checkout</button>
</div>

<script>
    // Remove Item
    function removeFromCart(cartId) {
        if (!confirm("Are you sure you want to remove this item?")) return;

        fetch(`/remove?cartId=` + cartId, { method: "DELETE" })
            .then(response => response.text())
            .then(message => {
                alert(message);
                let row = document.getElementById("row-" + cartId);
                if (row) row.remove();
                updateGrandTotal();
            })
            .catch(error => alert("Error removing item: " + error));
    }

    // Update quantity automatically on change
    document.querySelectorAll("input[type='number']").forEach(input => {
        input.addEventListener("input", function() {
            const cartId = this.id.split('-')[1];
            const quantity = this.value;

            fetch(`/update?cartId=` + cartId + `&quantity=` + quantity, { method: "POST" })
                .then(response => response.text())
                .then(message => {
                    console.log("Updated Cart ID:", cartId, "Quantity:", quantity);
                    // Update row total
                    const priceText = document.querySelector("#row-" + cartId + " td:nth-child(3)").textContent.replace('$','');
                    const rowTotal = parseFloat(priceText) * parseInt(quantity);
                    document.getElementById("total-" + cartId).textContent = "$" + rowTotal.toFixed(2);
                    updateGrandTotal();
                })
                .catch(error => console.error("Error updating quantity:", error));
        });
    });

    // Recalculate Grand Total dynamically
    function updateGrandTotal() {
        let total = 0;
        document.querySelectorAll("tbody tr").forEach(row => {
            const totalCell = row.querySelector("td[id^='total-']");
            if (totalCell) total += parseFloat(totalCell.textContent.replace('$',''));
        });
        document.getElementById("grand-total").textContent = "$" + total.toFixed(2);
    }
</script>
</body>
</html>
