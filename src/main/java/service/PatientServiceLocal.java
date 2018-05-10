package service;

import domain.Patient;
import domain.Roles;

import javax.ejb.Local;

@Local
public interface PatientServiceLocal {
    void addPatient(Patient patient, Roles roles);
    Patient getPatientByEmail(String email);
    boolean isEmailExist(String email);
    String getHexPassword(String password);
}
