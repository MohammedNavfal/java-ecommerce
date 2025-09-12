package demorkmjava.model;

import jakarta.persistence.*;

@Entity
@Table(name = "products") // Specifies the table name
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Matches the "integer" type in the database

    @Column(nullable = false, length = 255)
    private String name;

    @Column(columnDefinition = "TEXT") // Matches the "text" type in the database
    private String description;

    @Column(nullable = false) // Matches "numeric(10,2)" for the "price"
    private Double price;

    @Column(nullable = false, length = 255)
    private String image;

    // Getters and setters
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
