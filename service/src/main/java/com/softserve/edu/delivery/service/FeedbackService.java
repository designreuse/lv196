package com.softserve.edu.delivery.service;

import com.softserve.edu.delivery.domain.Feedback;
import com.softserve.edu.delivery.domain.Order;
import com.softserve.edu.delivery.domain.User;
import com.softserve.edu.delivery.dto.FeedbackDto;
import com.softserve.edu.delivery.dto.FeedbackFilterDTO;

import java.util.List;

public interface FeedbackService {

    FeedbackDto copyFeedbackToDTO(Feedback feedback);

    Feedback copyDTOToFeedback(FeedbackDto feedbackDTO);

    List<FeedbackDto> findAll();

    void changeFeedbackStatus(Long id, boolean status);

    void save(FeedbackDto feedbackDTO);

    void update(FeedbackDto feedbackDTO);

    void delete(Long id);

    FeedbackDto findOne(Long id);

    User getUser(String email);

    Order getOrder(Long id);

    List<FeedbackDto> findFiltered(FeedbackFilterDTO feedbackFilterDTO);

    long getTotalItemsNumber(FeedbackFilterDTO feedbackFilterDTO);

    FeedbackDto findByFeedbackId(Long id);

    FeedbackDto getCustomerFeedback(Long id);

    void addFeedback (FeedbackDto dto, String email);

    FeedbackDto getFeedback (Long orderId, String email);

    void updateFeedback(FeedbackDto dto);

}
