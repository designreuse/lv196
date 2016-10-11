package com.softserve.edu.delivery.repository;


import com.softserve.edu.delivery.domain.Order;
import com.softserve.edu.delivery.domain.OrderStatus;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface OrderRepository extends BaseRepository<Order, Long> {

    List<Order> findOrderByCustomerEmailAndOrderStatus(String email, OrderStatus os);
    Long removeById(Long id);

    @Query("select concat(off.car.driver.firstName, ' ', off.car.driver.lastName) " +
            "from Offer off where off.order.id = :id and off.approved = true")
    Optional<String> findDriverNameByOrderId(@Param("id") Long id);

    @Query("select count(off.offerId)" +
            "from Offer off where off.order.id = :id")
    Long countOffers(@Param("id") Long id);

    @Query("select o from Order o where o.orderStatus = 'OPEN'")
    List<Order> getAllOpenOrder();
}
