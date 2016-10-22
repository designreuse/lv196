package com.softserve.edu.delivery.service.impl;

import com.softserve.edu.delivery.dao.OrderDao;
import com.softserve.edu.delivery.domain.*;
import com.softserve.edu.delivery.dto.FeedbackDTO;
import com.softserve.edu.delivery.dto.LocationDto;
import com.softserve.edu.delivery.dto.OfferDtoForList;
import com.softserve.edu.delivery.dto.OrderDto;
import com.softserve.edu.delivery.repository.*;
import com.softserve.edu.delivery.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private CityRepository cityRepository;
    @Autowired
    private OfferRepository offerRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private FeedbackRepository feedbackRepository;

    @Override
    @Transactional(readOnly = true)
    public List<OrderDto> findInProgressOrders(String email) {
        return orderRepository
                .findOrderInProgressByCustomerEmail(email)
                .stream()
                .map(OrderDto::ofContainer)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional(readOnly = true)
    public List<OrderDto> findOpenOrders(String email) {
        return Stream.of(
                orderRepository
                .findOrderOpenWithOffersByCustomerEmail(email),
                orderRepository
                .findOrderOpenWithoutOffersByCustomerEmail(email))
                .flatMap(Collection::stream)
                .map(OrderDto::ofContainer)
                .collect(Collectors.toList());
    }

    @Override
    public void addOrder(OrderDto dto, String email) {
        requireLocationsNonNull(dto.getLocationFrom(), dto.getLocationTo());

        User customer = userRepository.findOneOpt(email)
                .orElseThrow(() -> new IllegalArgumentException("No such user with email: " + email));

        Order order = new Order()
                .setCustomer(customer)
                .setOrderStatus(OrderStatus.OPEN)
                .setRegistrationDate(new Timestamp(new Date().getTime()));

        saveOrder(order, dto);
    }

    @Override
    public void updateOrder(OrderDto dto, String email) {
        requireLocationsNonNull(dto.getLocationFrom(), dto.getLocationTo());

        Order order = orderRepository.findOrderByIdAndCustomerEmail(dto.getId(), email)
                .orElseThrow(() -> new IllegalArgumentException(
                        "No such order with id: " + dto.getId() + " for user with email: " + email));

        saveOrder(order, dto);
    }

    private void saveOrder(Order order, OrderDto dto) {
        City from = cityRepository.findOneOpt(dto.getLocationFrom().getCityId())
                .orElseThrow(() -> new IllegalArgumentException("No such city with id: " + dto.getLocationFrom().getCityId()));

        City to = cityRepository.findOneOpt(dto.getLocationTo().getCityId())
                .orElseThrow(() -> new IllegalArgumentException("No such city with id: " + dto.getLocationTo().getCityId()));

        orderRepository.save(order
                .setCityFrom(from)
                .setCityTo(to)
                .setArrivalDate(dto.getArrivalDate())
                .setHeight(dto.getHeight())
                .setWidth(dto.getWidth())
                .setLength(dto.getLength())
                .setWeight(dto.getWeight())
                .setDescription(dto.getDescription()));
    }

    private void requireLocationsNonNull(LocationDto from, LocationDto to) {
        Objects.requireNonNull(from, "Departure city cannot be null");
        Objects.requireNonNull(to, "Arrival city cannot be null");
    }

    @Override
    public void removeOrder(Long id) {
        orderRepository.removeById(id);
    }

    @Override
    public void addFeedback(FeedbackDTO dto, String email) {
        if (dto == null) {
            throw new IllegalArgumentException("Feedback dto must not be null");
        }

        User user = userRepository.findOneOpt(email)
                .orElseThrow(() -> new IllegalArgumentException("No such user with email: " + email));
        /*changed by Ivan Rudnytskyi - the structure of FeedbackDTO was changed - entities Order and User are removed.
        *to get User use feedbackDTO.getUserId(), Order - feedbackDTO.getOrderId()
         */
        Order order = orderRepository.findOneOpt(dto.getOrderId())
                .orElseThrow(() -> new IllegalArgumentException("No such order with id: " + dto.getOrderId()));

        Feedback feedback = new Feedback();
        feedback.setOrder(order);
        feedback.setUser(user);
        feedback.setRate(dto.getRate());
        feedback.setText(dto.getText());
        feedback.setApproved(false);
        feedback.setCreatedOn(new Timestamp(new Date().getTime()));
        feedbackRepository.save(feedback);
    }

    @Override
    public void changeStatus(Long offerId, Boolean offerStatus, Long orderId) {
        offerRepository.findOfferByOrderIdAndChangeStatus(orderId);
        Offer offer = offerRepository.findOneOpt(offerId)
                .orElseThrow(() -> new IllegalArgumentException("No such offer with id: " + offerId));
        offer.setApproved(offerStatus);
        offerRepository.save(offer);
    }

    @Override
    @Transactional(readOnly = true)
    public List<OrderDto> findAllClosedOrders(String email) {
        return orderDao
                .findClosedOrders(email)
                .stream()
                .map(order -> {
                    OrderDto dto = OrderDto.of(order);
                    String name = orderRepository
                            .findDriverNameByOrderId(dto.getId())
                            .orElse(null);
                    String carPhoto = orderRepository
                            .findCarPhotoByOrderId(dto.getId())
                            .orElse(null);
                    dto.setDriverName(name);
                    dto.setCarPhoto(carPhoto);
                    return dto;
                })
                .collect(Collectors.toList());
    }

    @Override
    @Transactional(readOnly = true)
    public List<OfferDtoForList> getOffersByOrderId(Long orderId) {
        return offerRepository
                .getAllOffersByOrderId(orderId)
                .stream()
                .map(offer -> {
                    OfferDtoForList dto = OfferDtoForList.offerToOfferDto(offer);
                    String name = orderRepository
                            .findDriverNameByOfferId(dto.getOfferId())
                            .orElse(null);
                    String carPhoto = orderRepository
                            .findCarPhotoByOrderId(dto.getOfferId())
                            .orElse(null);
                    Integer rate = orderRepository
                            .findRateByOfferId(dto.getOfferId())
                            .orElse(null);
                    dto.setDriverName(name);
                    dto.setCarPhoto(carPhoto);
                    dto.setRate(rate);
                    return dto;
                })
                .collect(Collectors.toList());
    }

    @Override
    public void updateFeedback(FeedbackDTO dto, String email) {
        Feedback feedback = feedbackRepository.findOneOpt(dto.getFeedbackId())
                .orElseThrow(() -> new IllegalArgumentException("No such feedback with id: " + dto.getFeedbackId()));
        feedback.setRate(dto.getRate());
        feedback.setText(dto.getText());
        feedbackRepository.save(feedback);
    }

    @Override
    public FeedbackDTO getFeedback(Long orderId) {
        Feedback feedback = feedbackRepository
                .getFeedbackByOrderId(orderId)
                .stream()
                .findFirst()
                .orElse(null);
        FeedbackDTO feedbackDTO = new FeedbackDTO();
        feedbackDTO.setCreatedOn(feedback.getCreatedOn());
        feedbackDTO.setApproved(feedback.getApproved());
        feedbackDTO.setText(feedback.getText());
        feedbackDTO.setRate(feedback.getRate());
        feedbackDTO.setFeedbackId(feedback.getFeedbackId());
        feedbackDTO.setOrderId(feedback.getOrder().getId());
        feedbackDTO.setUserEmail(feedback.getUser().getEmail());
        return feedbackDTO;
    }

    @Override
    public List<OrderDto> getOrdersFiltered(Long cityFromId, Long cityToId, BigDecimal weight, Timestamp arrivalDate) {
        return orderRepository
                .getOrdersFiltered(cityFromId, cityToId, weight, arrivalDate)
                .stream()
                .map(OrderDto::of)
                .collect(Collectors.toList());
    }

    @Override
    public List<OrderDto> getAllOpenOrder() {
        return orderRepository
                .getAllOpenOrder()
                .stream()
                .map(OrderDto::of)
                .collect(Collectors.toList());
    }

    @Override
    public OrderDto getOrderById(Long orderId) {
        Order order = orderRepository.findOne(orderId);
        if(order == null ) {
            return null;
        }
        return OrderDto.of(order);
    }
}
