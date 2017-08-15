package com.templestay_portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.templestay_portal.dao.IDaoReservation;
import com.templestay_portal.model.ModelReservation;

@Service("servicereservation")
public class ServiceReservation implements IServiceReservation {

    @Autowired
    @Qualifier("daoreservation")
    IDaoReservation dao;
    
    @Override
    public ModelReservation getReservation(ModelReservation reservation) {
        ModelReservation result = null;
        try {
            result = dao.getReservation(reservation);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    
    @Override
    public List<ModelReservation> getReservationList(
            ModelReservation reservation) {
        List<ModelReservation> result = null;
        try {
            result = dao.getReservationList(reservation);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    
    @Override
    public int insertReservation(ModelReservation reservation) {
        int result = -1;
        try {
            result = dao.insertReservation(reservation);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    
    @Override
    public int updateReservation(ModelReservation updateValue,
            ModelReservation searchValue) {
        int result = -1;
        try {
            result = dao.updateReservation(updateValue, searchValue);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
    
    @Override
    public int deleteReservation(ModelReservation reservation) {
        int result = -1;
        try {
            result = dao.deleteReservation(reservation);
        } catch (Exception e) {
            e.getMessage();
        }
        return result;
    }
}
