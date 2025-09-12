package demorkmjava.controller;

import demorkmjava.model.Product;
import demorkmjava.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Optional;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/product/firstAndSecond")
    public String getFirstAndSecondProducts(Model model) {
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

        return "productDetails"; // Return the JSP view name
    }
}
