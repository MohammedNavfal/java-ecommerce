package demorkmjava.controller;


import demorkmjava.model.Product;
import demorkmjava.repository.ProductRepository;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MyController implements ErrorController {

    @Autowired
    private ProductRepository productRepository;


    // Home page - Set a session attribute for user_id
    @GetMapping("/home")
    public String home(HttpSession session , Model model) {
        //String userId = "exampleUser123";  // Store user_id as String (non-numeric)


        // Retrieve the 'user_id' attribute from the session if it exists
       // String userId = (String) session.getAttribute("user_id");
        //Integer userId = (Integer) session.getAttribute("user_id");
        Integer userId = 2;

        // If 'user_id' exists, use it; otherwise, set it to null
        Integer userIdValue = (userId != null) ? userId : null;

        // Get the current session ID
        String sessionId = session.getId();

        // Add 'userId' and 'sessionId' to the session (not just the model)
        session.setAttribute("sessionId", sessionId);
        session.setAttribute("userId", userIdValue);

        // Add 'userId' and 'sessionId' to the model for use in JSP
        model.addAttribute("userId", userIdValue);
        model.addAttribute("sessionId", sessionId);

        // Optionally log or debug the session details (e.g., for troubleshooting)
        System.out.println("Session ID: " + sessionId);
        System.out.println("User ID: " + userIdValue);

        // Optionally set 'user_id' in the session if it doesn't exist (for first-time users)
        //if (userIdValue == null) {
         //   session.setAttribute("user_id", "guest");  // Default value for guests
        //    System.out.println("User ID set to 'guest'");
       // }



        //session.setAttribute("user_id", userId);  // Store in session
        return "index";  // This will map to index.jsp
    }


    // Navfal page - Access session attribute
    @GetMapping("/navfal")
    public String navfal(HttpSession session, Model model) {
       // String userId = (String) session.getAttribute("user_id");
       // model.addAttribute("userId", userId);  // Pass userId to the view
        return "navfal";  // This will map to navfal.jsp
    }

    // About page - Access session attribute
    @GetMapping("/about")
    public String about(HttpSession session, Model model) {
       // String userId = (String) session.getAttribute("user_id");
        //model.addAttribute("userId", userId);  // Pass userId to the view
        return "about-us";  // This will map to about-us.jsp
    }
    // Assuming you're redirecting users to the cart






    @GetMapping("/contact")
    public String contact(HttpSession session, Model model) {
      //  String userId = (String) session.getAttribute("user_id");
       // model.addAttribute("userId", userId);  // Pass userId to the view
        return "contact";  // This will map to contact.jsp
    }

    /*@GetMapping("/cart")
    public String cart(HttpSession session, Model model) {
        String userId = (String) session.getAttribute("user_id");
        model.addAttribute("userId", userId);  // Pass userId to the view
        return "cart";  // This will map to cart.jsp
    }*/

    // Product-specific pages
    @GetMapping("/aerox")
    public String aerox(HttpSession session, Model model) {



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

        //String userId = (String) session.getAttribute("user_id");
      //  model.addAttribute("userId", userId);  // Pass userId to the view

        // Fetch products by their IDs
        Optional<Product> product1 = productRepository.findById(1);
        Optional<Product> product2 = productRepository.findById(2);

        // Add products to model
        if (product1.isPresent()) {
            model.addAttribute("product1", product1.get());
        } else {
            model.addAttribute("error1", "Product 1 not found");
        }

        if (product2.isPresent()) {
            model.addAttribute("product2", product2.get());
        } else {
            model.addAttribute("error2", "Product 2 not found");
        }

        return "product-aerox";  // This will map to product-aerox.jsp
    }

    @GetMapping("/fz")
    public String fz(HttpSession session, Model model) {
       // String userId = (String) session.getAttribute("user_id");
       // model.addAttribute("userId", userId);  // Pass userId to the view
        return "product-fz";  // This will map to product-fz.jsp
    }




    // Fetching all products from the database using ProductService

    // Error page - Use @GetMapping for error handling
    @GetMapping("/error")
    public String handleError() {
        return "error";  // This will map to error.jsp
    }

    // Additional product pages as needed
}


