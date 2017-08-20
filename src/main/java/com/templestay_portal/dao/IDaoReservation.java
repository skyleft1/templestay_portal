package com.templestay_portal.dao;

import java.util.List;

import com.templestay_portal.model.ModelReservation;

public interface IDaoReservation {
    
    ModelReservation getReservation(ModelReservation reservation);
    List<ModelReservation> getReservationList(String userid);
    
    int insertReservation(ModelReservation reservation);
    int updateReservation(ModelReservation updateValue, ModelReservation searchValue);
    int deleteReservation(int reservationno);
    
}
