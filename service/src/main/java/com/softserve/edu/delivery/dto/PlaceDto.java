package com.softserve.edu.delivery.dto;

import com.softserve.edu.delivery.domain.Point;
import com.softserve.edu.delivery.domain.RouteCities;
/**
 * Created by Natalia on 02.10.2016.
 */
public class PlaceDto {
    private Long id;
    private Long orderId;
    private Point point;
    private String date;

    public PlaceDto(){}

    public PlaceDto(Point point, String date, Long orderId) {
        this.point = point;
        this.date = date;
        this.orderId = orderId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Point getPoint() {
        return point;
    }

    public static PlaceDto convertEntity(RouteCities routeCities){
        return new PlaceDto(new Point(routeCities.getX(), routeCities.getY()), routeCities.getVisitDate().toString(), routeCities.getOrder().getId());
    }

    @Override
    public String toString() {
        return "PleaceDto{" +
                "id=" + id +
                ", date=" + date +
                '}';
    }
}
