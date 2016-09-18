package com.softserve.edu.delivery.dao.impl;
/**
 * Author - Ivan Synyshyn
 */
import com.softserve.edu.delivery.dao.CityDao;
import com.softserve.edu.delivery.domain.City;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

public class CityDaoImpl extends BaseDaoImpl<City, Long> implements CityDao {
    public CityDaoImpl() {
        super(City.class);
    }

    @Override
    public List<City> getCityByName(String name) {
        EntityManager em = super.getEntityManager();
        Query query = em.createQuery("select c from City c where c.cityName = :name");
        query.setParameter("name", name);
        return query.getResultList();
    }
}
