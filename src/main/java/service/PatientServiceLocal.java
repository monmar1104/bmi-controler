package service;

import domain.Patient;

import javax.ejb.Local;

@Local
public interface PatientServiceLocal {
    void addPatient(Patient patient);
}
