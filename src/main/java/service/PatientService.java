package service;

import domain.Patient;
import repository.PatientRepository;

import javax.inject.Inject;

public class PatientService implements PatientServiceLocal {

    @Inject
    PatientRepository patientRepository;

    @Override
    public void addPatient(Patient patient){
        patientRepository.addPatient(patient);
    }
}
