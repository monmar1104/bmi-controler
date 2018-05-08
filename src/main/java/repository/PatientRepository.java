package repository;

import domain.Patient;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class PatientRepository {
    @PersistenceContext(unitName = "perUnit")
    EntityManager entityManager;

    public void addPatient(Patient patient){
        entityManager.persist(patient);
    }
    public Patient getPatientByEmail(String email){
        return (Patient) entityManager.createNamedQuery("getPatientByEmail").setParameter("email",email).getResultList().stream().findFirst().orElse(null);
    }

}
