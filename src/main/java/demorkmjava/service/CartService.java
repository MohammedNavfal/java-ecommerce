package demorkmjava.service;


import demorkmjava.dto.CartItemDto;
import demorkmjava.model.Cart;
import demorkmjava.model.Product;
import demorkmjava.repository.CartRepository;
import demorkmjava.repository.ProductRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional // Ensures transactions are committed
public class CartService {

    private final CartRepository cartRepository;
    private final ProductRepository productRepository;

    public CartService(CartRepository cartRepository, ProductRepository productRepository) {
        this.cartRepository = cartRepository;
        this.productRepository = productRepository;
    }

    public List<CartItemDto> getCartItemsWithProductDetails(Integer userId) {
        List<Cart> cartItems = cartRepository.findByUserId(userId);

        return cartItems.stream().map(cart -> {
            Product product = productRepository.findById(cart.getProductId())
                    .orElseThrow(() -> new RuntimeException("Product not found"));
            return new CartItemDto(cart, product);
        }).collect(Collectors.toList());
    }

    public List<CartItemDto> getCartItemsWithProductDetails(String sessionId) {
        List<Cart> cartItems = cartRepository.findBySessionId(sessionId);

        return cartItems.stream().map(cart -> {
            Product product = productRepository.findById(cart.getProductId())
                    .orElseThrow(() -> new RuntimeException("Product not found"));
            return new CartItemDto(cart, product);
        }).collect(Collectors.toList());
    }

    public void addToCart(Integer productId, Integer quantity, String sessionId, Integer userId) {
        Optional<Cart> existingCartItem;

        if (userId != null) {
            // Check if the product already exists in the cart for this user
            existingCartItem = cartRepository.findByUserIdAndProductId(userId, productId);
            System.out.println("Check if the product already exists in the cart for this user");
        } else {
            // Check if the product already exists in the cart for this session
            existingCartItem = cartRepository.findBySessionIdAndProductId(sessionId, productId);
            System.out.println("Check if the product already exists in the cart for this session");
        }

        if (existingCartItem.isPresent()) {
            // Update the quantity if the item already exists
            Cart cart = existingCartItem.get();
            cart.setQuantity(cart.getQuantity() + quantity);
            cart.setAddedAt(LocalDateTime.now()); // Update timestamp
            cartRepository.save(cart);
            System.out.println("Updated cart item quantity.");
        } else {
            // Insert new cart item if it doesn't exist
            Cart cart = new Cart();
            cart.setProductId(productId);
            cart.setQuantity(quantity);
            cart.setSessionId(sessionId);
            cart.setUserId(userId);
            cart.setAddedAt(LocalDateTime.now());

            System.out.println("Saving new cart item: " + cart);
            cartRepository.save(cart);
            System.out.println("Saved new cart item.");
        }


        /*Cart cart = new Cart();
        cart.setProductId(productId);
        cart.setQuantity(quantity);
        cart.setSessionId(sessionId);
        cart.setUserId(userId);
        cart.setAddedAt(LocalDateTime.now());

        System.out.println("Saving cart item: " + cart);
        cartRepository.save(cart);
        System.out.println("Saved cart item.");*/
    }

    public void removeItemFromCart(Integer cartId, String sessionId, Integer userId) {
        Optional<Cart> cartItem;

        if (userId != null) {
            // Check by userId
            cartItem = cartRepository.findByIdAndUserId(cartId, userId);
        } else {
            // Check by sessionId
            cartItem = cartRepository.findByIdAndSessionId(cartId, sessionId);
        }

        if (cartItem.isPresent()) {
            cartRepository.delete(cartItem.get());
            System.out.println("Removed item with ID " + cartId + " for " + (userId != null ? "user " + userId : "session " + sessionId));
        } else {
            throw new RuntimeException("Cart item not found for provided criteria.");
        }
    }

    public void updateCartQuantity(Integer cartId, Integer quantity, String sessionId, Integer userId) {
        Optional<Cart> cartItem;

        if (userId != null) {
            cartItem = cartRepository.findByIdAndUserId(cartId, userId);
        } else {
            cartItem = cartRepository.findByIdAndSessionId(cartId, sessionId);
        }

        if (cartItem.isPresent()) {
            Cart cart = cartItem.get();
            cart.setQuantity(quantity);
            cartRepository.save(cart);
            System.out.println("Updated cart ID " + cartId + " to quantity " + quantity);
        } else {
            throw new RuntimeException("Cart item not found for update.");
        }
    }


}


