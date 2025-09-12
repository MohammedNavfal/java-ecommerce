package demorkmjava.repository;

import demorkmjava.model.Cart;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> { /* Use Integer to match the id type
    @Modifying
    @Transactional
    @Query("UPDATE Cart c SET c.productId = :productId WHERE c.id = :id")
    void updateProductIdById(Integer id, Integer productId);*/
    // Fetch cart items by user_id
    //@Query("SELECT c FROM Cart c WHERE c.userId = :userId")
   // List<Cart> findByUserId(@Param("userId") Integer userId);

    // Fetch cart items by session_id
    //@Query("SELECT c FROM Cart c WHERE c.sessionId = :sessionId")
    //List<Cart> findBySessionId(@Param("sessionId") String sessionId);

    List<Cart> findByUserId(Integer userId);
    List<Cart> findBySessionId(String sessionId);
    Optional<Cart> findByUserIdAndProductId(Integer userId, Integer productId);
    Optional<Cart> findBySessionIdAndProductId(String sessionId, Integer productId);

    Optional<Cart> findByIdAndSessionId(Integer cartId, String sessionId);
    Optional<Cart> findByIdAndUserId(Integer cartId, Integer userId);








}
