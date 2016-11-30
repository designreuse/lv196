package com.softserve.edu.delivery.controller;

import com.softserve.edu.delivery.dto.FeedbackDto;
import com.softserve.edu.delivery.dto.OfferDto;
import com.softserve.edu.delivery.dto.OfferInfoDto;
import com.softserve.edu.delivery.dto.OrderDto;
import com.softserve.edu.delivery.service.FeedbackService;
import com.softserve.edu.delivery.service.NotificationService;
import com.softserve.edu.delivery.service.OfferService;
import com.softserve.edu.delivery.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

import static com.softserve.edu.delivery.config.SecurityConstraints.CUSTOMER_OR_DRIVER;

@RestController
@RequestMapping(path = "order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OfferService offerService;

    @Autowired
    private FeedbackService feedbackService;

    @Autowired
    private NotificationService notification;

    Logger logger = LoggerFactory.getLogger(OrderController.class.getName());

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "in-progress", method = RequestMethod.GET)
    List<OrderDto> inProgress(Principal principal) {
        return orderService.findInProgressOrders(principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "open", method = RequestMethod.GET)
    List<OrderDto> open(Principal principal) {
        return orderService.findOpenOrders(principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "closed", method = RequestMethod.GET)
    List<OrderDto> closed(Principal principal) {
        return orderService.findAllClosedOrders(principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(method = RequestMethod.POST)
    void addOrder(@RequestBody OrderDto dto, Principal principal) {
        orderService.addOrder(dto, principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(method = RequestMethod.PUT)
    void updateOrder(@RequestBody OrderDto dto, Principal principal) {
        orderService.updateOrder(dto, principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "{id}", method = RequestMethod.DELETE)
    void removeOrder(@PathVariable Long id) {
        notification.removeOrder(id);
        orderService.removeOrder(id);
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "addfeedback", method = RequestMethod.POST)
    void addFeedback(@RequestBody FeedbackDto dto, Principal principal) {
        feedbackService.addFeedback(dto, principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "addfeedback", method = RequestMethod.PUT)
    void updateFeedback(@RequestBody FeedbackDto dto, Principal principal) {
        feedbackService.updateFeedback(dto);
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "getFeedback/{id}", method = RequestMethod.GET)
    FeedbackDto getFeedback(@PathVariable Long id, Principal principal) {
        FeedbackDto dto = feedbackService.getFeedback(id, principal.getName());
            return dto;
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "change", method = RequestMethod.PUT)
    void changeOfferStatus(@RequestBody OfferDto offerDto) {
        offerService.changeStatus(offerDto.getOfferId(),offerDto.isApproved(),offerDto.getOrderId());
        notification.changeOfferStatus(offerDto);
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "offers/{id}", method = RequestMethod.GET)
    List<OfferDto> getOffersByOrderId(@PathVariable Long id) {
        return offerService.getOffersByOrderId(id);
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "offer/{id}", method = RequestMethod.GET)
    List<OfferInfoDto> findDriverNames(@PathVariable Long id) {
        return offerService.findDriverNamesByOrderId(id);
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "offer-info/{offerId}", method = RequestMethod.GET)
    OfferInfoDto offerInfo(@PathVariable Long offerId, Principal principal) {
        return offerService.findOfferInfo(offerId, principal.getName());
    }

    @PreAuthorize(CUSTOMER_OR_DRIVER)
    @RequestMapping(path = "approve-delivery", method = RequestMethod.PUT)
    void approveDelivery(@RequestBody Long orderId) {
        orderService.approveDelivery(orderId);
        notification.customerApproveDelivery(orderId);
    }
}
