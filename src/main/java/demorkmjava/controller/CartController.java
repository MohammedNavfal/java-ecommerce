package demorkmjava.controller;

import demorkmjava.dto.CartItemDto;
import demorkmjava.model.Cart;
import demorkmjava.repository.CartRepository;
import demorkmjava.service.CartService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
public class CartController {

    private final CartService cartService;

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/cart")
    public String getCart(HttpSession session, Model model) {
        //Integer userId = null; // Assume user ID is 1 for this example
       // String sessionId="g3vpv3ggqrksvt62vvfmvp19or";

        List<CartItemDto> cartItems;
        // Retrieve sessionId from session
        String sessionId = (String) session.getAttribute("sessionId");

        // Retrieve the userId from session if needed
        Integer userId = (Integer) session.getAttribute("userId");

        // Add sessionId and userId to the model
        model.addAttribute("sessionId", sessionId);
        model.addAttribute("userId", userId);

        // Optionally log or debug the session details (e.g., for troubleshooting)
        System.out.println("Session ID: " + sessionId);
        System.out.println("Session ID: " + sessionId);
        System.out.println("Session ID: " + sessionId);
        System.out.println("userid ID: " + userId);


        if(userId != null) {
             cartItems = cartService.getCartItemsWithProductDetails(userId);
        }else{
             cartItems = cartService.getCartItemsWithProductDetails(sessionId);
        }
        model.addAttribute("cartItems", cartItems);
        return "cart";
    }

    @PostMapping("/add")
    public ResponseEntity<String> addToCart(
            @RequestParam Integer productId,
            @RequestParam Integer quantity,
            HttpSession session,
            @RequestParam(required = false) Integer userId) {
        // Ensure sessionId exists for every user
        String sessionId = (String) session.getAttribute("sessionId");
        if (sessionId == null) {
            sessionId = UUID.randomUUID().toString();
            session.setAttribute("sessionId", sessionId);}
            // Making userId optional
        if (userId == null) {
            // If userId is not provided, you can either set it to null or handle it as needed
            userId = null;  // Explicitly setting it to null
        }
        System.out.println("ProductId: " + productId);
        System.out.println("Quantity: " + quantity);
        System.out.println("SessionId: " + sessionId);
        System.out.println("SessionId: " + sessionId);

        System.out.println("UserId: " + userId);

        try {
            cartService.addToCart(productId, quantity, sessionId, userId);
        } catch (Exception e) {
            e.printStackTrace(); // Logs any error
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add item to cart.");
        }


        return ResponseEntity.ok("Item added to cart successfully.");
    }

    @DeleteMapping("/remove")
    public ResponseEntity<String> removeCartItem(
            @RequestParam Integer cartId,
            HttpSession session) {

        try {
            // Get or generate sessionId internally (no need from frontend)
            String sessionId = (String) session.getAttribute("sessionId");
            if (sessionId == null) {
                sessionId = java.util.UUID.randomUUID().toString();
                session.setAttribute("sessionId", sessionId);
            }

            // Get userId if logged in
            Integer userId = (Integer) session.getAttribute("userId");

            // Debug: print values to console
            System.out.println("Cart ID: " + cartId);
            System.out.println("User ID: " + userId);
            System.out.println("Session ID: " + sessionId);

            // If both userId and sessionId are null somehow, return error
            if (userId == null && sessionId == null) {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                        .body("Either userId or sessionId must be available.");
            }

            // Call service with userId or sessionId
            cartService.removeItemFromCart(cartId, sessionId, userId);

            return ResponseEntity.ok("Item removed from cart successfully.");
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }

    @PostMapping("/update")
    public ResponseEntity<String> updateCartItem(
            @RequestParam Integer cartId,
            @RequestParam Integer quantity,
            HttpSession session) {

        try {
            String sessionId = (String) session.getAttribute("sessionId");
            if (sessionId == null) {
                sessionId = java.util.UUID.randomUUID().toString();
                session.setAttribute("sessionId", sessionId);
            }

            Integer userId = (Integer) session.getAttribute("userId");

            System.out.println("Update Cart ID: " + cartId);
            System.out.println("New Quantity: " + quantity);
            System.out.println("User ID: " + userId);
            System.out.println("Session ID: " + sessionId);

            cartService.updateCartQuantity(cartId, quantity, sessionId, userId);

            return ResponseEntity.ok("Cart quantity updated successfully.");
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }





}

   /* @Autowired
    private CartRepository cartRepository;

    @GetMapping("/cartpre")
    public String cartpre(Model model) {
        // Fetch products by their IDs
        Optional<Cart> cart1 = cartRepository.findById(52);
        Optional<Cart> cart2 = cartRepository.findById(53);

        // Add products to model
        if (cart1.isPresent()) {
            model.addAttribute("cart1", cart1.get());
        } else {
            model.addAttribute("error1", "cart 1 not found");
        }

        if (cart2.isPresent()) {
            model.addAttribute("cart2", cart2.get());
        } else {
            model.addAttribute("error2", "cart 2 not found");
        }

        return "cartpre"; // Return the JSP view name
    }

    @GetMapping("/cart")
    public String cart(Model model) {
        // Fetch all cart items
        List<Cart> allCartItems = cartRepository.findAll();

        // Add cart items to the model
        model.addAttribute("allCartItems", allCartItems);

        return "cart"; // Return the JSP view name
    }

    @PostMapping("/updateCartProductId")
    public String updateCartProductId(Model model) {
        try {
            cartRepository.updateProductIdById(52, 1);
            model.addAttribute("message", "Product ID updated successfully.");
        } catch (Exception e) {
            model.addAttribute("message", "Failed to update Product ID: " + e.getMessage());
        }
        return "redirect:/cart";
    }

    @PostMapping("/insertStaticCart")
    public String insertStaticCart() {
        Cart cart = new Cart();
        cart.setId(1);
        cart.setProductId(26);
        cart.setQuantity(9);
        cart.setSessionId("g3vpv3ggqrksvt62vvfmvp1nav");
        cart.setUserId(null); // Optional
        cart.setAddedAt(LocalDateTime.of(1999, 11, 19, 10, 49, 55));

        try {
            cartRepository.save(cart);
        } catch (ObjectOptimisticLockingFailureException e) {
            // Handle the conflict - e.g., notify the user, retry the operation, etc.
        }





        return "redirect:/cart";
    }*/
/*
    @GetMapping("/cart-u-s")
    public String getCart(Model model) {
        Long userId = 1L; // Assume user ID is 1 for this example
        List<CartItemDto> cartItems_u = cartService.getCartItemsWithProductDetails(userId);
        List<CartItemDto> cartItems_s = cartService.getCartItemsWithProductDetails(sessionId);
        model.addAttribute("cartItems", cartItems);
        return "cart";
    }
*/
