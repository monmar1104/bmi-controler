package repository;

import domain.BMIDetails;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class BMIDetailsRepository {
    @PersistenceContext(unitName = "perUnit")
    EntityManager entityManager;

    public void addBMIDetails(BMIDetails bmiDetails){
        entityManager.persist(bmiDetails);
    }
}
