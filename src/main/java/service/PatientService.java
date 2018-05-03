package service;

import domain.Patient;
import repository.PatientRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;
@Stateless
public class PatientService implements PatientServiceLocal {

    @Inject
    PatientRepository patientRepository;

    @Override
    public void addPatient(Patient patient){
        patientRepository.addPatient(patient);
    }
}
