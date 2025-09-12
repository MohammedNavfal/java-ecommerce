package demorkmjava.dto;


import demorkmjava.model.Cart;
import demorkmjava.model.Product;

public class CartItemDto {

    private final Cart cart;
    private final Product product;

    public CartItemDto(Cart cart, Product product) {
        this.cart = cart;
        this.product = product;
    }

    public Cart getCart() {
        return cart;
    }

    public Product getProduct() {
        return product;
    }
}
